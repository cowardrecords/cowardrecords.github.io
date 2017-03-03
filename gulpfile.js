var gulp = require('gulp');
var shell = require('gulp-shell');
var browserSync = require('browser-sync').create();
var compass = require('gulp-compass');

// Task for building blog when something changed:
gulp.task('build', shell.task(['bundle exec jekyll build --watch']));
// Or if you don't use bundle:
// gulp.task('build', shell.task(['jekyll build --watch']));

// Task for serving blog with Browsersync
gulp.task('serve', function () {
    browserSync.init({server: {baseDir: '_site/'}});
    // Reloads page when some of the already built files changed:
    gulp.watch('_site/**/*.*').on('change', browserSync.reload);
});


gulp.task('styles', function() {
  return gulp.src(['src/scss/**/*.scss'])
    .pipe(compass({
      css: 'css',
      sass: '_scss',
      task: 'watch',
    }))
    .pipe(gulp.dest('css'))
});

gulp.task('default', ['styles','build', 'serve']);