---
layout: page
title: "Home"
class: home
---

# Hi, I'm Juliette Bruce

<div class="columns" markdown="1">

<div class="intro" markdown="1">
I am a postdoctoral research associate in the Department of Mathematics at Brown University. My research interests lie in algebraic geometry, commutative algebra, and arithmetic geometry. In particular, I am interested in using homological and combinatorial methods to study the geometry of zero loci of systems of polynomials (i.e. algebraic varieties). I am also interested in studying the arithmetic properties of varieties over finite fields. I am passionate about promoting inclusion, diversity, and justice in mathematics. 

In 2020, I  recieved my Ph.D. in mathematics from the University of Wisconsin, Madison, where my advisor was [Daniel Erman](https://people.math.wisc.edu/~derman/). For the 2020-2021 academic year I was also a postdoctoral fellow at MSRI. During 2020-2022 I was an NSF Postdoctoral Resarch Fellow in the Department of Mathematics at the University of California, Berkeley. 

</div>

<div class="me" markdown="1">
<picture>
  <source srcset='/images/julietteBruce.jpeg' type='image/jpeg' />
  <img
    src='/images/julietteBruce.jpeg'
    alt='Juliette Bruce'>
</picture>

{:.no-list}
* <a href="mailto:{{ site.email }}">{{ site.email }}</a>
* 310 Kassar House
* she/her/hers
<!-- * <a href="{{ "/publications/" | relative_url }}" class="button">
  <i class="fas fa-chevron-circle-right"></i>
  CV (pdf)
</a> -->
</div>

</div>

## Featured <a href="{{ "/publications/" | relative_url }}">Publications</a>

<div class="featured-publications">
  {% assign sorted_publications = site.publications | sort: 'year' | reverse %}
  {% for pub in sorted_publications %}
    {% if pub.highlight %}
      <a href="{{ pub.pdf }}" class="publication">
        <strong>{{ pub.title }}</strong>
        <span class="authors">{% for author in pub.authors %}{{ author }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>.
        <i>{% if pub.venue %}{{ pub.venue }}, {% endif %}{{ pub.year }}</i>.
        {% for award in pub.awards %}<br/><span class="award"><i class="fas fa-{% if award == "Best Paper Award" %}trophy{% else %}award{% endif %}" aria-hidden="true"></i> {{ award }}</span>{% endfor %}
      </a>
    {% endif %}
  {% endfor %}
</div>

<a href="{{ "/publications/" | relative_url }}" class="button">
  <i class="fas fa-chevron-circle-right"></i>
  Show All Publications
</a>

<div class="news-travel" markdown="1">

<div class="news" markdown="1">
## Latest News

<ul>
{% for news in site.data.news limit:10 %}
  {% include news.html news=news %}
{% endfor %}
</ul>

</div>

<div class="travel" markdown="1">
## Latest Travel

<table>
<tbody>
{% assign future_travel = site.data.travel | where_exp:'item','item.start == null' %}
{% for travel in future_travel %}
  {% include travel.html travel=travel %}
{% endfor %}
{% assign sorted_travel = site.data.travel | where_exp:'item','item.start' | sort: 'start' | reverse %}
{% for travel in sorted_travel limit:10 %}
  {% include travel.html travel=travel %}
{% endfor %}
</tbody>
</table>

</div>

</div>
