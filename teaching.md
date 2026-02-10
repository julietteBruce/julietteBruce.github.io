---
layout: page
permalink: /teaching/
title: teaching
class: talks
---

{:.hidden}
# Teaching

{% assign term_order = "Summer,Spring,Winter,Fall" | split: "," %}
{% assign coursePlaces = site.data.teaching | group_by: "institution" %}

{% for place in coursePlaces %}
{:.place-title}
### {{ place.name }}

{% assign decorated = "" | split: "" %}
{% for course in place.items %}
  {% assign term_index = term_order | index_of: course.term %}
  {% assign sort_key = course.year | times: 10 | plus: term_index %}
  {% assign decorated = decorated | push: course | push: sort_key %}
{% endfor %}

{% assign sorted = place.items | sort: "year" | reverse %}

{% for course in sorted %}
  {% include teaching.html course=course %}
{% endfor %}

{% endfor %}
