---
layout: page
permalink: /teaching/
title: Teaching
class: talks
---

{:.hidden}
# Teaching

{% assign institutions = site.data.teaching | group_by:"location" %}
{% for place in institutions %}
{:.place-location}
### {{ place.location }}
{% assign sorted_talks = title.items | sort: 'date' | reverse %}
{% for talk in sorted_talks  %}
  {% include talk.html talk=talk %}
{% endfor %}
{% endfor %}
