---
layout: page
permalink: /projects/
title: Projects
class: projects
---

{:.hidden}
# Projects

{:.lead}
Here are some projects I have worked on for as part of research.

<div class="grid">
  {% for project in site.data.projects %}
    {% include project.html project=project %}
  {% endfor %}
</div>
