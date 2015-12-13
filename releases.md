---
layout: default
title: Releases
permalink: /releases/
---

<div class="fullWidth">
	<br>
  	<h4 class="text-center">{{ page.title }}</h4>
  	<hr>
	<div class="small-12 columns">
		<div class="small-12 columns">
	    	<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
		      {% for post in site.posts %}
				{% if post.categories contains 'zine' or post.categories contains 'flexy' %}
			        <li>
			          <a href="{{ post.url | prepend: site.baseurl }}">
				          <h4>{{ post.title }}</h4>
				          <p>{{ post.artist }}</p>
				          <img class="th" src="/img/{{ post.image }}" alt="{{ post.name }}"/>
			          </a>
			          <br>
			          {% include paypall-button-shop.html %}
			        </li> 
		   		{% endif %}   
		      {% endfor %}
		    </ul>
		</div>
    </div>
</div>