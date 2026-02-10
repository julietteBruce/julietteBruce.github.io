---
layout: page
permalink: /teaching/
title: Teaching
class: talks
---

{:.hidden}
# Teaching

{% assign talktitles = site.data.teaching | group_by:"title" %}
{% for title in talktitles %}
{:.talk-title}
### {{ title.name }}
{% assign sorted_talks = title.items | sort: 'date' | reverse %}
{% for talk in sorted_talks  %}
  {% include talk.html talk=talk %}
{% endfor %}
{% endfor %}
