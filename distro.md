---
layout: default
title: Distro
permalink: /distro/
summary: Distro for records, zine and other stuff from international partners.
tags:
---

<br>

<div class="small-12 columns">
 <ul class="small-block-grid-1 medium-block-grid-2 large-block-grid-4">   
  {% for post in site.categories.distro %}  
    <li>            
      <a href="{{ post.url | prepend: site.baseurl }}">
      <!-- <hr> -->
      	<div class="maintitle">
	        <h6>{{ post.name }}</h6>
	        <!-- <p>{{ post.sku }}</p> -->
        </div>
      </a>
      <a href="{{ post.url | prepend: site.baseurl }}">
        <div class="imageblockDistro">
        {% if post.image contains 'http' %}
            <img src="{{ post.image }}" alt="{{ post.tile }}"/>
          {% else %}
            <img src="/img/distro/{{ post.image }}" alt="{{ post.tile }}"/>
        {% endif %}
        </div>
       {% if post.soldout == true %}
        <p class="text-center soldout">sold out</p>
        {% else %}
        <p class="text-center">{{ post.price }} EU</p>   
       {% endif %}
      </a>
    </li>
  {% endfor %}
  </ul> 
</div>
