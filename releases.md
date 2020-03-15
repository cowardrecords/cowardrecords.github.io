---
layout: default
title: Releases
permalink: /releases/
summary: Online store. records, publications & much more.
tags: lathe cuts, vinyl, limited editions, 
---
<br>

<div class="small-12 columns">
 <ul class="small-block-grid-1 medium-block-grid-2 large-block-grid-4">   
  {% for post in site.categories.release %}   
    {% if page.layout == 'amazon' %}
    <div class="row">
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
                <span class="amzbold">Department: </span>{{post.subtitle}}<br>
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
    <li>
      <a href="{{ post.url | prepend: site.baseurl }}">
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
    </li>
    {% endif %} 
  {% endfor %}
  </ul> 
</div>

