---
layout: page
permalink: /teaching/
title: Teaching
class: talks
---

{:.hidden}
# Talks

{% assign courseList = site.data.teaching | group_by:"institution" %}
{% for group in courseList %}
{:.talk-title}
### {{ group.name }}
{% assign sorted_classes = group.items | sort: 'date' | reverse %}
{% for item in sorted_classes %}
  {% include class.html class=item %}
{% endfor %}
{% endfor %}
