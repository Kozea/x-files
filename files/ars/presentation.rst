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

Ce site Internet a été développé pour répondre aux exigences réglementaires en application de l’arrêté du 28 novembre 2016 relatif aux bonnes pratiques de dispensation des médicaments dans les pharmacies d'officine, les pharmacies mutualistes et les pharmacies de secours minières.

Les pages suivantes (**Accueil - Médicaments - Parapharmacie - Matériel médical - Promotions - Blog santé - Ordonnances - Ma pharmacie**) donnent accès aux différents contenus du site, sachant qu'au moment de la rédaction de ce dossier, le site peut ne pas être encore totalement finalisé et qu'à ce stade du développement certaines informations n'apparaissent pas forcément. Toutes les informations indispensables et réglementaires concernant l'officine seront impérativement présentes sur le site dès sa mise en ligne.

Le site sera accessible à l'adresse {{ client.ars_domains }}


Mentions légales
................

La rubrique **Mentions légales** est accessible à chaque bas de page.
Un lien vers le site de l'Ordre des Pharmaciens permet d'identifier directement la pharmacie.


Qui sommes-nous ?
-----------------

Raison sociale
  {{ client.social|safe }}

Activité
  Commerce de détail de produits pharmaceutiques en magasin spécialisé (Code APE 4773 Z)

Siège social - adresse
  {{ client.address.replace('\r', '').replace('\n', ', ')|safe }} {{ client.zip }} {{ client.city|safe }}

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
| 75 Rue de la République
| BP 2433
| 69216 Lyon Centre PPDC
| RCS Lyon B 508 023 694
| SIREN : 508023694
| N° TVA intracommunautaire : FR508023694
| Site Internet : http://kozea.fr/

**Hébergeur de données de santé**

| Claranet S.A.S.
| 2, rue Bréguet, 75011 Paris
| Site Internet : http://www.claranet.fr/
|


Sur tous les bas de pages du site Internet on trouve les informations suivantes :

- Les mises en garde générale.
- Les conditions générales de vente (CGV).
- FAQ.
- L'indication 'Page mise à jour le ...'. Toutes les informations consultables sur le site sont mises à jour régulièrement.
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
  :name: front-image

Sur la page d’accueil du site, des blocs numériques sont proposés à l’administrateur du site qui choisit de les faire apparaître
ou non en fonction de la présentation qu’il veut donner à son site. La fonction **modifier les modules** s’affiche quand l’administrateur est connecté.
On retrouve notamment dans ces propositions le bloc **Coordonnées** qui permet à tout internaute d’avoir systématiquement
sous les yeux les informations et les contacts de la pharmacie, le **plan d'accès** et les **horaires** de la pharmacie.
Un onglet **Blog Santé** permet aussi d’accéder directement à la bibliothèque de fiches conseils de la pharmacie, imprimables par l’internaute.

Un onglet **Ordonnances** donnant accès au service de **réservation d’ordonnance** est présent dans le menu.


Présentation des produits
.........................


.. image:: {{ url_for('static', filename='images/ars/our_products.png') }}

Dans le menu, les produits sont présentés sur trois onglets , dont un onglet spécifique pour la vente de médicaments,
clairement distingué par rapport aux produits de **Parapharmacie** et **Matériel médical** comme il est précisé dans la loi du 28 novembre 2016.

1. **Médicaments** :
   ils sont classés en ordre alphanumérique, présentés de façon claire et objective, par leur dénomination.
   Chaque fiche de médicament comporte de façon visible le nom, la forme galénique et le nombre d’unités disponibles.
   L’indication thérapeutique est également mentionnée. L’affichage du prix TTC est indiqué de façon claire.

   La photo représente le médicament tel qu’il est proposé à la vente en officine. Toutes les photos sont au même format et présentent le médicament de manière claire et non ambiguë.
   Toutes les images présentées le sont dans le respect des droits de la propriété intellectuelle.

   En cliquant sur le produit quand l’internaute est sur une vue en liste, on lui permet d’accéder aux informations détaillées comme la notice du médicament, les informations relatives aux précautions d’emploi
   (indications thérapeutiques, contres-indications, mises en garde spéciales, posologie, interaction médicamenteuses, effets indésirables…)

   Un lien spécial permet de consulter directement les Résumés des Caractéristiques du produit (RCP) sur le site Internet de l’ANSM, voire le cas échéant de l’EMEA.

   La notice du médicament peut aussi être téléchargée en format PDF par l’utilisateur pour être imprimée ou sauvegardée.

2. **Autres produits de santé et Matériel médical** : Ces onglets permettent d'accéder aux produits autres que les médicaments, tels que la parapharmacie, les dispositifs médicaux, le matériel d'orthopédie...


.. image:: {{ url_for('static', filename='images/ars/substance_active.png') }}


Modalités d'achat d'un médicament
---------------------------------

Lorsque le patient internaute souhaite commander un médicament, il se rend dans l'onglet **Médicaments**.
Il constitue son panier selon les conditions définies dans l’arrêté du 28 novembre 2016.

Une fois sur la page des médicaments, l'internaute peut filtrer les produits afficher en sélectionnant
une ou plusieurs catégories dans le menu présent à gauche.

Le patient a la possibilité d'accéder à une fiche détaillée sur le médicament en cliquant sur ce dernier.
Sur cette page, on retrouve toute les informations liées au médicament (prix, indications, mode d'emploi, effets secondaires,
contre-indications, ...) dont des pictogrammes à caractère informatif et préventif pour le patient.


.. image:: {{ url_for('static', filename='images/ars/picto_patient.png') }}


À chaque médicament choisi, il trouve la mise en garde visible dans l'image ci-dessus.

En cas d'ajout d'un médicament au panier, le patient doit **obligatoirement** prendre connaissance de la notice concernant
le médicament sélectionné et reconnaître en avoir pris connaissance.

La quantité délivrable pour le médicament ne peut excéder **un mois** de traitement à posologie usuelle ou la quantité nécessaire
pour le traitement d'épisode aigu (blocage automatique si la quantité est supérieure),
les quantités devront également respecter la dose d'éxonération indiquée pour chaque substance active.
Ces quantités sont définies au préalable par le pharmacien.

La quantité minimale de commande pour un médicament correspond à une boîte de médicament.
**Le pharmacien du site Internet s'assure personnellement du respect des quantités délivrables et de la réglementation en vigueur.**

.. image:: {{ url_for('static', filename='images/ars/notice_medicament.png') }}

Si le patient souhaite poser une ou plusieurs questions à son pharmacien,
il peut cliquer sur le bouton **Poser une question à mon pharmacien**.

Il accède alors à la messagerie :


.. image:: {{ url_for('static', filename='images/ars/messagerie_medicament.png') }}


Lors d'une commande d'un médicament, si le patient dépasse la quantité maximum autorisée par le pharmacien (qui correspond à la durée maximale de traitement fixée par la notice), le message d'erreur suivant s'affiche :


.. image:: {{ url_for('static', filename='images/ars/stock_quantity.png') }}


Lorsque le patient souhaite finaliser ses achats, il clique sur **Valider mon panier**.


.. image:: {{ url_for('static', filename='images/ars/shopping_cart.png') }}


Le patient peut alors valider son panier, continuer ses achats ou vider son panier.

Pour valider son panier, l'internaute est invité à s'identifier comme client déjà référencé sur le site de la
pharmacie (mon compte : identifiant et mot de passe).


.. image:: {{ url_for('static', filename='images/ars/inscription.png') }}


Le patient choisit ensuite son mode de livraison.


.. image:: {{ url_for('static', filename='images/ars/shipping_info.png') }}


Sur la page récapitulatif avant paiement, **il peut mettre à jour son questionnaire d'informations personnelles à chaque commande.**
S'il s'agit de la première visite, il doit impérativement remplir un questionnaire comprenant son identification (nom, prénom, adresse, coordonnées) mais
également son âge, son poids, son sexe, ses traitements en cours, ses antécédents allergiques et le cas échéant
pour une femme en âge de procréer, son état de grossesse ou bien s'il y a allaitement.

Pour finaliser sa commande, le patient internaute doit lire et valider les conditions générales de vente
(la validation n'est possible que si le texte a été défilé entièrement) par un double clic.
Concernant les médicaments, il est clairement indiqué dans les conditions générales de vente et lors du processus de validation
qu'il n'y a pas de droit de rétractation possible (traçabilité du médicament et impératif de conservation).

**Le patient est informé au moment de la validation de la commande que son dossier pharmaceutique
peut être renseigné à posteriori dès lors qu'il se rend à l'officine physique dans les quatre mois suivant la validation de la commande.**


.. image:: {{ url_for('static', filename='images/ars/recap.png') }}
  :name: recap-image


L'interface de paiement Ingenico s'ouvre alors.


Onglet Promotions
.................

Dans cet onglet sont présentés seulement les produits en promotion. La présentation est la même que la page produit.


Onglet Blog santé
.................

L'onglet **Blog santé** propose un large contenu éditorial à destination des internautes,
informatif et préventif dans le cadre de l’éducation thérapeutique du patient.

Sont aussi proposés dans cette rubrique des articles sur l’actualité de l’officine
et permet au pharmacien titulaire du site Internet de mettre en avant l’actualité de son officine.
On y retrouve aussi les communiqués du Ministère des Affaires sociales et de la Santé, des articles sur l’actualité santé,
rédigés d’une manière neutre et indépendante par une société d’édition de contenu de santé (Kéléos),
ainsi que les alertes sanitaires qui proviennent de sources officielles telles que le site www.sante.gouv.fr.

En terme de contenu, le calendrier vaccinal et le calendrier pollinique officiel du Ministére de la Santé sont proposés
en consultation et téléchargement dans l’onglet **Ma pharmacie**.

.. image:: {{ url_for('static', filename='images/ars/health_advices.png') }}

Onglet Ordonnances
..................

Un service de réservation d'ordonnance est proposé aux clients de la pharmacie qui peuvent scanner ou photographier leur ordonnance
et l'envoyer à la pharmacie pour préparation. Les produits seront retirés à la pharmacie sur présentation de l'ordonnance.


Onglet Ma pharmacie
...................

.. image:: {{ url_for('static', filename='images/ars/officine_presentation.png') }}


L'onglet **Ma pharmacie** permet d'accéder à différents onglets déjà décrits ci-dessus : **Présentation** de la pharmacie,
**Coordonnées**, **Horaires d'ouverture** de la pharmacie et la **pharmacie de garde**.
Il permet également d'afficher en plan large le **Plan d'accès** à la pharmacie en mode dynamique (géolocalisation intégrée).
Enfin, on peut également accéder à la présentation des spécialités et services de la pharmacie, de l'équipe, aux numéros et contacts utiles,
à la pharmacovigilance et aux calendriers vaccinaux et polliniques.


.. image:: {{ url_for('static', filename='images/ars/map.png') }}


La liste des spécialités et services de la pharmacie :


.. image:: {{ url_for('static', filename='images/ars/specialized_services.png') }}


La liste des collaborateurs de l'équipe officinale :


.. image:: {{ url_for('static', filename='images/ars/team.png') }}


L’administrateur du site renseigne le bloc Membres de l’équipe avec
pour chaque membre la possibilité d’afficher les informations suivantes :


1. Le nom de famille (possibilité de le masquer) ;
2. Le prénom ;
3. La civilité ;
4. Le poste ;
5. Le diplôme ;
6. Pour les pharmaciens adjoints, il est possible de préciser ceux qui ont une délégation pour administrer le
   site internet de l’Officine au niveau de la vente en ligne. ;
7. L’email (il est possible de le masquer, s’il est différent de celui de la pharmacie) ;
8. Le numéro de téléphone ;

*NB : Une fois connecté et sur la page d’ajout d’un membre de l’équipe, le titulaire se voit rappeler la réglementation
et les règles d’usage concernant la diffusion des données personnelles des collaborateurs ainsi que leur droit à l’image.
Le collaborateur doit donc donner expressément son consentement.*


Pharmacovigilance
-----------------

Cette rubrique permet au patient internaute de déclarer des effets indésirables liés à un
médicament via le formulaire officiel fourni par l'ANSM (Agence Nationale de Sécurité du Médicament et des Produits de Santé).
Le patient internaute peut ainsi télécharger la fiche destinée aux patients de « déclaration
d’effet indésirable susceptible d’être dû à un médicament ou produit mentionné à l’Art. R.5121-150 » de l’ANSM.


.. image:: {{ url_for('static', filename='images/ars/pharmacovigilance.png') }}

La liste complète des centres régionaux de pharmacovigilance (lien vers le site ANSM) est également consultable.


Pharmacies de garde
-------------------

Cette section est complètement personnalisable. Elle permet au pharmacien de
renseigner les pharmacies de garde sur son secteur et d’intégrer une pièce jointe (tableau,
image, texte, etc).

Par défaut le message suivant est affiché :
« Pour toute urgence hors des horaires d’ouverture de la pharmacie, téléphonez au
numéro 17 (gendarmerie ou police) qui vous indiquera la pharmacie la plus proche.
Pour trouver directement la pharmacie de garde la plus proche de votre commune, téléphonez directement au 32 37. »

.. image:: {{ url_for('static', filename='images/ars/guard.png') }}
  :name: guard-image


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

.. image:: {{ url_for('static', filename='images/ars/useful_links.png') }}

Calendriers vaccinal et pollinique
----------------------------------

L’internaute peut consulter et télécharger les calendriers de santé de l'année en cours.


.. image:: {{ url_for('static', filename='images/ars/calendars.png') }}


Extranet : Fonctionnalités du site côté pharmacien
==================================================


La gestion du site, accessible de manière sécurisée, permet de paramétrer et de personnaliser le site Internet.
Pour y accéder, le pharmacien doit être connecté et cliquer sur le bouton en haut à gauche **Gestion du site**.


Modifier ses informations personnelles
......................................


Ce module permet de modifier les informations concernant le pharmacien titulaire.
Il est accessible dans le bandeau en haut du site. En cliquant sur son nom
il fera apparaître un menu, puis en cliquant sur **Mon profil** il pourra modifier ses informations personnelles.


.. image:: {{ url_for('static', filename='images/ars/client_contact.png') }}
  :name: client-contact-image


Onglet Ma pharmacie
...................


Plusieurs éléments permettent de personnaliser le site Internet de la pharmacie dans l’onglet **Ma pharmacie**.


Mes informations
----------------

Cet onglet permet de mettre à jour toutes les informations sur l’établissement depuis différents blocs,
que l’on retrouve sur la page d’accueil du site Internet et dans l’onglet **Ma pharmacie** coté patient.


.. image:: {{ url_for('static', filename='images/ars/informations.png') }}


L’équipe
--------

Cet onglet permet de proposer une description de l’équipe et de ses membres.
Seul l’administrateur du site peut ajouter des collaborateurs, modifier leur fiche et en retirer de la liste.
Chaque collaborateur à un identifiant et un mot de passe pour se connecter et un système
de gestion de droits permet de donner à chacun des accès spécifiques.


Services / Spécialités
----------------------

Ces rubriques permettent de choisir l’affichage des spécialités
et services dispensés par l’officine parmi une liste exhaustive et d’en modifier le contenu si besoin.


Liens utiles
------------

Ici le pharmacien peut modifier le contenu affiché dans bloc **Liens utiles** dans l’onglet **Ma pharmacie** coté patient.


Onglet Blog santé
.................

Cet espace permet de créer, modifier, supprimer les articles affichés dans le menu du site sur l’onglet **Blog santé**.


Onglet Ordonnances
..................

Lorsqu'un patient fait une réservation d'ordonnance, le pharmacien est averti par un mail.
Dans cet onglet, les ordonnances sont triées par statut (**En attente**, **Préparées**, **Historique**) et affichées dans les onglets associés.
Ces réservations peuvent être consultées, modifiées ou supprimées.
La modification des informations concernant une ordonnance permet de changer le statut de la réservation.
Le pharmacien peut indiquer si l'ordonnance est :

- en cours de préparation
- en attente
- validée
- annulée
- remise.

Le patient reçoit un mail à chaque changement du statut.


.. image:: {{ url_for('static', filename='images/ars/patient_order_manage.png') }}


Options
-------

Dans cet onglet il peut activer ou désactiver la réservation d’ordonnance sur son site.


Onglet Produits
...............

Produits
--------

Le pharmacien peut créer son catalogue produits et le gérer dans cet onglet.

.. image:: {{ url_for('static', filename='images/ars/admin_product_manage.png') }}

Un tableau récapitulatif répertorie l'ensemble des produits qui sont vendus sur son site Internet.
Il peut exporter les produits qu'il souhaite depuis ce tableau.

Chaque produit a pour information : le code CIP13, la dénomination du produit, son type (médicament, autre…),
son prix TTC, et son état (publié / non publié). Ces informations peuvent être modifiées ou supprimées.

Il peut également ajouter un nouveau produit en créant sa fiche ou importer un nouveau produit à l’aide de son code CIP13.
Lors d'un import par code CIP13, les informations suivantes sont directement renseignées :

- le nom du produit
- le laboratoire
- le code CIP13
- le taux de TVA
- le type de produit (médicament ou autre).

Certains renseignements ne sont indiqués automatiquement que s'ils sont présents dans la base de données existante.
On retrouvera pour le médicament : le prix TTC, l'image, et toutes les informations complémentaires au médicament
comme les substances actives, les indications thérapeutiques, le mode d'emploi, les effets secondaires et les contre-indications.
Si ces informations ne sont pas renseignées par défaut, le pharmacien devra les compléter.

D'autres indications sont à renseigner uniquement par le pharmacien car cela concerne des informations propres à sa pharmacie. Ce sont :

- l'exclusivité (pas d'exclusivité, exclusivité officinale, exclusivité Internet) ;
- la quantité maximale à l'achat ;
- la quantité de stock ;
- la disponibilité du produit ;
- la notice en format pdf.

Concernant la quantité maximale à l'achat, le pharmacien s'engage à ne pas dépasser **un mois** de traitement à posologie usuelle
ou la quantité nécessaire pour le traitement d'épisode aigu.
Pour l'intégration de tout autre produit par code CIP13, seul le nom du produit, le nom du laboratoire et le code CIP13,
sont indiqués par défaut. Les autres informations sont à indiquer par le pharmacien.

Lors d'une création de fiche produit sans passer par l'import d'un code CIP13,
toutes les informations du produit sont à indiquer par le pharmacien.

Pour prévenir des risques associés à la prise d'un médicament, le pharmacien peut intégrer des pictogrammes de prévention
lors de l'ajout d'un médicament.
Exemple : La femme enceinte ne doit pas prendre d'ibuprofène pendant sa grossesse.
Le pharmacien sélectionne alors le pictogramme « Ne pas prendre pendant la grossesse ».


.. image:: {{ url_for('static', filename='images/ars/picto_admin.png') }}

Retrait de lots
***************

En cas d’alerte sanitaire pour retrait de lot, le pharmacien dispose de différents moyens de communication pour prévenir ses patients
avec des newsletters et une messagerie instantanée. Pour cela il faut aller dans **Outils → Newsletter** ou dans **Outils → Messagerie**.


.. image:: {{ url_for('static', filename='images/ars/add_product.png') }}
  :name: add-product-image


Promotions
----------

Le pharmacien titulaire retrouve ici l’ensemble des promotions qui ont été créées dans le tableau récapitulatif.
Celles-ci peuvent être classées par :

- titre ;
- type ;
- état (active, bientôt active ou inactive) ;
- cible (Produit ou Marque).

Il a la possibilité d’avoir un résumé de toutes les promotions en cours.

Il peut également ajouter une nouvelle promotion. Pour cela, après avoir cliqué sur **Ajouter**,
le pharmacien titulaire choisit le type de promotion parmi la liste de promotions proposées :

- pour X achetés, le suivant à - Y % ;
- pourcentage de remise ;
- X euros au lieu de Y ;
- pour X achetés, Y offerts ;
- X achetés pour Y € ;
- bon de réduction immédiat.

Il choisit un titre, une date de début et de fin de la promotion. Ceci permettra un affichage
et un retrait de la promotion aux dates indiquées. Enfin, il rentre les informations correspondantes au type de promotion.

.. image:: {{ url_for('static', filename='images/ars/admin_add_promo.png') }}
  :name: admin-add-promo-image

Options
-------

Il peut dans cet onglet choisir le nombre de produits à afficher dans le bloc **Nos produits**.
Il peut aussi choisir d'afficher ou non les produits sur son site.

Onglet Commandes
................

Dans cet onglet, il retrouve ici l’ensemble des commandes effectuées par les internautes,
séparées par onglets liés au statut (**En attente**, **Préparées**, **Historique**).

Il retrouve :

- le numéro de la commande
- le patient
- la date de la commande
- son prix total TTC
- le type de livraison
- son état.


.. image:: {{ url_for('static', filename='images/ars/webstore_order.png') }}


Modalités de validation de la commande par le pharmacien
--------------------------------------------------------

Le pharmacien doit notamment avoir pris connaissance de la fiche du patient internaute avant
de pouvoir accéder au détail de la commande et valider celle ci.
Il doit notamment s'assurer que la commande est adaptée à l'état de santé du patient internaute.

La commande validée par le pharmacien est ensuite saisie dans le logiciel d'aide à la dispensation de la pharmacie
selon la procédure normalisée en vigueur.
La fiche du patient est donc complétée dans ce logiciel et permet ainsi de garder une traçabilité totale
dans le dossier pharmaceutique du patient.

Le pharmacien assure et contrôle la préparation et l'expédition de la commande au patient internaute.
La facture émise lors de la commande comporte obligatoirement l'identification de la pharmacie ainsi que le nom du pharmacien.
Les factures comportent outre le détail de la commande, les prix H.T, les prix T.T.C, le taux de T.V.A
et les frais de port éventuellement appliqués.
Ces factures sont archivées sur le compte du patient internaute et également sur celui du pharmacien pendant 3 ans.


Livraison
---------

Dans cet onglet le pharmacien peut à tout moment adapter sa politique tarifaire de livraison et
ajouter ou supprimer différents modes de livraison.


.. image:: {{ url_for('static', filename='images/ars/admin_options_ecommerce.png') }}


Colissimo
---------

Dans cet onglet il peut renseigner ses identifiants de connexion Colissimo
pour activer ce type de livraison et la génération de l’étiquette associée.

Options
-------

Ici il peut activer ou non la vente en ligne ainsi que le paiement en ligne.


Onglet Menu
...........

Le pharmacien peut choisir d’activer ou désactiver les onglets présents dans le menu de son site.


.. image:: {{ url_for('static', filename='images/ars/admin_options_choices.png') }}

Onglet Thème graphique
......................

En un seul clic, cette interface permet de relooker l’intégralité du site. Le pharmacien peut choisir
parmi de nombreux thèmes graphiques et modifier l'aspect visuel du site,
mais **sans aucune modification du contenu éditorial et règlementaire**.

Onglet Newsletters
..................

Dans cet onglet le pharmacien titulaire peut adresser des emails (newsletters) à ses patients.
Pour cela, il donne un titre à son message, puis écrit le contenu.
Le message sera adressé aux patients ayant entré leur adresse email au moment de leur inscription.
**Lors de la rédaction d'un message, une alerte rappelle constamment au titulaire
que les newsletters relatives aux médicaments ne doivent relayer que des informations sanitaires émanant des autorités**.


.. image:: {{ url_for('static', filename='images/ars/newsletter.png') }}


La newsletter peut présenter différents types de message. Le pharmacien peut envoyer à ses patients les messages suivants :

- Newsletter simple
- Newsletter sur les produits
- Newsletter sur les promotions.


Le pharmacien peut cibler son envoi selon les critères suivants :

- Genre
- Date d’inscription patients
- Patient ayant acheté certains produits
- Patients ayant acheté certaines marques.


.. image:: {{ url_for('static', filename='images/ars/alerte_sanitaire.png') }}


**Le pharmacien engage sa responsabilité quant au contenu écrit dans les newsletters**.


Onglet Patients
...............

Dans cet onglet, on trouve l’affichage de la liste des patients
inscrits sur le site avec les informations suivantes : nom, prénom, ville, email, téléphone, historique de commandes…


Onglet Mon contrat
..................


.. image:: {{ url_for('static', filename='images/ars/admin_option_contract.png') }}


L’onglet « Mon contrat » permet de retrouver l’ensemble des informations portant sur le contrat d’abonnement du pharmacien.


Contacter Pharminfo.fr
----------------------

**Pharminfo.fr** est la marque commerciale de la société KOZEA pour son activité de création et d'hébergement de sites Internet de pharmacies d'officine.

Cette rubrique permet au titulaire d'avoir toutes les informations régulièrement mises à jour pour contacter les équipes commerciales et techniques de la société KOZEA.


Numéro client
-------------

Le numéro de client du pharmacien titulaire.


Date anniversaire du contrat
----------------------------

La date d’anniversaire du contrat de la pharmacie avec Pharminfo.fr.


Contrat d’abonnement
--------------------

Conditions générales d’utilisation des services proposées par Pharminfo.fr.


Onglet Factures
...............


.. image:: {{ url_for('static', filename='images/ars/admin_options_invoices.png') }}


Dans cet onglet, le pharmacien peut retrouver l’archivage de l’ensemble des factures liées au fonctionnement du site Internet,
directement en ligne et téléchargeables en format PDF.

Les titulaires et comptables peuvent télécharger l’ensemble des factures en une seule fois, ou consulter chacune d’entre elles en détail.


Internet : Fonctionnalités du site côté patient
===============================================


Espace personnel
................
Le patient accède à son espace personnel en cliquant sur son nom.


Onglet Mon profil
-----------------

Dans cet onglet il peut modifier les informations personnelles qu’il a renseignées lors de son inscription sur le site.


Onglet Gestion des ordonnances
------------------------------

Dans cet onglet, le patient peut suivre les ordonnances passées,
en cours et à venir qu’il a envoyé à la pharmacie par le biais du site internet.
Un tableau descriptif récapitule :

- numéro d’ordonnance ;
- date de l’ordonnance ;
- son statut (annulée, en attente, en cours, préparée et remise).


.. image:: {{ url_for('static', filename='images/ars/patient_order_manage_patient.png') }}
  :name: patient-order-manage-patient-image


L'ordonnance peut également être consultée en version détaillée.

Le patient à la possibilité de réserver une nouvelle ordonnance.


.. image:: {{ url_for('static', filename='images/ars/patient_order.png') }}


Onglet Mes commandes
--------------------

Dans cet onglet, le patient obtient toutes les informations concernant ses commandes passées, en cours et à venir.
Un tableau descriptif récapitule :
Numéro de commande, nom du patient, date de la commande, statut de la commande
(annulée, remboursée, en attente de paiement, en cours de préparation, préparée en pharmacie, retirée en pharmacie, payée, expédiée).


.. image:: {{ url_for('static', filename='images/ars/product_patient.png') }}


Onglet Mes messages
-------------------


Dans le cadre de l'arrêté du 28 novembre 2016 relatif aux bonnes pratiques de dispensation des médicaments dans les pharmacies d'officine, les pharmacies mutualistes et les pharmacies de secours minières, le site Internet est muni d'une messagerie.

Cette messagerie permet un dialogue pertinent entre le pharmacien et le patient. Il est mis en place par des moyens sécurisés propres à préserver la confidentialité des échanges entre le pharmacien et le patient.
Aucun enregistrement d’images, de films et de bandes sonores n'est réalisé.

Les patients sont informés de l’enregistrement et du traitement de leurs données dans le cadre de la
mise en œuvre du dialogue pertinent par le message suivant :


.. image:: {{ url_for('static', filename='images/ars/dialogue_pertinent.png') }}


Le patient peut également imprimer ses échanges avec le pharmacien.


.. image:: {{ url_for('static', filename='images/ars/print_messagerie.png') }}

Onglet Pharmacovigilance
------------------------

Dans cet onglet, le patient peut déclarer des effets indésirables d'un médicament avec le module de pharmacovigilance.
Le patient trouvera à sa disposition le guide du remplissage du formulaire ainsi que le formulaire de l'ANSM
pour déclarer les anomalies du médicament.


Inscription
...........

Pour toute commande ou réservation d’ordonnance, le patient doit s’inscrire sur le site Internet.
Pour cela,il clique sur le bouton **Se connecter** puis **Inscrivez-vous**. L’inscription est sécurisée et personnalisable.


.. image:: {{ url_for('static', filename='images/ars/inscription.png') }}
  :name: inscription-image


Un patient de moins de 16 ans ne peut pas s'inscrire. Le message d'erreur suivant s'affiche :


.. image:: {{ url_for('static', filename='images/ars/minimum_age.png') }}


Désinscription
..............

Le patient inscrit peut, s'il le souhaite, se désinscrire.
Pour cela, il sélectionne l'onglet **Me désinscrire** dans la rubrique **Mon compte**.
Le patient arrive alors sur la page suivante :


.. image:: {{ url_for('static', filename='images/ars/unsubscribe.png') }}


Hébergement des données
.......................

Les données de santé à caractère personnel collectées par le site Internet {{ client.ars_domains }} sont hébergées par la SSII spécialisée en hébergement Claranet.
La société Claranet est agréée par le Ministère de la Santé et des Sports depuis juin 2010 en qualité d’Hébergeur de Données de Santé à caractère personnel et depuis janvier 2015 avec un agrément Epharmacie.
Lors d'une inscription d'un patient sur le site Internet : {{ client.ars_domains }}, un message d'information s'affiche concernant l'hébergement de ses données de santé (Consentement exprès du patient).


.. image:: {{ url_for('static', filename='images/ars/inscription_grita.png') }}
  :name: inscription-grita-image


Réservation d'ordonnance
........................

Afin de gagner du temps, le patient peut envoyer directement son ordonnance à la
pharmacie. L'équipe officinale sera alors en mesure de planifier la délivrance
médicamenteuse et l'accompagnement thérapeutique du patient.


.. image:: {{ url_for('static', filename='images/ars/patientorder.png') }}
  :name: patientorder-image


En cliquant sur **Envoyer mon ordonnance**, le patient obtient un descriptif des étapes de réservation d’ordonnance.

Procédure de réservation d’ordonnance :

- Envoyez le scan ou la photo de votre ordonnance avec le formulaire ci-contre.
- Votre pharmacien reçoit et traite votre ordonnance.
- Surveillez vos emails : votre pharmacien vous informe rapidement que vous pouvez venir récupérer votre commande.

Pour suivre la procédure, le patient doit remplir la fiche d’information disponible sur cette même page.
Il ajoute en pièce jointe la photo ou le fichier image de son ordonnance et peut également ajouter différents
commentaires qu’il jugera utiles.

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

Une fois la commande préparée, le patient sera averti par e-mail. Ce dernier pourra alors venir retirer ses médicaments à l’officine.


Sécurité des données
....................

La sécurité et la confidentialité lors de la transmission par les patients de
leurs ordonnances sont assurées par HTTPS :

L'HyperText Transfer Protocol Secure, plus connu sous l'abréviation HTTPS — littéralement **protocole de transfert hypertexte sécurisé** —
est la combinaison du HTTP avec une couche de chiffrement comme SSL ou TLS.

HTTPS permet au visiteur de vérifier l'identité du site web auquel il accède,
grâce à un certificat d'authentification émis par une autorité tierce,
réputée fiable (et faisant généralement partie de la liste blanche des navigateurs Internet).
Il garantit théoriquement la confidentialité et l'intégrité des données envoyées par l'utilisateur
(notamment des informations entrées dans les formulaires) et reçues du serveur. Il peut permettre de valider l'identité du visiteur,
si celui-ci utilise également un certificat d'authentification client.

HTTPS est généralement utilisé pour les transactions financières en ligne : commerce électronique, banque en ligne, courtage en ligne, etc.
Il est aussi utilisé pour la consultation de données privées, comme les courriers électroniques, par exemple.
