---
layout: default
title: Breakfast Club
permalink: /breakfastclub/
thumbnail: breakfastclub.jpg
exclude: true
summary: Breakfast Club
bgimage: breakfastclub.jpg
news-link:
news-title: 
news-summary:

---

<div id="indexHeader" {% if page.bgimage contains 'http' %} style="background-image: url({{ page.bgimage }})" {% else %} style="background-image: url(/img/{{ page.bgimage }})" {% endif %}> 
   <div class="testata "> 
    <!-- <a href="{{page.news-link}}"><h1 class="randomcolor"><strong>{{page.news-title}}</strong></h1>
      <h6 class="randomcolor"> <strong>{{page.news-summary}}</strong></h6>
      <br>
      <button class="randomcolor randomcolorbrd">
        More info
      </button>
    </a> -->
  </div>
</div> 
  