---
layout: page
permalink: /teaching/
title: Teaching
class: teaching
---

{:.hidden}
# Teaching

{%- comment -%}
  We group by institution. Within each institution we sort reverse-chronologically.
  The data has course.date like "Fall 2026". We convert that to a sortable key:
    YYYY-MM-01 with term->month mapping:
      Spring -> 03
      Summer -> 06
      Fall   -> 09
      Winter -> 12
  If date is just "2026", we treat it as "2026-01-01".
{%- endcomment -%}

{% assign by_institution = site.data.teaching | group_by: "institution" %}
{% for inst in by_institution %}

### {{ inst.name }}

<table class="teaching">
  <tbody>
    {% assign courses = inst.items %}
    {% assign keys = "" | split: "" %}

    {%- for c in courses -%}
      {%- assign raw = c.date | default: "" | strip -%}

      {%- assign term = "" -%}
      {%- assign year = "" -%}

      {%- if raw == "" -%}
        {%- assign sortkey = "0000-00-00" -%}
      {%- else -%}
        {%- assign parts = raw | split: " " -%}
        {%- if parts.size == 1 -%}
          {%- assign year = parts[0] -%}
          {%- assign month = "01" -%}
        {%- else -%}
          {%- assign term = parts[0] -%}
          {%- assign year = parts | last -%}

          {%- case term -%}
            {%- when "Spring" -%}{%- assign month = "03" -%}
            {%- when "Summer" -%}{%- assign month = "06" -%}
            {%- when "Fall"   -%}{%- assign month = "09" -%}
            {%- when "Winter" -%}{%- assign month = "12" -%}
            {%- else -%}{%- assign month = "01" -%}
          {%- endcase -%}
        {%- endif -%}

        {%- assign sortkey = year | append: "-" | append: month | append: "-01" -%}
      {%- endif -%}

      {%- comment -%}
        Store "sortkey||index" so we can sort strings, then recover the course by index.
      {%- endcomment -%}
      {% assign key = sortkey | append: "||" | append: forloop.index0 %}
      {% assign keys = keys | push: key %}
    {%- endfor -%}

    {% assign keys = keys | sort | reverse %}

    {%- for k in keys -%}
      {% assign parts = k | split: "||" %}
      {% assign idx = parts[1] | plus: 0 %}
      {% assign course = courses[idx] %}
      {% include teaching.html course=course %}
    {%- endfor -%}

  </tbody>
</table>

{% endfor %}