---
layout: default
title: Releases
permalink: /releases/
summary: Online store. records, publications & much more.
tags: lathe cuts, vinyl, limited editions, 
---
<br>

<div class="grid-section">
   <div class="content grid-container">
  
   <div class="filters-container contain-to-grid sticky">

      <ul class="media-boxes-filter text-center" id="filter">
        <li><a class="selected" href="#" data-filter="*">All</a></li>
        <li><a href="#" data-filter=".Category5">5"</a></li>
        <li><a href="#" data-filter=".Category1">7"</a></li>
        <li><a href="#" data-filter=".Category6">12"</a></li>
        <li><a href="#" data-filter=".Category2">flexi</a></li>
        <li><a href="#" data-filter=".Category3">zine</a></li>
        <li><a href="#" data-filter=".Category4">tape</a></li>
        <li><a href="#" data-filter=".Category7">miscellaneous</a></li>
        <li><input type="text" id="search" class="media-boxes-search" placeholder="Search By Keyword" style="margin-bottom: -0.7rem; height: 2rem;"></li>
      </ul>

   </div>      

   <br>

  <div id="grid" style="padding: 20px">
  {% for post in site.categories.release %}      
 
    <div class="media-box 
     {% if post.categories contains '7"' %} 
       Category1 
     {% else %}
     {% endif %}
     
     {% if post.categories contains 'flexi' %} 
       Category2 
     {% else %}
     {% endif %}
     
     {% if post.categories contains 'zine' %} 
       Category3 
     {% else %}
     {% endif %}

     {% if post.categories contains 'tape' %} 
       Category4
     {% else %}
     {% endif %}

     {% if post.categories contains '5"' %} 
       Category5
     {% else %}
     {% endif %}

     {% if post.categories contains '12"' %} 
       Category6
     {% else %}
     {% endif %}

     {% if post.categories contains 'miscellaneous' %} 
       Category7
     {% else %}
     {% endif %}">
        
      <a href="{{ post.url | prepend: site.baseurl }}">
       <!-- <hr> -->
        <div class="maintitle" >
	        <h6>{{ post.title }}</h6>
	       {% if post.artist %}<p>{{post.artist}}</p> {% else %} <p><br></p> {% endif%}
        </div>
      </a>

      <a href="{{ post.url | prepend: site.baseurl }}">

        {% if post.cover contains 'http' %}
            <img src="{{ post.cover }}" alt="{{ post.title }}"/>
          {% else %}
            <img src="/img/{{ post.cover }}" alt="{{ post.title }}"/>
        {% endif %}
      
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
