---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

<h1>Justifications</h1>

Here you can find a list of all available justifications as can be produced by
Thoth's recommendation engine:

<ul>
  {% for justification in site.justifications %}
      <h3><a href="{{ justification.url }}">{{ justification.title }}</a></h3>
  {% endfor %}
</ul>
