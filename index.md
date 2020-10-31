---
layout: page
---

<p align="center">
  <img src="img/noswimzone_logo_20200925.png" width=500 height=500/>
</p>

Welcome to my website for the No Swim Zone, a podcast about male infertility.

<ul>
	{% for post in site.posts %}
		<li>
			<a href="{{ post.url }}">"Episode {{ post.slug }}: {{ post.title }}"</a>
		</li>
	{% endfor %}
</ul>

Read [about me](About.html) to find out why I started a podcast.
