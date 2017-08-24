Présentation du site Internet de la {{ client.title|safe }}
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. sectnum::
   :depth: 3

.. contents:: Table des matières


Introduction : Description du site Internet
===========================================

Le site de la {{ client.title|safe }} qui sera mis en ligne, est développé selon l'exemple d'architecture présenté ci-après.

Ce site est le véritable prolongement virtuel de la pharmacie. Il est entièrement modulable et personnalisable par le
pharmacien. Il offre ainsi la possibilité pour le pharmacien de fournir à ses patients un service de qualité.

Ce site Internet a été développé pour répondre aux exigences réglementaires en application de l’arrêté du 20 juin 2013 relatif aux bonnes pratiques de dispensation des médicaments par voie électronique.

Les pages suivantes (**Accueil-Ma Pharmacie-Nos Produits-Conseils Santé-Nos Services-Mon Compte**) donnent accès aux différents contenus du site, sachant qu'au moment de la rédaction de ce dossier, le site peut ne pas être encore totalement finalisé et qu'à ce stade du développement certaines informations n'apparaissent pas forcément. Toutes les informations indispensables et réglementaires concernant l'officine seront impérativement présentes sur le site dès sa mise en ligne.

Le site sera accessible à l'adresse {{ client.ars_domains }}


Qui sommes-nous ?
.................

La rubrique "Qui sommes-nous" est accessible à chaque bas de page et permet d'afficher les mentions légales ainsi que les informations réglementaires. Un lien vers le site de l'Ordre des Pharmaciens permet d'identifier directement la pharmacie.


Mentions légales
----------------

Raison sociale
  {{ client.title|safe }}

Activité
  Commerce de détail de produits pharmaceutiques en magasin spécialisé (Code APE 4773 Z)

Siège social - adresse
  {{ client.address|safe }} {{ client.zip }} {{ client.city|safe }}

Numéros téléphone / télécopie
  {{ client.phone }} {% if client.fax %}/ {{ client.fax }}{% endif %}

Mail
  {{ client.mail }}

Forme juridique
  {{ client.legalform.title }}

{% if client.capital and client.legalform.legalform_id == 0 %}
Capital social
  {{ client.capital }}
{% endif %}

SIRET
  {{ client.siret }}

**RCS** {{ client.rcs }} {{ client.siret }}

Numéro TVA intracommunautaire
  {{ client.tva }}


Informations réglementaires
---------------------------

Numéro de licence de la pharmacie
  {{ client.license_number }}

**Pharmaciens titulaires**

{% for manager in client.managers %}
- {{ manager.label|safe }}{% if manager.guild %}{{ ", inscrit à lʼOrdre National des Pharmaciens sous le numéro %s" % manager.guild }}{% endif %}{{ '.' if loop.last else ',' }}
{% endfor %}

**Agence Nationale de Sécurité du Médicament et des produits de santé (ANSM)**

| 143-147, Boulevard Anatole France
| 93285 Saint-Denis Cedex
| Tél : 01 55 87 30 00
| Site Internet de l'ANSM : http://ansm.sante.fr/Declarer-un-effet-indesirable/Comment-declarer-un-effet-indesirable/Declarer-un-effet-indesirable-mode-d-emploi/(offset)/0/

**Ministère des Affaires Sociales et de la Santé**

| 14 Avenue Duquesne, 75007 Paris
| tel +33(0)1 40 56 60 00
| Site Internet : http://www.social-sante.gouv.fr

**Ordre National des Pharmaciens**

| 4, avenue Ruysdaël - 75379 PARIS CEDEX 08
| Tél/Fax : 01 56 21 34 34 / 01 56 21 34 99
| Site Internet : http://www.ordre.pharmacien.fr

**Agence Régionale de Santé**

{% if client.ars.name %}| {{ 'ARS %s' % client.ars.name }}{% endif %}

{% for field in (client.ars.address, client.ars.address2, '%s %s' % (client.ars.zip, client.ars.city)) %}

{% if field %}| {{ field|safe }}{% endif %}

{% endfor %}


Déclaration à la CNIL
---------------------

La demande d'autorisation d'ouverture d'un site Internet auprès de l'ARS s'accompagne obligatoirement d'une déclaration **normale** auprès de la CNIL.


Prestataires techniques
-----------------------

**Conception site Internet**

| Société KOZEA S.A.R.L.
| Dénomination commerciale : **Pharminfo.fr**
| SARL au capital de 33 000 €
| 107 boulevard de Stalingrad
| 69100 Villeurbanne
| RCS Lyon B 508 023 694
| SIRET : 50802369400021
| N° TVA intracommunautaire : FR508023694
| Site Internet : http://kozea.fr/

**Hébergeur de données de santé**

| Grita S.A.S.
| Immeuble EQUALIA
| 5, rue Charles de Gaulle, 94140 Alfortville
| Site Internet : http://www.grita.fr/
|

.. image:: {{ url_for('static', filename='images/ars/legal_notice.png') }}


Sur tous les bas de pages du site Internet on trouve les informations suivantes :

- Qui sommes-nous ?
- Les mises en garde générale
- les conditions générales de vente (CGV)
- FAQ
- L'indication 'Page mise à jour le ...'.
- Le logo de l'Ordre National des Pharmaciens (avec lien vers le site Internet).
- Le logo de l'ARS (avec lien vers le site Internet).
- Le logo du Ministère des Affaires Sociales et de la Santé (avec lien vers le site Internet).
- Le logo de l'Agence Nationale de Sécurité du Médicament (avec lien sur la page 'Déclarer un effet indésirable').


.. image:: {{ url_for('static', filename='images/ars/footer.png') }}


Les mises en garde générales indiquent les précautions d'usage d'un médicament.


.. image:: {{ url_for('static', filename='images/ars/global_caution.png') }}


Accueil : page d'accueil du site
................................

La Page **Accueil** du site de la pharmacie est dédiée à la présentation de l’officine. Elle est
entièrement personnalisable par le titulaire et/ou le pharmacien assistant mandaté par le titulaire pour administrer le site.

L'administrateur du site choisit un titre de bienvenue et peut écrire un texte de présentation et intégrer des
photos de la pharmacie.

Sont également visibles et modifiables par le titulaire sur la page **Accueil**, les **Coordonnées** de la pharmacie, les **Horaires d'ouverture**
et un accès direct à la page d'information des **Pharmacies de garde** avec le 3237 : numéro officiel des syndicats pharmaceutique de France.

.. image:: {{ url_for('static', filename='images/ars/front.png') }}

Sur le côté droit du site, sont présents des pavés numériques appelés « widgets » que l'administrateur
du site peut faire apparaître ou non, en fonction de la présentation qu'il veut donner à son site.
Le module **Paramètres** s'affiche quand l'administrateur est connecté et permet de gérer les widgets.
On retrouve dans cette colonne de widgets, le panier consultable par le client (**Mon panier**), le pavé **Votre pharmacien vous conseille** qui permet
à tout Internaute d'avoir systématiquement sous les yeux les informations et le module de contact pour joindre la pharmacie,
le **Plan d'accès** qui peut être déroulé pour afficher également les **Horaires de la pharmacie**. Un module **Fiches
conseils** permet aussi d’accéder directement à la bibliothèque de **Fiches conseil** de la pharmacie, imprimables par les Internautes.

Un widget donnant accès direct au service de **Réservation d'ordonnance** est également présent dans la colonne de droite.


Ma Pharmacie
............


.. image:: {{ url_for('static', filename='images/ars/officine_presentation.png') }}


Le menu **Ma pharmacie** permet d'accéder à différents onglets déjà décrits ci-dessus : **Présentation** de la pharmacie, **Coordonnées** et **Horaires d'ouverture** de la pharmacie. Il permet également d'afficher en plan large le **Plan d'accès** à la pharmacie en mode dynamique (géolocalisation intégrée).


.. image:: {{ url_for('static', filename='images/ars/map.png') }}


Dans ce menu, se trouve aussi l'onglet permettant d'afficher les **Spécialités dispensées** à la pharmacie :


.. image:: {{ url_for('static', filename='images/ars/specialized_services.png') }}


La liste des collaborateurs de l'équipe officinale :


.. image:: {{ url_for('static', filename='images/ars/team.png') }}


L'administrateur du site renseigne le module **Equipe officinale** avec pour chaque membre
la possibilité d'afficher les informations suivantes :

1. Le nom de famille (possibilité de le masquer le nom pour les collaborateurs autres que les pharmaciens) ;
2. Le prénom ;
3. Le sexe ;
4. L’ensemble des diplômes et qualifications ainsi que la fonction à l’officine, à choisir parmi une
   liste de toutes les fonctions possibles à l'officine : (titulaire, adjoint, conjoint collaborateur,
   préparateur, conseiller en dermo-cosmétique, conseiller en vente, rayonniste, conditionneur, comptable,
   secrétaire, étudiant en pharmacie, entretien...) ;
5. Pour les pharmaciens adjoints, il est possible de préciser ceux qui ont une délégation pour administrer le
   site Internet de l'officine ;
6. L'email (il est possible de le masquer, s'il est différent de celui de la pharmacie) ;
7. L’adresse et le numéro de téléphone (par défaut, ces éléments ne sont pas visibles par les Internautes) ;
8. Un trombinoscope peut compléter la fiche collective ainsi que les fiches individuelles de l'**Equipe officinale**

NB : une fois connecté et sur la page **Equipe officinale**, *le titulaire se voit rappeler la réglementation et les règles d’usage concernant la
diffusion des données personnelles des collaborateurs ainsi que leur droit à l’image. Le collaborateur doit
donc donner expressément son consentement.*

Lors de la création de la fiche d’information de chaque collaborateur, un **identifiant** et un **mot de passe** sont générés
avec des droits en rapport avec les fonctions. Par exemple, seuls les pharmaciens
titulaires et les adjoints habilités pour administrer le site de vente
en ligne, peuvent gérer les ventes et les commandes en cours.

Nos Produits
............


.. image:: {{ url_for('static', filename='images/ars/our_products.png') }}


Le menu **Nos Produits** comporte trois onglets, dont un onglet spécifique pour la vente de **Médicaments**, clairement distingué par rapport aux **Autres produits de santés** vendus par la pharmacie comme il est précisé dans la loi du 19 Juin 2013.

1. **Médicaments** :
   Ils sont classés en ordre alphanumérique, présentés de façon claire et objective, par leur dénomination de fantaisie et la dénomination commune.
   Chaque fiche de médicament comporte de façon visible le nom, la forme galénique et le nombre d'unités disponibles. L'indication thérapeutique est également mentionnée. L'affichage du prix TTC est indiqué de façon claire.

   La photo représente le médicament tel qu’il est proposé à la vente en officine. Toutes les photos sont au même format et présentent le médicament de manière claire et non ambiguë. Toutes les images présentées le sont dans le respect des droits de la propriété intellectuelle.

   Une étiquette spéciale **En savoir plus**, représentée par un sigle "+" permet à l'internaute d'accèder aux informations détaillées par la notice du médicament, relatives aux précautions d'emploi (indications thérapeutiques, contre-indications, mises en garde spéciales, posologie, interactions médicamenteuses, effets indésirables...).

   Un lien spécial permet de consulter directement les Résumés des Caractéristiques du Produit (RCP)
   sur le site Internet de l'ANSM, voire le cas échéant de l'EMEA.

   La notice du médicament peut aussi être téléchargée en format "pdf" par l'utilisateur pour être imprimée ou sauvegardée.

2. **Autres produits de santé** : Cet onglet accède aux produits autres que les médicaments, tels que la parapharmacie, les dispositifs médicaux, le matériel d'orthopédie...

3. **Substances actives** : l'Internaute peut également choisir d'accéder aux médicaments par l'onglet **Substances actives**.
   Les médicaments sont classés par catégorie générale d’indication (douleurs, fièvre, nausées, toux...) puis de substances actives.
   À l’intérieur de ces catégories, le classement est établi par ordre alphabétique, sans artifice de mise en valeur, afin d’éviter toute forme de promotion ou d’incitation à une consommation abusive des médicaments.


.. image:: {{ url_for('static', filename='images/ars/substance_active.png') }}


Modalités d'achat d'un médicament
---------------------------------

Lorsque le patient internaute souhaite commander un médicament, il se rend dans l'onglet « Nos produits ». Cet onglet est séparé en 2 catégories, celle des médicaments et celle des autres produits conformément à l’arrêté du 20 juin 2013. Il constitue son panier selon les conditions définies dans l’arrêté du 20 juin 2013.

Dans le cas d'achat d'un médicament, l'internaute à la possibilité de naviguer sur une des catégories générales d'indication dans le menu « Médicaments » (homéopathie, circulation veineuse, douleurs, fièvre, ...).

Ces catégories générales d'indications sont présentes dans la barre de menu à gauche, et elles sont également accessibles par différentes icônes. Lorsque l’on glisse sur une icône, le texte correspondant à la catégorie générale d'indication apparaît.

Le patient a la possibilité d'accéder à une fiche détaillée sur le médicament en cliquant sur le sigle "+" (En savoir plus). Sur cette page, on retrouve toute les informations liées au médicament (prix, indications, mode d'emploi, effets secondaires, contre-indications, ...) dont des pictogrammes à caractère informatif et préventif pour le patient.


.. image:: {{ url_for('static', filename='images/ars/picto_patient.png') }}


À chaque médicament choisi, il trouve le bandeau descriptif suivant :

« Ceci est un médicament. Attention aux incompatibilités avec vos traitements en cours. Si vous avez
besoin de plus d’informations et de conseils, contactez votre pharmacien au téléphone et email indiqué sur notre site. »


.. image:: {{ url_for('static', filename='images/ars/medicine.png') }}


En cas d'ajout d'un médicament au panier, le patient doit prendre connaissance **obligatoirement** de la notice concernant le médicament sélectionné et reconnaître en avoir pris connaissance.

La quantité délivrable pour le médicament ne peut excéder **un mois** de traitement à posologie usuelle ou la quantité nécessaire pour le traitement d'épisode aigu (blocage automatique si la quantité est supérieure). Ces quantités sont définies au préalable par le pharmacien (cf 1.7.1 Fonctionnalités du site côté pharmacien > Gestion de mes produits > Mettre mes produits en ligne page 27)

La quantité minimale de commande pour un médicament correspond à une boîte de médicament.
**Le pharmacien du site Internet s'assure personnellement du respect des quantités délivrables et de la réglementation en vigueur.**

Lorsqu'un patient internaute clique sur un médicament, il est invité à prendre contact avec le pharmacien du service par messagerie en cliquant sur « J'ai lu la notice et j'ai des questions sur ce médicament ».


.. image:: {{ url_for('static', filename='images/ars/notice_medicament.png') }}


Il accède alors à la messagerie :


.. image:: {{ url_for('static', filename='images/ars/messagerie_medicament.png') }}


Lors d'une commande d'un médicament, si le patient dépasse la quantité maximum autorisée par le pharmacien (qui correspond à la durée maximale de traitement fixée par la notice), le message d'erreur suivant s'affiche :


.. image:: {{ url_for('static', filename='images/ars/stock_quantity.png') }}


Lorsque le patient souhaite finaliser ses achats, il clique sur « Voir mon panier ».


.. image:: {{ url_for('static', filename='images/ars/shopping_cart.png') }}


Le patient à la possibilité alors de valider son panier ou de continuer ses achats ou de vider son panier.

Pour valider son panier, l'internaute est invité à s'identifier comme client déjà référencé sur le site de la
pharmacie (mon compte : identifiant et mot de passe). S'il s'agit de la première visite, il doit impérativement
s'inscrire et remplir un questionnaire comprenant son identification (nom, prénom, adresse, coordonnées) mais
également son âge, son poids, son sexe, ses traitements en cours, ses antécédents allergiques et le cas échéant
pour une femme en âge de procréer, son état de grossesse ou bien s'il y a allaitement.


.. image:: {{ url_for('static', filename='images/ars/inscription.png') }}


Le patient choisit ensuite son mode de livraison.


.. image:: {{ url_for('static', filename='images/ars/shipping_info.png') }}


Sur la page récapitulatif avant paiement, **il peut mettre à jour son questionnaire d'informations personnelles à chaque commande.**
Pour finaliser sa commande, le patient internaute doit lire et valider les conditions générales de vente (la validation n'est possible que si le texte a été défilé entièrement) par un double clic (« j'ai pris connaissance », puis « j'accepte »).
Concernant les médicaments, il est clairement indiqué dans les conditions générales de vente et lors du processus de validation qu'il n'y a pas de droit de rétractation possible (traçabilité du médicament et impératif de conservation).

**Le patient est informé au moment de la validation de la commande que son dossier pharmaceutique peut être renseigné à posteriori dès lors qu'il se rend à l'officine physique dans les quatre mois suivant la validation de la commande.**


.. image:: {{ url_for('static', filename='images/ars/recap.png') }}


L'interface de paiement Ingenico s'ouvre alors.


Conseils santé
..............

Le menu **Conseils santé** propose un large contenu editorial à destination des Internautes, informatif et préventif dans le cadre de l'éducation thérapeutique du patient :


.. image:: {{ url_for('static', filename='images/ars/health_advices.png') }}


Actualités officine
-------------------

Cette rubrique est réservée à la pharmacie et permet au pharmacien titulaire du site Internet de mettre en avant
l'actualité de l’officine (ex: journée dépistage hypertension, diabète, journée de sensibilisation à l'asthme,
journée anti-tabac, retrait de produits...).


Actualités santé
----------------

Cet onglet relaye les communiqués du Ministère des Affaires sociales et de la Santé.


Fil santé
---------

Cette rubrique concerne un regard indépendant et neutre de l'actualité de la santé. Le contenu éditorial
est rédigé par des médecins et des pharmaciens d’une société d’édition de contenu de santé (société Keleos).
Les sources et les rédacteurs sont clairement identifiés.


Alertes sanitaires
------------------

Cette rubrique rapporte les alertes sanitaires liées à l'actualité. Ce contenu provient de sources
officielles telles que le site **www.sante.gouv.fr** et est actualisé en continu.

Le pharmacien responsable du site peut également relayer les
alertes sanitaires sur la page **Accueil** de son site Internet et
également dans la rubrique **Conseils Santé**, onglet **Actualités de l'officine**.


Epidémiologie
-------------

Cet onglet propose le suivi épidémiologique de différentes pathologies (ex: varicelle, diarrhée aiguë, syndromes grippaux, sentiweb Hebdo (..).
Ce contenu éditorial provient de sources officielles (réseau Sentinelles, Inserm, INVS, Ministère de la Santé…) et est actualisé en continu.


Fiches conseil
--------------

Cette rubrique permet de donner aux patients internautes des informations concernant différentes
pathologies (dépistage, prévention, suivi thérapeutique, idées reçues...).
Les patients internautes peuvent consulter ces conseils directement en ligne et
ils peuvent également les imprimer à partir d'un format pdf.
Le pharmacien et son équipe peuvent également les imprimer et remettre ces
documents à leurs patients le cas échéant.


Santé et voyages
----------------

Il s’agit des informations actualisées et certifiées (Direction Générale de la Santé,
Centre national de référence du paludisme) à donner à tout voyageur sur le départ.
L’internaute trouvera l’ensemble de ces informations en ligne et le pharmacien pourra se servir
de ces éléments afin de donner un conseil officinal complet et adapté.


Calendrier santé
----------------

Possibilité de télécharger et consulter le calendrier vaccinal officiel du Ministère de la Santé, ainsi qu'un calendrier pollinique.


Nos services
............

Ce menu liste les services proposés sur le site de la pharmacie :


.. image:: {{ url_for('static', filename='images/ars/advices.png') }}


Réservation d'ordonnance
------------------------

Un service de réservation d'ordonnance est proposé aux clients de la pharmacie qui peuvent scanner ou photographier leur ordonnance et l'envoyer à la pharmacie pour préparation. Les produits seront retirés à la pharmacie sur présentation de l'ordonnance.


Pharmacovigilance
-----------------

Cette rubrique permet au patient Internaute de déclarer des effets indésirables liés à un
médicament via le formulaire officiel fourni par l'ANSM (Agence Nationale de Sécurité du Médicament et des Produits de Santé).
Le patient internaute peut ainsi télécharger la fiche destinée aux patients de « déclaration
d’effet indésirable susceptible d’être dû à un médicament ou produit mentionné à l’Art. R.5121-150 » de l’ANSM.

La liste complète des centres régionaux de pharmacovigilance (lien vers le site ANSM) est également consultable.


Pharmacies de garde
-------------------

Cette section est complètement personnalisable. Elle permet au pharmacien de
renseigner les pharmacies de garde sur son secteur et d’intégrer une pièce jointe (tableau,
image, texte, etc).

Par défaut le message suivant est affiché :
« Pour toute urgence hors des horaires d’ouverture de la pharmacie, téléphonez au
numéro 17 (gendarmerie ou police) qui vous indiquera la pharmacie la plus proche.
Pour trouver directement la pharmacie de garde la plus proche de votre commune, téléphonez directement au 32 37.»


Numéros utiles
--------------

Liste des numéros utiles (police, pompiers, SAMU, SOS médecin, alcooliques
anonymes, Association française des diabétiques, Association asthme et allergies,
Cancer info service, Croix-rouge écoute, Dons organes et moelle, Drogues infos service,
Ecoute alcool, Ecoute handicap moteur, Ecoute infos sclérose en plaques, Enfance et
partage, France Alzheimer, Maladies rares info service, Protection et assistance aux
personnes âgées, SIDA info service, Sol en si solidarité sida, Solidarité femmes, SOS
enfants disparus, Suicide écoute, Tabac info service, Vaincre la mucoviscidose, Viols
femmes informations, etc).


Mon compte
..........


Extranet : Fonctionnalités du site côté pharmacien
--------------------------------------------------


Panneau d'administration du pharmacien
''''''''''''''''''''''''''''''''''''''


Le panneau d'administration du pharmacien, accessible de manière sécurisée, permet de paramétrer et de personnaliser le site Internet.
Le pharmacien y retrouvera également les différentes newsletters ainsi que les informations de sa fiche de présentation.


Gestion de mes informations
~~~~~~~~~~~~~~~~~~~~~~~~~~~


Modifier ses informations personnelles
**************************************


Ce module permet de modifier les informations concernant le pharmacien titulaire.


.. image:: {{ url_for('static', filename='images/ars/client_contact.png') }}


Actualiser la fiche de renseignement sur mon établissement
**********************************************************

Cette rubrique permet de mettre à jour toutes les informations sur l'établissement que l'on retrouve dans la rubrique **Qui sommes-nous ?** (mentions légales) du site Internet.


.. image:: {{ url_for('static', filename='images/ars/fiche_renseignement.png') }}


Modifier mes informations de contact
************************************

Pour modifier les **Coordonnées** et les informations de contact de la pharmacie.


.. image:: {{ url_for('static', filename='images/ars/person_contact.png') }}


Gestion des menus
~~~~~~~~~~~~~~~~~


Personnaliser la page d'accueil
*******************************

Ce module permet de modifier la page **Accueil** du site et donc automatiquement l'onglet **Présentation** dans le menu **Ma pharmacie**.


Renseigner les spécialités dispensées
*************************************

Cette rubrique permet de choisir l'affichage des **Spécialités dispensées** dans l'officine parmi une liste exhaustive et de modifier le contenu si besoin.


Compléter l'équipe
******************

Module de gestion de l'équipe officinale qui s'affiche dans le menu **Ma pharmacie**, onglet **Equipe**. Seul l'administrateur du site peut ajouter des collaborateurs, modifier leur fiche et en retirer de la liste. Chaque collaborateur à un identifiant et un mot de passe pour se connecter et un système de gestion de droits permet de donner à chacun des accès spécifiques.


Publier des billets d'actualité
*******************************

Ce module permet de créer, modifier, supprimer les articles affichés dans le menu **Conseils santé**, onglet **Actualité officine**.


Modifier l'affichage des widgets
********************************

Un widget est une application interactive et dynamique qui permet d'obtenir des informations. Tous les widgets du site Internet se trouvent sur la colonne de droite.
On trouve les widgets suivants : **Météo géolocalisée**, **Venir à la pharmacie**, la **Réservation d'ordonnance**, le **Convertisseur de devises**, **Carnet de vaccination électronique**, le **Panier**, les **Fiches conseil**, les **Coordonnées** de la pharmacie (votre pharmacien vous conseille).
Le pharmacien peut choisir d'afficher tout ou partie des widgets. Par exemple, il peut enlever le convertisseur de devises s'il estime qu'il n'en a pas l'utilité sur son site.


.. image:: {{ url_for('static', filename='images/ars/widgets.png') }}


Gestion de mes options
~~~~~~~~~~~~~~~~~~~~~~


Changer le thème graphique du site
**********************************

En un seul clic, cette interface permet de relooker l’intégralité du site. Le pharmacien peut choisir
parmi de nombreux thèmes graphiques et modifier l'aspect visuel du site, mais **sans aucune modification du contenu éditorial et règlementaire**.


Changer les couleurs de ma carte
********************************

Le pharmacien à la possibilité de changer les couleurs du plan d'accès dans le widget **Venir à la pharmacie**


Gérer l'affichage des modules
*****************************

Le pharmacien titulaire peut à tout moment choisir de ne plus faire apparaître sur son site certains
modules non indispensables (ou au contraire de les afficher).
Pour cela, il lui suffit de cocher ou décocher les différents éléments.
L'administrateur du site a aussi la possibilité de choisir la page affichée derrière le nom de domaine du site : soit la page de **Présentation** de la pharmacie, soit la page catalogue **Nos produits**.


.. image:: {{ url_for('static', filename='images/ars/admin_options_choices.png') }}


Modifier mes paramètres e-commerce
**********************************

Le pharmacien titulaire peut également à tout moment, adapter sa politique tarifaire de livraison. Il peut
ainsi modifier le prix d’une livraison à domicile, d’un retrait à la pharmacie et d’une livraison sur le lieu de travail.


.. image:: {{ url_for('static', filename='images/ars/admin_options_ecommerce.png') }}


Activer l'affichage des astuces à la connexion
**********************************************

Un bandeau présentant des **astuces** et permettant aux utilisateurs de mieux naviguer sur le site, s'affiche et peut être désactivé avec cette option.


Gestion de mes produits
~~~~~~~~~~~~~~~~~~~~~~~


Mettre mes produits en ligne
****************************


.. image:: {{ url_for('static', filename='images/ars/admin_product_manage.png') }}


C'est dans ce module que le pharmacien peut créer l'ensemble du catalogue produits de son site Internet.
Un tableau récapitulatif répertorie l'ensemble des produits qui sont vendus sur son site Internet.

Chaque produit a pour information : le code CIP13, la dénomination de produits, son type (médicament, autre...), sa TVA, son prix HT, sa catégorie (douleurs, insecticide, protection solaire...), et sa disponibilité. Ces informations peuvent être modifiées, ou supprimées.

Il peut également ajouter un nouveau produit en créant sa fiche ou importer un nouveau produit à l’aide de son code CIP13.
Lors d'un import par code CIP13, les informations suivantes sont directement renseignées :

- le nom du produit
- le laboratoire
- le code CIP13
- le taux de TVA
- le type de produit (médicament ou autre).

Certains renseignements ne sont indiqués automatiquement que s'ils sont présents dans la base de données existante.
On retrouvera pour le médicament : le prix TTC, l'image, et toutes les informations complémentaires au médicament comme les substances actives, les indications thérapeutiques, le mode d'emploi, les effets secondaires et les contre-indications. Si ces informations ne sont pas renseignées par défaut, le pharmacien devra les compléter.

D'autres indications sont à renseigner uniquement par le pharmacien car cela concerne des informations propres à sa pharmacie. Il y a l'exclusivité (pas d'exclusivité, exclusivité officinale, exclusivité Internet) ; la quantité de stock ; la quantité maximale à l'achat ; la disponibilité du produit et la notice en format pdf. Concernant la quantité maximale à l'achat, le pharmacien s'engage à ne pas dépasser **un mois** de traitement à posologie usuelle ou la quantité nécessaire pour le traitement d'épisode aigu.
Pour l'intégration de tout autre produit par code CIP13, seul le nom du produit, le nom du laboratoire et le code CIP13, sont indiqués par défaut. Les autres informations sont à indiquer par le pharmacien.


.. image:: {{ url_for('static', filename='images/ars/add_product.png') }}
   :width: 14cm


Lors d'une création de fiche produits sans passer par l'import d'un code CIP13, toutes les informations produits sont à indiquer par le pharmacien.

Pour prévenir des risques associés à la prise d'un médicament, le pharmacien peut intégrer des pictogrammes de prévention lors de l'ajout d'un médicament.
Exemple : La femme enceinte ne doit pas prendre d'ibuprofène pendant sa grossesse. Le pharmacien sélectionne alors le pictogramme 'Ne pas prendre pendant la grossesse'.


.. image:: {{ url_for('static', filename='images/ars/picto_admin.png') }}


Créer des promotions
********************


.. image:: {{ url_for('static', filename='images/ars/admin_add_promo.png') }}


Le pharmacien titulaire retrouve ici l’ensemble des promotions qui ont été créées dans un tableau récapitulatif. Celles-ci peuvent être classées par :

- type.
- statut (en ligne, pas encore en ligne, plus en ligne).
- date de début de la promotion.
- produit.

Il a la possibilité d’avoir un résumé de toutes les promotions en cours.

Il peut également ajouter une nouvelle promotion.
Pour cela, après avoir cliqué sur « Ajouter une promotion », le pharmacien titulaire choisit le type de
promotion parmi la liste de promotions proposées :

- Pour X achetés, le suivant à –Y%.
- Pourcentage de remise.
- X euros au lieu de Y.
- Pour X achetés, Y offerts.

Il choisit un titre, une date de début et de fin de la promotion et un type d’affichage parmi une liste de 5
modèles. Ceci permettra un affichage et un retrait de la promotion aux dates indiquées.
Enfin, il rentre les informations correspondant au type de promotion. Exemple : pour une promotion de
type « Pour X achetés, le suivant à –Y% » Il doit indiquer la quantité à acheter (X) et le pourcentage de
réduction sur le suivant (Y).


Suivre mes commandes
********************

Afin d’assurer une bonne traçabilité de ses ventes, il retrouve ici l’ensemble des commandes effectuées par
les internautes. Ces commandes sont classées par date.
Il retrouve :

- la date de la commande.
- son statut (en préparation, préparée en pharmacie, retirée en pharmacie, en attente de paiement, payée, expédiée, annulée, remboursée).
- son prix total TTC.
- la possibilité de télécharger la facture.

Le pharmacien titulaire peut choisir de classer ces factures par date, statut ou prix.


.. image:: {{ url_for('static', filename='images/ars/webstore_order.png') }}


Mettre à jour mes tarifs produits
*********************************

Le pharmacien peut importer sa grille tarifaire de ses différents produits en créant un fichier au format "csv" avec comme informations : le code CIP13, le taux de TVA et le prix TTC. La mise à jour de ses renseignements sera automatique.


Exporter ma liste de produits
*****************************

Il est possible d'exporter toute la liste des produits du catalogue et récupérer le fichier dans un tableur.


Gestion de mes patients
~~~~~~~~~~~~~~~~~~~~~~~


Afficher la liste de mes patients
*********************************

Affichage de la liste des Internautes inscrits sur le site avec les informations suivantes : Nom Prénom, Ville, Email, Téléphone, Historique des commandes, factures...


Gérer la réservation d'ordonnances
**********************************

Lorsqu'un patient passe une **Réservation d'ordonnance**, le pharmacien est averti par un mail.
Un tableau récapitulatif présente toutes les ordonnances réservées sur l'extranet du pharmacien.
Ces réservations d'ordonnances peuvent être supprimées, consultées ou modifiées.
La modification des informations concernant une ordonnance permet de changer le statut de la réservation. Le pharmacien peut indiquer si l'ordonnance est :

- en cours de préparation, en attente, validée annulée ou remise.

Lorsque le pharmacien change le statut en « annulée » ou « validée », le patient reçoit un mail pour l'avertir.


.. image:: {{ url_for('static', filename='images/ars/patient_order_manage.png') }}


Envoyer un message à mes patients
*********************************

Le pharmacien titulaire peut adresser des emails (newsletters) à ses patients. Pour cela, il donne un titre à son message, puis écrit le contenu. Le message sera adressé aux patients ayant entré leur adresse email au moment de leur inscription. **Lors de la rédaction d'un message, une alerte rappelle constamment au titulaire, que les newsletters relatives aux médicaments ne doivent relayer que des informations sanitaires émanant des autorités**.


.. image:: {{ url_for('static', filename='images/ars/newsletter.png') }}


La newsletter peut présenter différents types de message. Le pharmacien peut envoyer à ses patients les messages suivants :

- Informations diverses
- Informer de nouveaux produits disponibles
- Informer de nouvelles promotions disponibles
- Informations sur un produit seulement aux personnes qui l'ont acheté (exemple : en cas d'alerte sanitaire)


.. image:: {{ url_for('static', filename='images/ars/alerte_sanitaire.png') }}


**Le pharmacien engage sa responsabilité quant au contenu écrit dans les newsletters**.


Services professionnels
~~~~~~~~~~~~~~~~~~~~~~~


Catalogue de formations officinales
***********************************

L'équipe officinale a la possibilité d’accéder à des modules de formation en ligne.


Pharmacovigilance
*****************

Le pharmacien peut déclarer des effets indésirables d'un médicament avec le module professionnel de pharmacovigilance. Le pharmacien trouvera à sa disposition le guide de remplissage du formulaire ainsi que le formulaire de l'ANSM pour déclarer les anomalies du médicament.


Statistiques de fréquentation
*****************************

Après avoir indiqué son identifiant de compte, le pharmacien peut accéder au suivi analytique des statistiques de fréquentations de son site, service proposé par Google Analytics.

Il trouve ici des informations concernant la fréquentation de son site Internet : le nombre de visites
au cours des 30 derniers jours (nombre de pages vues, nombre de nouvelles visites),
les heures des visites (nombre de visites par heure).


Mes factures
~~~~~~~~~~~~


.. image:: {{ url_for('static', filename='images/ars/admin_options_invoices.png') }}


L’onglet « Mes factures » permet de retrouver l’archivage de l'ensemble des factures liées au fonctionnement du site
Internet, directement en ligne et téléchargeables au format PDF.

L’administrateur peut télécharger l’ensemble de ses factures en une seule fois, ou consulter chacune d'entre elles en détail.


Mon contrat
~~~~~~~~~~~


.. image:: {{ url_for('static', filename='images/ars/admin_option_contract.png') }}


L’onglet « Mon contrat » permet de retrouver l’ensemble des informations portant sur le contrat d’abonnement du pharmacien.


Contacter Pharminfo.fr
**********************

**Pharminfo.fr** est la marque commerciale de la société KOZEA pour son activité de création et d'hébergement de sites Internet de pharmacies d'officine.

Cette rubrique permet au titulaire d'avoir toutes les informations régulièrement mises à jour pour contacter les équipes commerciales et techniques de la société KOZEA.


Numéro client
*************

Le numéro de client du pharmacien titulaire


Date anniversaire du contrat
****************************

La date d’anniversaire du contrat de la pharmacie avec Pharminfo.fr


Contrat d’abonnement
********************

Conditions générales d’utilisation des services proposées par Pharminfo.fr


Modalités de validation de la commande par le pharmacien
''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Le pharmacien doit notamment avoir pris connaissance de la fiche du patient internaute avant de pouvoir accéder au détail de la commande et valider celle ci. Il doit notamment s'assurer que la commande est adaptée à l'état de santé du patient internaute.

La commande validée par le pharmacien est ensuite saisie dans le logiciel d'aide à la dispensation de la pharmacie selon la procédure normalisée en vigueur.
La fiche du patient est donc complétée dans ce logiciel et permet ainsi de garder une traçabilité totale dans le dossier pharmaceutique du patient.

Le pharmacien assure et contrôle la préparation et l'expédition de la commande au patient internaute.
La facture émise lors de la commande comporte obligatoirement l'identification de la pharmacie ainsi que le nom du pharmacien.
Les factures comportent outre le détail de la commande, les prix H.T., les prix T.T.C., le taux de T.V.A. et les frais de port éventuellement appliqués.
Ces factures sont archivées sur le compte du patient internaute et également sur celui du pharmacien pendant 3 ans.


Internet : Fonctionnalités du site côté patient
-----------------------------------------------


Panneau d'administration du patient
'''''''''''''''''''''''''''''''''''


Gestion de mes informations
~~~~~~~~~~~~~~~~~~~~~~~~~~~


Modifier mes informations personnelles
**************************************

Cet onglet permet au patient de modifier les informations personnelles qu’il a indiquées lors de son inscription sur le site.


Gestion de mes commandes en ligne
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Le patient obtient toutes les informations concernant ses commandes passées, en cours et à venir. Un tableau descriptif récapitule :
Numéro de commande, nom du patient, date de la commande, statut de la commande
(annulée, remboursée, en attente de paiement, en cours de préparation, préparée en pharmacie, retirée en pharmacie, payée, expédiée).


.. image:: {{ url_for('static', filename='images/ars/product_patient.png') }}


Gestion des ordonnances
~~~~~~~~~~~~~~~~~~~~~~~

Le patient peut suivre les ordonnances passées, en cours et à venir, qu'il a envoyées à la pharmacie par le biais du site Internet.
Un tableau descriptif récapitule :
Numéro d'ordonnance, le nom du patient, la date de l'ordonnance, le statut de la commande (validée, annulée, en cours de préparation, en attente).


.. image:: {{ url_for('static', filename='images/ars/patient_order_manage_patient.png') }}


L'ordonnance peut également être consultée en version détaillée.

Le patient à la possibilité de réserver une nouvelle ordonnance.


.. image:: {{ url_for('static', filename='images/ars/patient_order.png') }}


Services professionnels
~~~~~~~~~~~~~~~~~~~~~~~


Voir le module de pharmacovigilance
***********************************

Le patient peut déclarer des effets indésirables d'un médicament avec le module de pharmacovigilance.
Le patient trouvera à sa disposition le guide du remplissage du formulaire ainsi que le formulaire de l'ANSM pour déclarer les anomalies du médicament.


Inscription
'''''''''''

Pour toute commande ou réservation d'ordonnance, le patient doit s'inscrire sur le site Internet. Pour cela, il sélectionne l'onglet « M'inscrire » dans la rubrique « Mon compte ».
L'inscription est sécurisée et personnalisée.


.. image:: {{ url_for('static', filename='images/ars/inscription.png') }}


Un patient de moins de 16 ans ne peut pas s'inscrire. Le message d'erreur suivant s'affiche :


.. image:: {{ url_for('static', filename='images/ars/minimum_age.png') }}


Hébergement des données
'''''''''''''''''''''''

Les données de santé collectées par le site Internet {{ client.ars_domains }} sont hébergées par la SSII spécialisée en hébergement GRITA.
La société GRITA est agréée par le Ministère de la Santé et des Sports depuis juin 2010 en qualité d’Hébergeur de Données de Santé à caractère personnel et depuis janvier 2015 avec un agrément Epharmacie.
Lors d'une inscription d'un patient sur le site Internet : {{ client.ars_domains }}, un message d'information s'affiche concernant l'hébergement de ses données de santé (Consentement exprès du patient).


.. image:: {{ url_for('static', filename='images/ars/inscription_grita.png') }}


Messagerie
''''''''''

Dans le cadre de l'arrêté du 20 juin 2013 relatif aux **Bonnes Pratiques de Dispensation des Médicaments par Voie Électronique**, le site Internet est muni d'une messagerie.

Cette messagerie permet un dialogue pertinent entre le pharmacien et le patient. Il est mis en place par des moyens sécurisés propres à préserver la confidentialité des échanges entre le pharmacien et le patient.
Aucun enregistrement d’images, de films et de bandes sonores n'est réalisé.

Les patients sont informés de l’enregistrement et du traitement de leurs données dans le cadre de la
mise en œuvre du dialogue pertinent par le message suivant :


.. image:: {{ url_for('static', filename='images/ars/dialogue_pertinent.png') }}


Le patient peut également imprimer ses échanges avec le pharmacien.


.. image:: {{ url_for('static', filename='images/ars/print_messagerie.png') }}


Ma fiche
''''''''

Cet onglet permet au patient de retrouver les informations qu’il a indiqué lors de son inscription sur le site.


Désinscription
''''''''''''''

Si le patient s'est inscrit, s'il le souhaite, il peut se désinscrire. Pour cela, il sélectionne l'onglet « Me désinscrire » dans la rubrique « Mon compte ». Le patient arrive alors sur la page suivante :


.. image:: {{ url_for('static', filename='images/ars/unsubscribe.png') }}


Description des widgets
.......................


Venir à la pharmacie
--------------------

Ce widget identifie sur un plan la localisation de la pharmacie.


Votre pharmacien vous conseille
-------------------------------

Interface permettant au patient d'obtenir des réponses aux questions qu'il pourrait formuler
(par exemple : conseils posologiques, interactions médicamenteuses, conseil officinal, etc).

Il y retrouve les coordonnées de la pharmacie (numéro de téléphone, fax et email).


.. image:: {{ url_for('static', filename='images/ars/contact.png') }}


Réservation d'ordonnance
------------------------

Afin de gagner du temps, le patient peut envoyer directement son ordonnance à la
pharmacie. L'équipe officinale sera alors en mesure de planifier la délivrance
médicamenteuse et l'accompagnement thérapeutique du patient.


.. image:: {{ url_for('static', filename='images/ars/patientorder.png') }}


En cliquant sur « en savoir plus », le patient obtient un descriptif des étapes de réservation d’ordonnance (cf 1.7.2 Gestion des ordonnances, deuxième image).

Procédure de réservation d’ordonnance :

- Étape 1 : Scannez, faxez ou photographiez votre ordonnance
- Étape 2 : Envoyez le tout via notre site Internet
- Étape 3 : Votre pharmacien prépare la commande
- Étape 4 : Récupérez vos médicaments en pharmacie

Pour suivre la procédure, le patient doit remplir la fiche d’information disponible sur cette même page.
Il ajoute en pièce jointe la photo ou le fichier image de son ordonnance et ajouter différents
commentaires qu’il jugera utile.

La demande de réservation d’ordonnance est un service confidentiel. Une fois
connecté à l’aide de son identifiant et mot de passe personnel, le patient
peut envoyer par connexion sécurisée son ordonnance ainsi que des commentaires
concernant sa demande. Les données personnelles ainsi que le contenu de
l’ordonnance sont chiffrés afin qu’ils ne circulent pas en clair sur les
réseaux informatiques.

Le pharmacien est alors averti par email qu’une réservation d’ordonnance est
arrivée. Il peut préparer la commande en vérifiant les données personnelles du
patient, auxquelles seul le pharmacien a accès.

Le patient est averti de la préparation de la commande par email. Il peut
alors venir retirer en officine les produits de son ordonnance, après
délivrance obligatoire de l’exemplaire original de l’ordonnance. Cette mesure
est mise en place afin de lutter contre d’éventuelles fraudes.

Une fois la commande préparée, le pharmacien avertira le patient par e-mail. Ce dernier pourra alors venir
retirer ses médicaments à l’officine.


Sécurité des données
''''''''''''''''''''

La sécurité et la confidentialité lors de la transmission par les patients de
leurs ordonnances sont assurées par HTTPS :

L'HyperText Transfer Protocol Secure, plus connu sous l'abréviation HTTPS — littéralement « protocole de transfert hypertexte sécurisé » — est la combinaison du HTTP avec une couche de chiffrement comme SSL ou TLS.

HTTPS permet au visiteur de vérifier l'identité du site web auquel il accède, grâce à un certificat d'authentification émis par une autorité tierce, réputée fiable (et faisant généralement partie de la liste blanche des navigateurs Internet). Il garantit théoriquement la confidentialité et l'intégrité des données envoyées par l'utilisateur (notamment des informations entrées dans les formulaires) et reçues du serveur. Il peut permettre de valider l'identité du visiteur, si celui-ci utilise également un certificat d'authentification client.

HTTPS est généralement utilisé pour les transactions financières en ligne : commerce électronique, banque en ligne, courtage en ligne, etc. Il est aussi utilisé pour la consultation de données privées, comme les courriers électroniques, par exemple.


Mon panier
----------

Le patient peut accéder à son panier.


Fiches conseil
--------------

Le patient accède aux fiches conseil du site Internet.
