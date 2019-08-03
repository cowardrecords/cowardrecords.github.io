---
layout: default
title: Distro
permalink: /distro/
summary: Distro for records, zine and other stuff from international partners.
tags:
---

<br>

<div class="grid-section">

   <div class="content grid-container">
  
   <div class="filters-container contain-to-grid sticky">

      <ul class="media-boxes-filter text-center filter">
        <li><a class="selected" href="#" data-filter="*">All</a></li>
        <li><a href="#" data-filter=".Category1">zine</a></li>
        <li><a href="#" data-filter=".Category2">flexi</a></li>
        <li><a href="#" data-filter=".Category3">miscellaneous</a></li>
        <li><input type="text" id="search" class="media-boxes-search" placeholder="Search By Keyword" style="margin-bottom: -0.7rem; height: 2rem;"></li>  
      </ul>

   </div>      

   <br>

<div id="grid" style="padding: 20px">
  {% for post in site.categories.distro %}      
    <div class="media-box 
     {% if post.categories contains 'zine' %} 
       Category1
     {% else %}
     {% endif %}
     {% if post.categories contains 'flexi' %} 
       Category2
     {% else %}
     {% endif %}
     {% if post.categories contains 'miscellaneous' %} 
       Category3
     {% else %}
     
     {% endif %}">
        
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

    </div>  
  {% endfor %}
  </div>

  </div>
</div>
