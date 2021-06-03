---
layout: default
title: Releases
permalink: /releases/
summary: Online store. records, publications & much more.
tags: lathe cuts, vinyl, limited editions, 
bgimage: homepage.jpg
sentence1: hello!
sentence2: welcome to our official web store
sentence3: this is all I wanted to say 
sentence4: with this nice typewriter effect
sentence5: now I will start over again...
---

  <div id="indexHeader" {% if page.bgimage contains 'http' %} style="background-image: url({{ page.bgimage }})" {% else %} style="background-image: url(/img/{{ page.bgimage }})" {% endif %}> 
    <h1>
      <a class="typewrite" data-period="2000" data-type='[ "{{ page.sentence1 }}", "{{page.sentence2}}", "{{page.sentence3}}", "{{page.sentence4}}", "{{page.sentence5}}" ]'>
        <span class="wrap"></span>
      </a>
    </h1>
  </div> 
  <div class="page">
    <div class="small-12 columns">
      <h2>{{page.title}}</h2>
        <div id="homepage">
        {% for post in site.categories.releases %}
          {% if post.homepage %}
          {% unless post.categories contains 'molkky' %}
          <div class="container">
              <ul>  
                {% if post.cover contains 'http' %}
                <li><img class="indeximg" src="{{ post.image }}" alt="{{ post.slug }}"/></li>
                  {% else %}
                <li><img class="indeximg" src="/img/{{ post.image }}" alt="{{ post.slug }}"/></li>
                {% endif %}
              </ul>
              <div class="textblock">
                <a href="{{ post.url | prepend: site.baseurl }}"><h3>{{ post.slug | strip_html | truncatewords: 20  }}</h3></a>
                {% if post.artist %}<a href="{{ post.url | prepend: site.baseurl }}"><h4>{{post.artist}}</h4></a>{% endif%}
                {% if post.sku %}<a href="{{ post.url | prepend: site.baseurl }}"><h6>{{post.sku}}</h6> </a>{% endif%}
              </div> 
           <!-- <div class="rel-description">
              {% if post.content %}<p>{{post.content | strip_html | truncatewords: 40, "  -"}}</p> {% endif%}
            </div>-->
          </div>
          <hr>
          {% endunless %}
          {% endif %}
        {% endfor %}
        </div>
    </div>
    <div class="molkky-list">
      <h2 class="anchorlink" id="molkky">Mölkky League Official</h2>
      <hr>
      <ul>  
        {% for post in site.categories.molkky %}  
          <li>
            <a href="{{ post.url | prepend: site.baseurl }}">
                <h3 class="text-center">{{ post.slug }}</h3>
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
        {% endfor %}
      </ul> 
    </div>
    <div class="distro">
      {% for category in site.categories %} 
          {% capture category_name %}{{ category | first }}{% endcapture %}
          {% assign t = category | first %}
          {% assign posts = category | last %}
          {% if category_name == 'distro' %}
          <hr>
          <h2  class="anchorlink">{{ category_name }} <small> [ {{ posts | size }} ]</small></h2>  
          <hr>
          <ul>
            {% for post in site.categories[category_name] %}
            <li> + <a href="{{ site.baseurl }}{{ post.url }}">{{post.title}}</a>  </li>
            {% endfor %}
          </ul> 
          {% endif %}
      {% endfor %}
    </div>
</div>
