Mandat de délégation de l'exploitation du site Internet
=======================================================

{% if client.managers|length == 1 %}
Je soussigné {{ client.manager.label|safe }}, autorise
{% else %}
Nous soussignons,{% for manager in client.managers %} {{ '%s, ' % manager.label|safe }}{% endfor %}autorisons
{% endif %}
par la présente le pharmacien adjoint :

|

à exploiter en {{'mon' if client.managers|length == 1 else 'notre'}} nom le site Internet de la {{ client.social|safe }}
accessible sur Internet à l'adresse :

 | {{ client.ars_domains }}

Fait le

| *Signature du pharmacien adjoint*
| *(1) Bon pour acceptation du mandat d'exploitation*

|
|
|
|
|
|

| *{{'Signature du titulaire' if client.managers|length == 1 else 'Signature des titulaires'}}*
| *(2) Bon pour accord*

|
|
|
|
|
|

| *(1) et (2) mentions obligatoires à écrire par chacun des signataires*
