Formulaire de demande d'autorisation de création d'un site Internet de commerce électronique de médicaments
===========================================================================================================

Nom de la pharmacie
 {{ client.social|safe }}
Numéro de la licence
 {{ client.license_number or '|' }}
{% if client.managers|length == 1 %}
Nom du titulaire
 {{ client.manager.label|safe }}
{% else %}
Nom des titulaires
{% for manager in client.managers %}
 - {{ manager.label|safe }}
{% endfor %}
{% endif %}
**Adresse**

{% for line in client.address.split('\n') -%}
 | {{ line|safe }}
{% endfor -%}
 | {{ client.zip }} {{ client.city|safe }}

Téléphone
 {{ client.phone }}
{% if client.fax %}
Télécopie
 {{ client.fax }}
{% endif %}
Email
 {{ client.mail }}
Officine issue d'un regroupement
 | ☐ oui     ☐ non
Site Internet déjà en fonctionnement
 | ☐ oui     ☐ non
Si oui, date d'ouverture du site
 |
Si oui, date de dernière mise à jour
 |
Médicaments déjà en vente sur ce site Internet
 | ☐ oui     ☒ non
Date de la demande
 |

*{{ client.managers | join(', ', 'label')|safe }}*

|
|
|
|

*Tampon de l'officine*


.. image:: {{ url_for('static', filename='images/ars/asip.jpg') }}


