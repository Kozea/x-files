autorisation d'exploitation d'un site de commerce électronique de médicaments
=============================================================================

Madame, monsieur,

J'ai l'honneur de vous adresser, sous ce pli, copie de l’arrêté en date
du {{ client.ars_authorization|locale_date_format }} autorisant mon officine à exploiter un site Internet de commerce électronique de médicaments.

Dans l'attente de voir publiée cette autorisation sur le site de l'Ordre
des Pharmaciens, je vous prie d'agréer l'expression de mes salutations
confraternelles.

|
|
{% if client.managers|length > 1 %}
| *{{ client.managers|join(', ', 'label')|safe }}*
| *Pharmaciens titulaires*
{% else %}
| *{{ client.manager.label|safe }}*
| *Pharmacien titulaire*
{% endif %}
