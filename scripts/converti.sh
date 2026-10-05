#!/bin/sh
# Converte i file di originali/ in versioni leggere per il sito dentro media/.
#
#   video (mp4, mov, m4v, 3gp)       -> mp4 H.264 + audio AAC, lato lungo max 1920px, pronto per lo streaming
#   immagini (jpg, png, webp, heic)  -> webp, lato lungo max 2560px, raddrizzate
#                                       secondo i dati EXIF del telefono (trasparenza mantenuta)
#   gif, avif                        -> copiati così come sono
#
# Converte solo i file nuovi o modificati. Se un originale viene cancellato,
# sparisce anche la sua versione in media/.
#
# Sicurezza: lo script tiene in media/.generati l'elenco dei file che ha creato
# e cancella SOLO quelli. Qualsiasi altro file dentro media/ non viene mai toccato.
#
# Doppioni: se più originali producono lo stesso file (es. IMG_1.mov e IMG_1.mp4)
# viene usato il più grande; gli altri sono elencati in media/.doppioni.

SRC=originali
DST=media
VIDEO_MAX=1920
IMAGE_MAX=2560

MANIFEST="$DST/.generati"
NEW_MANIFEST="$DST/.generati.new"
TAKEN="$DST/.presi.tmp"
DUPES="$DST/.doppioni"
NEW_DUPES="$DST/.doppioni.new"

mkdir -p "$SRC" "$DST"
touch "$MANIFEST"
: > "$NEW_MANIFEST"
: > "$TAKEN"
: > "$NEW_DUPES"

TAB=$(printf '\t')

lower() { printf '%s' "$1" | tr 'A-Z' 'a-z'; }

# nome del file in media/ per un originale (vuoto se il tipo non è supportato)
target_for() {
  base=$(basename "$1")
  name=${base%.*}
  ext=$(lower "${base##*.}")
  case "$ext" in
    mp4|mov|m4v|3gp)             echo "$DST/$name.mp4" ;;
    jpg|jpeg|png|webp|heic|heif) echo "$DST/$name.webp" ;;
    gif|avif)                    echo "$DST/$name.$ext" ;;
  esac
}

# riga del manifest per un file di media/ (vuota se non l'ha creato lo script)
manifest_line() {
  awk -F'\t' -v o="$1" '$1 == o { print; exit }' "$MANIFEST"
}

convert() {
  in=$1; out=$2
  ext=$(lower "${in##*.}")
  tmp="$DST/.converti-$$.${out##*.}"
  case "$ext" in
    mp4|mov|m4v|3gp)
      ffmpeg -nostdin -loglevel error -y -i "$in" \
        -vf "scale='min($VIDEO_MAX,iw)':'min($VIDEO_MAX,ih)':force_original_aspect_ratio=decrease:force_divisible_by=2" \
        -c:v libx264 -preset medium -crf 26 -pix_fmt yuv420p \
        -c:a aac -b:a 96k \
        -movflags +faststart \
        "$tmp" ;;
    jpg|jpeg|png|webp|heic|heif)
      magick "$in[0]" -auto-orient -strip \
        -resize "${IMAGE_MAX}x${IMAGE_MAX}>" \
        -quality 75 -define webp:method=6 \
        "$tmp" ;;
    *)
      cp "$in" "$tmp" ;;
  esac && mv "$tmp" "$out"
  status=$?
  rm -f "$tmp"
  return $status
}

# 1. converte gli originali nuovi o modificati (dal più grande al più piccolo,
#    così tra due doppioni vince quello di qualità migliore)
find "$SRC" -type f ! -name '.*' -exec stat -c '%s %n' {} + | sort -rn | cut -d' ' -f2- |
while IFS= read -r in; do
  out=$(target_for "$in")
  [ -z "$out" ] && continue

  if grep -Fxq "$out" "$TAKEN"; then
    winner=$(awk -F'\t' -v o="$out" '$1 == o { print $2; exit }' "$NEW_MANIFEST")
    printf '%s\t(uso %s)\n' "$in" "${winner:-un altro file}" >> "$NEW_DUPES"
    continue
  fi
  echo "$out" >> "$TAKEN"

  mtime=$(stat -c %Y "$in")
  line="$out$TAB$in$TAB$mtime"
  old=$(manifest_line "$out")

  if [ -z "$old" ] && [ -e "$out" ]; then
    echo "ATTENZIONE: $out esiste già e non l'ho creato io, non lo sovrascrivo ($in)"
    continue
  fi

  if [ "$old" = "$line" ] && [ -f "$out" ]; then
    echo "$line" >> "$NEW_MANIFEST"
  else
    echo "converto: $in"
    if convert "$in" "$out"; then
      echo "$line" >> "$NEW_MANIFEST"
    else
      echo "ERRORE con: $in"
      [ -n "$old" ] && echo "$old" >> "$NEW_MANIFEST"
    fi
  fi
done

# 2. toglie da media/ solo i file creati dallo script il cui originale non c'è più
while IFS="$TAB" read -r out in mtime; do
  [ -z "$out" ] && continue
  if ! awk -F'\t' -v o="$out" '$1 == o { found = 1 } END { exit !found }' "$NEW_MANIFEST"; then
    echo "rimuovo: $out (originale cancellato: $in)"
    rm -f "$out"
  fi
done < "$MANIFEST"

mv "$NEW_MANIFEST" "$MANIFEST"
rm -f "$TAKEN"

# elenco dei doppioni, stampato solo quando cambia
if ! cmp -s "$NEW_DUPES" "$DUPES"; then
  if [ -s "$NEW_DUPES" ]; then
    echo "doppioni ignorati (elenco in $DUPES):"
    sed 's/^/  /' "$NEW_DUPES"
  fi
  mv "$NEW_DUPES" "$DUPES"
else
  rm -f "$NEW_DUPES"
fi
