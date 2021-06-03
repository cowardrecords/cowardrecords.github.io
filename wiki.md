---
layout: default
title: Wiki
permalink: /wiki/
summary: Coward Records projects traking
---

<div class="page">
	<div class="small-12 large-2 columns">
		<h2>Glossary</h2>
		<ul class="no-bullet">
		<hr>
			{% for post in site.categories.wiki reversed %}  
				{% if post.hidden != true %} 
				<li> 
					<a href="{{ post.url }}"><strong>{{ post.title }}</strong></a> <br>
					<hr>
				</li>
				{% endif %}
			{% endfor %}
			<!-- {% for post in site.categories.cowardrecords %}  
				<small> 
					<a href="{{ post.url }}"><strong>{{ post.title }}</strong></a> <br>
				</small>
			{% endfor %} -->
		</ul>
	</div>
	
<div class="large-10 small-12 columns wikihome">
    <span>last update:</span>
    <div>       	
	<pre>
 ---------------------------------------
|               ___()___                |
|          _.-'' ,-'`-. ``-._           |
|       ,-'    ,'      `.    `-.        |
|     ,'     ,'          `.     `.      |
|    /      /              \      \     |
|   /_     /                \     _\    |
|     ``-./_..---'''|``---.._\,-''      |
|                   |                   |
|                   |                   |
|                   |                   |
|                   |                   |
|                   |                   |
|                   |                   |
|                   |                   |
|                ,  |                   |
|                `..'                   |
|   _________ _      _____   ___  ___   |
|  / ___/ __ \ | /| / / _ | / _ \/ _ \  |
| / /__/ /_/ / |/ |/ / __ |/ , _/ // /  |
| \___/\____/|__/|__/_/ |_/_/|_/____/   |
|    ___  _____________  ___  ___  ____ |
|   / _ \/ __/ ___/ __ \/ _ \/ _ \/ __/ |
|  / , _/ _// /__/ /_/ / , _/ // /\ \   |
| /_/|_/___/\___/\____/_/|_/____/___/   |
|                                       |
 ---------------------------------------
	</pre> 
	</div>
</div>
