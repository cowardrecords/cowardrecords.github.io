---
layout: default
title: Releases
permalink: /releases/
---
<br>

<div class="grid-section">
   <div class="content grid-container">
  
   <div class="filters-container contain-to-grid sticky">

      <ul class="media-boxes-filter text-center" id="filter">
        <li><a class="selected" href="#" data-filter="*">All</a></li>
        <li><a href="#" data-filter=".Category1">7"</a></li>
        <li><a href="#" data-filter=".Category2">flexi</a></li>
        <li><a href="#" data-filter=".Category3">zine</a></li>
        <li><a href="#" data-filter=".Category4">tape</a></li>
        <li><input type="text" id="search" class="media-boxes-search" placeholder="Search By Keyword" style="margin-bottom: -0.7rem; height: 2rem;"></li>
      </ul>

   </div>      

   <br>

  <div id="grid">
  {% for post in site.posts %}      
   {%  if post.subcategory != "distro" and  post.category != "blog" %}   
   {% unless post.category contains "distro"  %}
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
     {% endif %}>

     {% if post.categories contains 'tape' %} 
       Category4
     {% else %}
     {% endif %}">
        
      <a href="{{ post.url | prepend: site.baseurl }}">
       <hr>
        <div class="maintitle">
	        <h6>{{ post.title }}</h6>
	        <p>{{ post.artist }}</p>
        </div>
      </a>

      <a href="{{ post.url | prepend: site.baseurl }}">

        {% if post.image contains 'http' %}
            <img src="{{ post.image }}" alt="{{ post.name }}"/>
          {% else %}
            <img src="/img/{{ post.image }}" alt="{{ post.name }}"/>
        {% endif %}
      
       {% if post.soldout == true %}
        <p class="text-center soldout">sold out</p>
        {% else %}
        <p class="text-center">{{ post.price }} EU</p>   
       {% endif %}
      </a>

    </div>

   {% endunless %}
   {% endif %}
  {% endfor %}
  </div>

  </div>
</div>
