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
		<div class="small-12 medium-8 large-10 columns">
		    <ul class="small-block-grid-1 medium-block-grid-3 large-block-grid-6">
		      {% for post in site.posts %}
				{% if post.categories contains 'blog' %}
				<li class="recent-post">
			      <a href="{{ post.url | prepend: site.baseurl }}">
			      <h4>{{ post.title }}</h4>
			      <p><i>{{ post.date | date: "%b %-d, %Y" }}</i></p>
			      {% if post.image contains 'http' %}
		          	  <img class="th" src="{{ post.image }}" alt="{{ post.name }}"/>
		          {% else %}
					  <img class="th" src="/img/{{ post.image }}" alt="{{ post.name }}"/>
		          {% endif %}
			      <br>
			      <p class="text-justify">{{ post.content | strip_html | truncatewords:20 }} <strong>more</strong> </p>
			  	  </a>
			    </li> 
		   		{% endif %}   
		      {% endfor %}
		    </ul>
		</div>

		<div class="small-12 medium-4 large-2 columns hide-for-small-only">
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
		

			

        </div>
	</div>
</div>
