---
layout: breackfastclub
title: breackfast club
permalink: /breackfastclub/
exclude: true
---
<div class="content_panel">
  <img src="/img/logo.png" alt="breakfast club">
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta quam praesentium perferendis eos totam eius iusto deleniti officia facere amet.</p>
</div>

<!-- <div class="small-12 columns absolutepanel"   
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