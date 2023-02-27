---
layout: cv
permalink: /organizing/
title: Organizing
class: talks
---

<section class="container">
<h2>Conferences</h2>

{% for conference in site.data.conferences %}
<article>
  <div class="date-container">
    <span class="date">{{ conference.years | replace: "-", "–" }}</span>
    <strong class="fill">{{ conference.name }}</strong>
    <span class="right">{{ conference.sponsor }}</span>
  </div>
  <p class="muted">
    {{ conference.description }}
  </p>
</article>
{% endfor %}

<h2>Seminars & Special Sessions</h2>

{% for conference in site.data.seminars %}
<article>
  <div class="date-container">
    <span class="date">{{ conference.years | replace: "-", "–" }}</span>
    <strong class="fill">{{ conference.name }}</strong>
    <span class="right">{{ conference.sponsor }}</span>
  </div>
  <p class="muted">
    {{ conference.description }}
  </p>
</article>
{% endfor %}

<h2>Outreach</h2>

{% for conference in site.data.outreach %}
<article>
  <div class="date-container">
    <span class="date">{{ conference.years | replace: "-", "–" }}</span>
    <strong class="fill">{{ conference.name }}</strong>
    <span class="right">{{ conference.sponsor }}</span>
  </div>
  <p class="muted">
    {{ conference.description }}
  </p>
</article>
{% endfor %}
</section>