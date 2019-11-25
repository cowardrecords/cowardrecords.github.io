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
  {% if page.layout == 'amazon' %}
  {% else %}
     <div class="filters-container contain-to-grid sticky">
        <ul class="media-boxes-filter text-center filter">
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
   {% endif %}     

   <br>

  <div id="grid">
  {% for post in site.categories.release %}      
    {% if page.layout == 'amazon' %}
      <div  
       class="media-box
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
       {% endif %}"
       style="min-width: 100%;">
          
        
          <div class="small-12 large-3 columns">
          <a href="{{ post.url | prepend: site.baseurl }}">

            {% if post.cover contains 'http' %}
                <img src="{{ post.cover }}" alt="{{ post.title }}"/>
              {% else %}
                <img src="/img/{{ post.cover }}" alt="{{ post.title }}"/>
            {% endif %}
          </a>
          </div>
          <div class="small-12 large-4 columns">
            <a href="{{ post.url | prepend: site.baseurl }}">
              <div class="maintitle" >
              {% if post.title %}<h6>{{post.title}}</h6> {% else %} <h6></h6> {% endif%}
                <p class="grey">{% if post.artist %}by {{ post.artist }} {% endif%} </p>
     
                 <div class="amzstar">
                  <img src="/img/amzstar.png" alt="{{ post.title }}"/>
                 </div>
          
                <p>
                  <span class="amzbold randomcolor">Department: </span>{{post.subtitle}}<br>

                  {% if post.soldout == true %}
                   sold out
                  {% else %}
                    {{ post.price }} EU   
                  {% endif %}
                  <br>
                  <small>{{ post.date | date: '%B %d, %Y' }}</small>
                </p>
               
              </div>
            </a>
          </div>
          <div class="small-12 columns">
            <br>
            <hr style="height:2px; color:#d6d6d6; background-color:#d6d6d6">
          </div>
      </div> 
    {% else %}
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
  	        <h6>{{ post.name }}</h6>
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
    {% endif %} 
  {% endfor %}
  </div>

  </div>
</div>
