---
layout: page
permalink: /teaching/
title: Teaching
class: talks
---

{: .hidden}
# Teaching

{% assign institutions = site.data.teaching | group_by: "location" %}
{% for place in institutions %}
{: .place-location}
### {{ place.name }}

{% assign sorted_courses = place.items | sort: "date" | reverse %}
{% for class in sorted_sourses %}
  {% include teaching.html class=talk %}
{% endfor %}

{% endfor %}