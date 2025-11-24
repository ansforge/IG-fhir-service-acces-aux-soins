# Spécif. fonctionnelles - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* **Spécif. fonctionnelles**

## Spécif. fonctionnelles

Le Service d'accès aux soins a pour objectif de faciliter l’orientation des patients vers des médecins effecteurs en ville lorsque leur situation ne relève pas d’une urgence médicale. La plateforme numérique SAS, qui s’inscrit dans le cadre du programme SAS, s’appuie sur un agrégateur de disponibilités des professionnels de santé issues de leurs outils sans s’y substituer et a pour enjeu de fluidifier le parcours de prise de RDV pour les régulateurs.

Une première interface, nommée « appel contextuel », permet le lancement d’une recherche d’offre de soins depuis le logiciel de régulation médicale (LRM) dans la plateforme numérique SAS. Cette fonctionnalité, mise en place avec le flux **INT_L01**, cf. [spécifications détaillées](https://industriels.esante.gouv.fr/sites/default/files/media/document/SAS_SPEC_INT_L01_Recherche-contextualisee_20230504_V1.3.pdf), recouvre la syntaxe de l’appel contextuel et la définition des données à transmettre du LRM à la plateforme numérique SAS.

Après avoir effectué une recherche d’offre de soins dans la plateforme numérique SAS, le régulateur sélectionne un créneau de disponibilité et est redirigé vers la plateforme de prise de RDV éditeur sans avoir à se réauthentifier, si ce créneau remonte d’une solution éditeur. Dans la solution éditeur, le régulateur va pouvoir finaliser la prise de RDV pour le compte du patient.

Le régulateur peut également prendre un RDV sur les disponibilités renseignées manuellement dans la plateforme numérique SAS par les effecteurs de soins au sein de l’agenda SAS ou effectuer une recherche d’offre de soins complémentaires incluant la possibilité de contacter les professionnels de santé acceptant de prendre en charge des patients « en sus de leurs disponibilités » et la possibilité de solliciter une communauté de professionnels de santé pour la prise en charge du patient via une solution éditeur interfacée offrant un service de type « Place de marché ».

Une fois la prise de RDV réalisée par le régulateur, les données associées au RDV pris pour le compte du patient sont remontées et enregistrées dans la plateforme numérique SAS.

A ce jour, les API ont pour vocation de répondre aux cas d'usage suivants :

* Service exposé par une solution de prise de rendez-vous en ligne consommé par la plateforme SAS 
* Recherche de créneaux
* Gestion des comptes régulateurs
 
* Service exposé par la plateforme SAS consommé par une solution de prise de rendez-vous en ligne 
* Création de rendez-vous
* Mise à jour de rendez-vous


  Les rendez-vous ainsi centralisés dans la plateforme sont également transmis aux logiciels de régulation médicale (LRM)
 

Pour les cas d'usage couverts par ces API :

* Le système consommateur doit disposer des points d'accès et des moyens d'authentification (authentification mTLS avec des certificats IGC-Santé).

### Agrégateur - Recherche de créneaux

#### Description du cas d'usage

##### PS à titre individuel - CPTS

L'objectif de cette interface est de permettre l'agrégation des créneaux de disponibilités des solutions logicielles d'agenda avec prise de RDV dans la plateforme numérique SAS :

* Flux **INT_R01** : solution d'agenda pour les **PS à titre individuel**
* Flux **INT_R04** : solution d'agenda pour les **PS appartenant à une ou plusieurs CPTS**

Le schéma de présentation générale ci-dessous illustre ce cas d'usage :

* **Présentation recherche de créneaux PS indiv. - CPTS**: ![](recherche_creneaux_1.png)

Les créneaux de disponibilités sont renseignés par les professionnels effecteurs de soins ou délégataires dans leur solution logicielle d'agenda. Le flux décrit ci-dessous permet de récupérer et d'afficher dans la plateforme numérique SAS les créneaux selon les modalités définies lors des Groupes de Travail en bilatérales avec l'ANS. Lors d'une recherche d'offre de soins sur la plateforme numérique SAS, le moteur de recherche va s'appuyer sur les référentiels nationaux pour identifier l'offre correspondant aux critères de recherche. Une **liste de 1 à 25 RPPS/ADELI** est envoyée aux solutions logicielles éditeurs pour identifier les créneaux de disponibilités des professionnels de santé (PS) correspondants. Les types de créneaux remontés dans la plateforme sont :

* Les créneaux visibles du grand public hors ceux réservés pour la patientèle
* Les créneaux visibles des professionnels de santé hors ceux de structures
* Les créneaux dédiés au SAS, le cas échéant
* Les créneaux visibles des structures de type CPTS

##### SOS Médecins

L’objectif de cette interface est de permettre l’agrégation des créneaux de disponibilités dans la plateforme numérique SAS des professionnels de santé exerçants au sein d’une association SOS Médecins. Ces créneaux sont renseignés dans un logiciel de gestion d’agenda avec prise de rendez-vous.

Le schéma de présentation générale ci-dessous illustre ce cas d’usage :

* **Présentation recherche de créneaux SOS Médecins**: ![](recherche_creneaux_2.png)

Les créneaux de disponibilités des Lieux Fixes de Consultation (LFC), lieux de consultation SOS Médecins, sont renseignés par les associations dans les solutions logicielles d’agendas. Le flux décrit ci-dessous permet de récupérer et d’afficher dans la plateforme numérique SAS les créneaux selon les modalités définies lors des Groupes de Travail en bilatérales avec l’ANS. Lors d’une recherche d’offre de soins sur la plateforme numérique SAS, le moteur de recherche va s’appuyer sur les référentiels nationaux enrichis pour identifier l’offre de soins correspondant aux critères de recherche. Une **liste de 1 à 10 SIRET**, identifiant national de structure (IDNST) d’une association SOS Médecins, est envoyée aux solutions logicielles éditeurs pour identifier les créneaux de disponibilités des Lieux Fixes de Consultation (LFC) correspondants. Les types de créneaux remontés dans la plateforme sont :

* Les créneaux visibles du grand public
* Les créneaux dédiés au SAS, le cas échéant

##### Format commun des échanges

L'agrégateur de créneaux fait intervenir de nombreux acteurs, pour la plupart externes au SAS. Il est donc nécessaire de s'assurer d'une technologie commune aux différentes plateformes. Les échanges reposent sur des **webservices se basant sur l'API REST du standard HL7 FHIR (R4)**.

Le schéma ci-dessous illustre les échanges à mettre en oeuvre entre la plateforme numérique SAS, et les différentes solutions interfacées :


#### Structure de la réponse

##### PS à titre individuel - CPTS

La structure de réponse attendue inclut l’ensemble des créneaux de disponibilités correspondant à la requête réalisée par la plateforme numérique SAS. 1 à n créneaux de consultation (Slot) peuvent être rattachés à 1 agenda (Schedule) qui représente 1 lieu de consultation (PractitionerRole), lui-même rattaché à 1 PS (Practitioner). Si des créneaux de consultation sont proposés pour plusieurs lieux de consultation, on aura autant d’agendas (Schedule) que de lieux de consultation (PractitionerRole).

Dans le cas où un créneau CPTS est transmis, la transmission de l’information sur le type de créneau « CPTS » est attendu ainsi que les données de la structure CPTS associée. Au niveau de la structure de réponse, 1 à n créneaux de consultation CPTS (Slot) peuvent être rattachés à 1 ou n prestations de soins (FrHealthcareService) qui sont chacun rattachées à 1 structure CPTS (FrOrganization). Pour le reste de la structure de réponse, celle -ci reste identique à ce qui a été présenté précédemment.

Le schéma ci-dessous présente une synthèse de la structure attendue :


##### SOS Médecins

La structure de réponse attendue inclut l’ensemble des créneaux de consultation disponibles correspondant à la requête réalisée par la plateforme numérique SAS. 1 à n créneaux de consultation (Slot) peuvent être rattachés à 1 agenda (Schedule) qui représente 1 lieu fixe de consultation (Location), lui-même rattaché à 1 association SOS Médecins (Organization). Si des créneaux de consultation sont proposés pour plusieurs LFC, on aura autant d’agendas (Schedule) que de LFC (Location).

Le schéma ci-dessous présente une synthèse de la structure attendue :


### Gestion des comptes régulateurs

L’objectif de cette interface, **flux INT_R02**, est de permettre la gestion automatisée des comptes régulateurs SAS qui auront besoin d’accéder aux solutions logicielles de prise de RDV dans le cadre de leurs fonctions. Cela prend en compte la création, la modification ou la suppression des comptes identifiés.

Pour la mise en place de ce flux, il est nécessaire de s’assurer d’une technologie commune aux différentes plateformes. Les échanges reposent sur des webservices se basant sur l’API REST du standard HL7 FHIR, et respectant les spécifications des flux 1a et 1b du volet d’agendas partagés du Cadre d’Interopérabilité des Systèmes d’Information de Santé (CI-SIS).

Lorsqu'un compte régulateur est créé dans la plateforme SAS, celle-ci transmet une requête de création de compte dans la solution logicielle éditeur.

Le schéma ci-dessous illustre l'échange à mettre en oeuvre :


La modification de compte peut porter sur chacun des éléments de la ressource transmise (nom, prénom, mail, ID national,habilitation).

Le schéma ci-dessous illustre l'échange à mettre en oeuvre :


Afin de limiter le nombre d’appels émis vers les solutions logicielles éditeurs, et éviter d’avoir à gérer des créations ou mises à jour massives de comptes (batch d’initialisation, reprise, etc.), les mécaniques suivantes ont été mises en œuvre pour le déclenchement des requêtes :

* Pour la création ou modification de compte, le déclenchement de la requête est lié à la connexion de l’utilisateur à la plateforme numérique SAS. Lors de la connexion du régulateur, un contrôle est effectué afin d’identifier si des actions sont à mener dans les solutions logicielles éditeurs. Dans le cas où des solutions sont identifiées, les requêtes correspondantes sont émises et l’état du compte est mis à jour dans la plateforme numérique SAS.
* Pour la suppression ou retrait d’habilitation uniquement, le déclenchement de la requête est émis instantanément. Le schéma ci-dessous illustre les éléments décrits ci-dessus :

| |
| :--- |
| ![](mecanisme_transmission_regulateurs.png) |

**Autres règles de gestion fonctionnelles à prendre en compte par les éditeurs :**

* A la création du compte, ne pas avoir d’étape « vérification du mail » ni de mail de confirmation de création de compte
* L’ANS et l’éditeur conviendront du fonctionnement attendu pour la génération d’un mot de passe suite à la création du compte. L’attendu est de générer un mot de passe de manière automatisée (réinitialisable via la fonctionnalité « mot de passe oublié »)
* La solution logicielle éditeur devra proposer un niveau d’habilitation dédié aux régulateurs et répondant aux besoins de la plateforme numérique SAS. L’utilisateur ne doit pouvoir en disposer que lorsqu’il se connecte via la plateforme numérique SAS (présence du paramètre origin=sas lors de la redirection). Si l’utilisateur se connecte par un autre biais, les fonctionnalités associées à cette habilitation ne doivent pas être disponibles
* Lors de la première connexion, à la suite de la création du compte, le régulateur devra souscrire et valider individuellement les conditions contractuelles de l’éditeur préalablement transmises (CGU)
* Il est attendu pour les éditeurs ayant implémenté le flux INT_R01 d’agrégation des créneaux de disponibilités, de réutiliser le endpoint et la sécurisation mTLS associée pour le flux INT_R02 de gestion des comptes régulateurs
* Certains régulateurs n’ayant pas encore d’identifiant national à date, il est attendu que l’éditeur soit en mesure de gérer les comptes soit sur la base de l’identifiant national ou de l’identifiant technique SAS selon ce qui est transmis par la plateforme numérique SAS

### Gestion des informations de rendez-vous

L'objectif de cette interface, **flux INT_R03**, est de permettre la transmission des données liées à l'usage de la fonctionnalité de prise de RDV par les régulateurs provenant de la plateforme numérique SAS, dans les solutions logicielles d'agenda. Le schéma de présentation générale ci-dessous illustre le cas d'usage :

* **Présentation gestion de rendez-vous**: ![](creation_rendez_vous_1.png)

Après avoir sélectionné un créneau depuis la plateforme numérique SAS et avoir été redirigé vers la plateforme de prise de RDV éditeur, le régulateur prend directement RDV pour le patient dans la solution éditeur. Dès que le RDV est pris, les informations associées sont transmises à la plateforme numérique SAS via le flux INT_R03 mis en place. Lors de chaque mise à jour du RDV (annulation, modification, honoré, non honoré), l'information est transmise par le biais de ce flux à la plateforme numérique SAS. Ces données sont utilisées pour suivre l'activité réelle engendrée par le SAS, permettre l'analyse du dispositif de l'avenant 9 par la CNAM et assurer la traçabilité des RDV patients pour le suivi dans le LRM à terme. Pour la mise en place de ce flux, il est nécessaire de s'assurer d'une technologie commune aux différentes plateformes. Les échanges reposent sur des webservices se basant sur l'API REST du standard HL7 FHIR, et respectant les spécifications des flux 6a et 6b du volet Gestion d'agendas partagés du Cadre d'Interopérabilité des Systèmes d'Information de Santé (CI-SIS).

#### Création de rendez-vous

##### Description du cas d'usage

Lorsqu'un régulateur prend RDV pour un patient au sein de la solution logicielle éditeur, celle-ci transmet une requête de création de RDV. Le schéma ci-dessous illustre l'échange à mettre en oeuvre :


#### Mise à jour de rendez-vous

##### Description du cas d'usage

La mise à jour des données du RDV peut porter sur chacun des éléments de la ressource transmise (dates du créneau, PS effecteurs des soins, statut du RDV, etc.). Le schéma ci-dessous illustre l'échange à mettre en oeuvre :


### Transmission des informations de RDV aux LRM

#### Description du cas d'usage

Dans le cadre de **l’alimentation du dossier de régulation médicale (DRM)** avec **les informations du RDV pris** pour le compte du patient **dans les solutions logicielles éditeurs** ou **dans la plateforme numérique SAS (via l’agenda SAS ou en sus des disponibilités)**, cette section s’intéressera à la mise en place du parcours de la donnée jusqu’à l’association avec le DRM associé.

L’objectif de cette interface, **flux INT_L02**, est de pouvoir alimenter de manière automatisée le LRM avec les informations de RDV pris pour le compte du patient dans les solutions logicielles éditeurs (LGA) ou dans la plateforme numérique du SAS. À la suite de la prise de RDV réalisée par la régulation pour le compte du patient, les informations de RDV sont centralisées au niveau de la plateforme nationale. Les travaux souhaités visent à poursuivre le parcours de la donnée pour rattachement de ces informations avec le dossier d’orientation correspondant (DRM), selon le schéma suivant :

* **Redescente des informations de RDV vers les LRM**: ![](redescente_rdv_lrm.png)

#### Cinématique des échanges

Les échanges entre la plateforme SAS et les solutions de LRM se feront au travers du [Hub Santé](https://hub.esante.gouv.fr/), selon le schéma et la cinématique suivante

* **Schéma de représentation globale du parcours**: ![](SchemaGlobalRedescenteLRM.png)


Nous nous intéresserons dans la suite de la page et dans [la partie technique](./specifications_techniques-transmission-info-RDV-LRM.md) au séquencement et format des échanges entre la plateforme numérique SAS, le Hub et la solution éditeur LRM.

#### Attendu et rôles des parties

##### Role de la plateforme numérique SAS

**La plateforme numérique SAS consolide et enregistre les données associées aux RDVs pris** par les régulateurs et réalise les actions suivantes :

* La plateforme transmet les informations d’orientations de manière instantanée au format spécifié et avec la liste des données métier disponibles
* La plateforme cible le SAS concerné pour transmission des orientations au LRM associé
* Les messages transmis incluent la création d’un RDV et les mises à jours potentielles

##### Rôle du Hubsanté

Le Hub assure la couche de transport sécurisée et la transmission des données de la plateforme numérique SAS vers la solution de LRM :

* Le Hub transmet au SAMU ciblé en fonction du message
* Le Hub suit l'acquittement du message et les erreurs transmises par la solution LRM
* Le Hub assure la transmission de l’acquittement des messages ou des erreurs à la plateforme numérique SAS

##### Rôle du logiciel de régulation médicale

* L’éditeur LRM intègre les données de l’orientation dans sa solution pour association avec le DRM
* L’éditeur LRM met en place les actions attendues pour permettre au régulateur de rattacher les données de l’orientation avec le DRM souhaité sans ressaisie suite à une décision SAS
* L’éditeur LRM gère l’identifiant de RDV transmis pour intégrer automatiquement les potentiels messages de mise à jour de l’orientation post-rattachement

#### Données à échanger

Lorsqu’un RDV est pris par le régulateur (depuis l’agenda SAS, une solution éditeur, en surnuméraire ou via place de marché), les données de l’orientation sont consolidées par la plateforme numérique SAS et **transmises instantanément à la solution de LRM. Les données fonctionnelles transmises sont les suivantes** :

* La date et l’horaire du RDV
* L’identifiant national (RPPS), le nom et le prénom de l’effecteur de soins
* La spécialité de l’effecteur de soins
* La profession de l’effecteur de soins
* Le statut du rendez-vous
* La catégorie d’orientation
* La date et l’horaire de la prise de RDV
* Le nom et l’identifiant national de la structure associée au RDV
* Le régulateur ayant pris le RDV : Identifiant, nom, prénom et adresse e-mail

Le message transmis (fichier json) contiendra les champs correspondants dont certains seront systématiquement remplis et d'autres optionnels.

#### Rattachement au DRM dans la solution LRM

Les orientations transmises automatiquement au LRM sont affichées au niveau du LRM pour que le régulateur soit en mesure de réaliser le **rattachement avec le bon dossier d’orientation au sein du DRM** correspondant, permettant ainsi d’**alimenter les données du RDV pris pour le compte du patient sans ressaisie**.

D’un point de vue implémentation, l’action de **rapprochement entre l’orientation et le DRM par le régulateur** pourra se traduire à titre d’exemple par la mise en place d’un tableau de bord ou d’un espace pour la gestion des RDV pris au sein du LRM en s’appuyant sur la donnée métier disponible ou par l’affichage d’une liste déroulante des orientations non associées depuis le DRM ou tout autre implémentation que l’éditeur jugera pertinente au sein de sa solution. **L’ANS et l’éditeur conviendront, lors de l’atelier de cadrage**, du moyen d’association défini dans la solution éditeur pour que le régulateur puisse alimenter simplement le DRM avec les données de l’orientation réalisée. Ceci, pour notamment faciliter l’accompagnement au déploiement et de formation des utilisateurs.

