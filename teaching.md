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

{% assign years = place.items | map: "year" | uniq | sort | reverse %}
{% for year in years %}
  {% for term in term_order %}
    {% assign courses_for_term = place.items | where: "year", year | where: "term", term %}
    {% for course in courses_for_term %}
      {% include teaching.html course=course %}
    {% endfor %}
  {% endfor %}
{% endfor %}

{% endfor %}