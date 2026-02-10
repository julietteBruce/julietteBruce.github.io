---
layout: page
permalink: /teaching/
title: teacgubg
class: talks
---

{:.hidden}
# Talks

{% assign coursePlacees = site.data.teaching | group_by:"institution" %}
{% for place in coursePlacees %}
{:.place-title}
### {{ place.name }}
{% assign sorted_place = place.items | sort: 'date' | reverse %}
{% for course in sorted_place  %}
  {% include teaching.html course=couse %}
{% endfor %}
{% endfor %}
