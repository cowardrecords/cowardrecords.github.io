---
layout: default
title: Blog
permalink: /blog/
---

<div class="fullWidth">
  <br>
  <h4 class="text-center">{{ page.title}}</h4>
  <hr>
	<div class="small-12 columns">
		<div class="small-12 columns">
		    <ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
		      {% for post in site.posts %}
				{% if post.categories contains 'blog' %}
				<li>
			      <a href="{{ post.url | prepend: site.baseurl }}"><h4>{{ post.title }}</h4></a>
			      <i>{{ post.date | date: "%b %-d, %Y" }}</i>
			      <img src="/img/{{ post.image }}" alt="{{ post.name }}"/>
			      <br>
			      <p class="text-justify">{{ post.content | strip_html | truncatewords:20 }} <a id="underline" href="{{ post.url | prepend: site.baseurl }}">more >></a></p>
			    </li> 
		   		{% endif %}   
		      {% endfor %}
		    </ul>
		</div>
	</div>
</div>