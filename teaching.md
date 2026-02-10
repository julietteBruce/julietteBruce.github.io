---
layout: page
permalink: /teaching/
title: Teaching
class: talks
---

{:.hidden}
# Talks

{% assign courseList = site.data.teaching | group_by:"institution" %}
{% for class in courseList %}
{:.talk-title}
### {{ class.name }}
{% assign sorted_classes = title.items | sort: 'date' | reverse %}
{% for class in sorted_classes  %}
  {% include class.html class=class %}
{% endfor %}
{% endfor %}
