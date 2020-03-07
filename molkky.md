---
layout: default
title: Mölkky
permalink: /mölkky/
summary: Coward Records Mölkky League!

---

<div id="molkky" class="small-12 columns">
	<div class="medium-12 small-12 large-centered">	
		<ul class="small-block-grid-1 medium-block-grid-3 large-block-grid-4">
			{% for post in site.categories.molkky %}
			<li>
				<a href="{{ post.url | prepend: site.baseurl }}">
				<h4>{{ post.name }}</h4>   
				{% if post.image contains 'http' %}
					<img src="{{ post.image }}" alt="{{ post.name }}"/>
					{% else %}
						<img src="/img/{{ post.image }}" alt="{{ post.name }}"/>
				{% endif %}
				{% if post.soldout == true %}
					<h6 class="text-center soldout">sold out</h6>
					{% else %}
					<h6 class="text-center">{{ post.price }} EU</h6>   
				{% endif %}      	
				</a>
			</li> 
			{% endfor %}
		</ul>
	</div>
</div>


