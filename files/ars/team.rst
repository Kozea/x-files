Liste du personnel
==================

{% for member in client.persons %}
{{ member.label|safe }}
  {{ member.title|safe }}{% if member.guild %} {{ member.guild }} {% endif %}
{% endfor %}
