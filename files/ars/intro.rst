Demande d'autorisation de création d'un site Internet de commerce électronique de médicaments
=============================================================================================

{% set many = client.managers|length > 1 %}

Monsieur le Directeur,

Dans le cadre de
{{ 'notre' if many else 'mon' }}
activité officinale et suite à la publication de l'arrêté du 28 novembre 2016,
{{ 'nous souhaitons proposer à nos' if many else 'je souhaite proposer à mes' }}
patients un service de commerce électronique de médicaments.

{{ 'Nous vous prions' if many else 'Je vous prie' }}
donc de bien vouloir trouver ci-joints tous les éléments
constitutifs du dossier de demande d'autorisation.

Dans l'attente,
{{ 'nous restons' if many else 'je reste' }}
naturellement à votre disposition pour tout complément d'information.

|
|
{% if many %}
| *{{ client.managers|join(', ', 'label')|safe }}*
| *Pharmaciens titulaires*
{% else %}
| *{{ client.manager.label|safe }}*
| *Pharmacien titulaire*
{% endif %}
