---
layout: breakfastclub
title: breackfast club
permalink: /breakfastclub/
exclude: true
---

<div class="row">
  <div class="small-10 medium-8 large-7 small-centered columns">
  <div class="header panel">
        <div class="sign">
          <img src="/img/logo_breakfastclub.png" alt="breakfast club">
        </div>
        <p><span>DOMENICA 18 OTTOBRE</span> <br>
        come arrivare con autobus 31 e 131 La fermata a cui scendere si chiama "via Leoncavallo". Pochi metri prima della fermata, sul lato opposto della strada, c'e una via: percorrila fino in fondo e sulla destra troverai il centro sociale <br>

        <a href="#">dalla stazione dei treni e delle corriere <br></a>
        
        dal casello autostrada A14 - uscita Pesaro <br>
      
        </p>

        <div id="map_canvas" class="hide-for-small-only">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2874.9545113049876!2d12.893777215100544!3d43.89820884457147!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132d1eab61be55e1%3A0xb19d9dd11c94ad98!2sCsa+Oltrefrontiera!5e0!3m2!1sit!2sit!4v1479120462852" width="100%" height="auto" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <div class="show-for-small-only">
          <a href="https://www.google.it/maps/place/Csa+Oltrefrontiera/@43.8982088,12.8937772,17z/data=!4m13!1m7!3m6!1s0x132d1eab673e3937:0x82b5d29dfae0c2e6!2sVia+Ruggero+Leoncavallo,+15,+61122+Pesaro+PU!3b1!8m2!3d43.898205!4d12.8959659!3m4!1s0x132d1eab61be55e1:0xb19d9dd11c94ad98!8m2!3d43.8985022!4d12.8958124" target="_blank"> <p class="text-center">come arrivare</p></a>
        </div>
  </div>
 </div>

<!-- <div class="small-2 push columns absolutepanel">
 <h6>Archive</h6>
    <ul class="no-bullet">
      {% for post in site.posts %}
       {% if post.categories contains 'blog' %}
          {% unless post.next %}

            {{ post.date | date: '%Y %b' }}
          {% else %}
            {% capture year %}{{ post.date | date: '%Y %b' }}{% endcapture %}
            {% capture nyear %}{{ post.next.date | date: '%Y %b' }}{% endcapture %}
            {% if year != nyear %}
              {{ post.date | date: '%Y %b' }}
            {% endif %}
          {% endunless %}

          <li><a href="{{ post.url }}">{{ post.title }}</a></li>
       {% endif %}
      {% endfor %}
    </ul>
</div> -->

</div>