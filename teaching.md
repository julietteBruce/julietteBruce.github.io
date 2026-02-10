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
{% for class in sorted_talks  %}
  {% include teaching.html talk=class %}
{% endfor %}
{% endfor %}
