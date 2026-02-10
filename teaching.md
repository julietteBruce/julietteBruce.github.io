---
layout: page
permalink: /teaching/
title: Teaching
class: talks
---

{:.hidden}
# Teaching

{% assign courseList = site.data.teaching | group_by:"institution" %}
{% for course in courseList %}
{:.talk-title}
### {{ group.name }}
{% assign sorted_classes = title.items | sort: 'date' | reverse %}
{% for class in sorted_classes %}
  {% include class.html class=item %}
{% endfor %}
{% endfor %}
