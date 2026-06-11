# Transmission des informations de rendez-vous aux LRM - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* **Transmission des informations de rendez-vous aux LRM**

## Transmission des informations de rendez-vous aux LRM

Les échanges avec les éditeurs de LRM se font au travers d'une liaison avec le [Hub Santé](https://hub.esante.gouv.fr/). La plateforme numérique du SAS, ainsi que les éditeurs de LRM sont raccordés au Hub.

Le schéma ci-dessous illustre l'échange de données entre la PTF SAS et les éditeurs de LRM


Le protocole utilisé pour la connexion des applications (PTF SAS et éditeurs de LRM) avec le Hub est le [protocole AMQP](https://fr.wikipedia.org/wiki/Advanced_Message_Queuing_Protocol), en version 0-9-1.

Les messages seront transmis sous la forme d'un fichier json contenant les différentes données permettant aux LRM de traiter le message.

Les messages sont transmis avec un entête permettant au Hub de router le message vers le bon SAMU et la solution LRM associée au SAS de destination. Les règles de nommage et de routage associées ainsi que l’enveloppe EDXL-DE permettant de porter ces informations d’adressage dans les messages sont décrites ci-après.

Le mode de communication est basé sur un mode d'échange point à point (PTP) via des files de messages.

Chaque client (Plateforme numérique SAS et les solutions de LRM) dispose de 3 files d’écoute selon la typologie des messages reçus :

* « message » pour les échanges fonctionnels
* « ack » pour les acquittements de réception finale
* « info » pour les messages généraux d’informations, alertes et erreurs

La structuration du nom des files est {𝑖𝑑𝑒𝑛𝑡𝑖𝑓𝑖𝑎𝑛𝑡𝐶𝑙𝑖𝑒𝑛𝑡}.{𝑡𝑦𝑝𝑜𝑙𝑜𝑔𝑖𝑒} donnant, par exemple, **fr.health.samu001.message**

En l'occurrence, les LRM écouteront sur leur file « message » et la plateforme SAS écoutera sur les files "ack" et "info".

Le schéma ci-dessous détaille cette cinématique d'échange entre les différents acteurs


### Structure et format des messages transitant via le Hub Santé

#### Enveloppe EDXL-DE

Tous les messages transitant par l’intermédiaire du Hub Santé contiendront un entête de type "EDXL-DE" (cf. [spécifications techniques (DST) du Hub Santé](https://hub.esante.gouv.fr/resources/Accompagnement/tech/23.09%20DST%20v1.2%20-%20Hub%20Sante%20&%20connecteurs.pdf) §3.4 et 3.4.3) dans lequel sera encapsulé le détail du message.

Le tableau ci-dessous précise les balises de l’enveloppe EDXL-DE qui doivent être envoyées et qui sont nécessaires au routage des messages.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **Entête EDXL-DE** | distributionID | string | Identifiant unique du message attribué par l’expéditeur | Format`<senderId>_<internalId>`où`<internalId>`est un identifiant garanti unique |
| **Entête EDXL-DE** | senderID | string | Identifiant de l'émetteur | `fr.health.ptfsas`, fr.health.samuXXX |
| **Entête EDXL-DE** | dateTimeSent | Date time | Date et heure d'envoi du message | Ex : 2025-08-24T14:15:22+02:00 |
| **Entête EDXL-DE** | dateTimeExpires | Date time | Date et heure d'expiration du message : les données ne doivent pas être délivrées au-delà de cette date | Ex : 2025-08-24T14:19:22+02:00 |
| **Entête EDXL-DE** | distributionStatus | string | Statut du message | Valeur fixe :`Actual` |
| **Entête EDXL-DE** | distributionKind | string | Type du message | `Report`,`Ack`,`Error` |
| **Entête EDXL-DE** | descriptor.language | string | Langue du message échangé | Valeur fixe :`fr-FR` |
| **Entête EDXL-DE** | descriptor.explicitAddress.explicitAddressScheme | string | Identifiant du SI pilotant le Hub | Valeur fixe :`Hubex` |
| **Entête EDXL-DE** | descriptor.explicitAddress.explicitAddressValue | string | Identifiant du destinataire | `fr.health.ptfsas`, fr.health.samuXXX |
| **Contenu** | content.contentObject.JsonContent.embeddedJsonContent | json | Contenu du message json encapsulé dans l'entête | Fichier json contenant les données transmises |

#### Entête RC-DE

Le contenu des messages transmis pourra également être encapsulé dans un entête RC-DE au sein de l’enveloppe EDXL-DE. L'entête RC-DE contient un nombre de champs communs à l'entête EDXL-DE, ce qui permet de rendre le message autoportant sans l'entête EDXL-DE selon le modèle et les balises précisées dans le tableau ci-dessous (cf spécifications du Hub Santé §3.4.5).

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **Entête RC-DE** | messageId | string | Identifiant du message interne. Identique au champ`distributionID`de l'enveloppe EDXL-DE | Égal à`distributionId`du message initial dans le cas d'un acquittement |
| **Entête RC-DE** | sender.name | string | Identifiant de l'émetteur | `fr.health.ptfsas`, fr.health.samuXXX |
| **Entête RC-DE** | sender.URI | string | URL de l'émetteur | `hubex:fr.health.ptfsas`, hubex:fr.health.samuXXX, |
| **Entête RC-DE** | sentAt | Date time | Date et heure d'envoi du message | Ex : 2025-08-24T14:15:22+02:00 |
| **Entête RC-DE** | status | string | Statut du message | Valeur fixe :`Actual` |
| **Entête RC-DE** | kind | string | Type du message | `Report`,`Ack` |
| **Entête RC-DE** | recipient.name | string | Identifiant du SI pilotant le Hub | `hubex:fr.health.ptfsas`, hubex:fr.health.samuXXX |
| **Entête RC-DE** | recipient.URI | string | Identifiant du destinataire | `fr.health.ptfsas`, fr.health.samuXXX |

#### Message de référence RC-REF

Le message de référence permet de faire référence à un message précédemment partagé (spécifications du Hub Santé §3.4.6). Il est utilisé en cas d'acquittement final, cf. ci-dessous. Sa structure est la même que celle d'un message RC-DE, avec l'ajout d'un champ supplémentaire `reference` qui reprend le `distributionId` du message acquitté.

### Détail des échanges entre la plateforme SAS et le Hub Santé

#### Gestion de l'envoi d'un message PTF SAS -> LRM via Hub

Le message contenant les informations de RDV pris par le régulateur pour le compte du patient est envoyé instantanément par la plateforme numérique SAS au HubSanté. Le message est transmis avec un entête de type "EDXL-DE" (cf [Enveloppe EDXL-DE](./specifications_techniques-transmission-info-RDV-LRM.md#enveloppe-edxl-de)) encapsulant un entête de type RC-DE (cf [Enveloppe RC-DE](./specifications_techniques-transmission-info-RDV-LRM.md#entête-rc-de)) et les contenus des messages au format Json (cf [Données transmises au LRM](./specifications_techniques-transmission-info-RDV-LRM.md#données-transmises-au-lrm)).

Il s'agit d'un message où les champs `distribution.kind` (entête EDXL-DE) et `kind` (entête RC-DE) sont valorisés à `Report`.

#### Acquittement technique Hub -> PTF SAS

Un acquittement technique sera transmis du Hub vers la plateforme SAS afin d'informer de la bonne prise en charge du message et de l'inscription dans sa file d'envoi (file « message » du LRM). Cette fonctionnalité est intégrée au protocole AMQ sous la forme de **Consumer Acknowledgement** (cf. spécifications du Hub Santé §3.3.1).

#### Message d'acquittement final et gestion des erreurs

Les échanges entre le Hub Santé et la plateforme numérique SAS incluent également les acquittements de réception finale et la gestion des messages d’erreurs transmis par les éditeurs de LRM. Une fois le message intégré dans le système du client destinataire (Editeur LRM), ce dernier peut en informer la plateforme numérique SAS (transitant par le Hub) en lui envoyant un acquittement de réception finale sur un deuxième type de file dédié fr.health.ptfsas.𝑎𝑐k permettant de remonter les accusés de réception finale. Le cheminement est similaire au message envoyé mais pris en sens inverse.

Un troisième type de file, fr.health.ptfsas.𝑖𝑛𝑓𝑜, est mis en place pour remonter des informations et de potentielles erreurs aux émetteurs et destinataires des messages. A noter qu'il existe deux types d'erreur :

* les messages "techniques" directement générés par le Hub et traduisant une impossibilité de remettre le message au destinataire
* les messages d'erreurs "fonctionnels" envoyés depuis l’éditeur de LRM (transitant par le Hub) traduisant l'impossibilité de traiter correctement le message reçu (cf [erreurs LRM](./specifications_techniques-transmission-info-RDV-LRM.md#message-derreur-lrm---hub))

Il s'agit de messages où le champ `distribution.kind` est valorisé à `Error` (entête EDXL-DE, les messages d'erreur ne comportent pas d'entête RC-DE)

L'erreur sera présente dans le contenu du message json qui respecte le modèle suivant, cf. spécifications du Hub Santé, §3.4.7 :

| | | |
| :--- | :--- | :--- |
| errorCode | Code de l'erreur ayant conduit au rejet du message | Cf. tableau des erreurs ci-après |
| errorCause | Cause de l'erreur | La cause de l’erreur. Le`distributionID`de l’enveloppe EDXL-DE y est précisé si le message a pu être désérialisé, ainsi que des éléments plus précis suivant l’erreur relevée. |
| sourceMessage | Contenu du message rejeté | Contenu du message initial avec son entête |

A titre d'exemple, les codes d'erreur suivants pourront être envoyés du Hub vers la plateforme SAS :

| | | |
| :--- | :--- | :--- |
| 102 | UNRECOGNIZED_MESSAGE_FORMAT | Le message n’a pas pu être désérialisé. |
| 300 | INVALID_MESSAGE | Le message n’est pas conforme aux spécifications techniques (JSON Schema) |
| 400 | EXPIRED_MESSAGE_BEFORE_ROUTING | Le message n’a pas été reçu par son destinataire, il a expiré sur le Hub avant de lui être délivré. |
| 500 | DEAD_LETTERED_QUEUE | Le message n’a pas été reçu par son destinataire, il a expiré avant qu’il ne le dépile. |

### Echanges entre l'éditeur LRM et le Hub Santé

#### Message d'acquittement final LRM -> PTF

Cet acquittement correspond à la validation auprès de l’émetteur (plateforme numérique SAS) de la bonne réception du message par le destinataire (Editeur LRM).

Le format des acquittements de réception finale est contenu dans une enveloppe de type "EDXL-DE" (cf [Enveloppe EDXL-DE](./specifications_techniques-transmission-info-RDV-LRM.md#enveloppe-edxl-de)) et un message de type "RC-REF" (cf [Message RC-REF](./specifications_techniques-transmission-info-RDV-LRM.md#message-de-référence-rc-ref))

En résumé, le message doit :

* spécifier EDXL-DE.distributionKind à `Ack`
* spécifier RC-DE.kind à `Ack`
* faire référence au message à acquitter (par sa `distributionID`)

#### Message d'erreur LRM -> Hub

En cas d'erreur, un message est posté sur la file « info » de la plateforme SAS (cf. spécifications du Hub Santé §3.3.4). Le message est transmis avec un entête de type "EDXL-DE" (cf [Enveloppe EDXL-DE](./specifications_techniques-transmission-info-RDV-LRM.md#enveloppe-edxl-de)) où `distribution.kind` est valorisé à `Error`, encapsulant le contenu du message json qui respecte le modèle suivant (cf. spécifications du Hub Santé §3.4.7) :

| | | |
| :--- | :--- | :--- |
| errorCode | Code de l'erreur ayant conduit au rejet du message | Cf. ci-après |
| errorCause | Cause de l'erreur | La cause de l’erreur. Le`distributionID`de l’enveloppe EDXL y est précisé si le message a pu être désérialisé, ainsi que des éléments plus précis suivant l’erreur relevée. |
| sourceMessage | Contenu du message rejeté | Contenu du message initial avec son entête |

Le LRM pourra envoyer des messages de type :

* 409 (CONFLICT) - L'identifiant du RDV à créér existe déjà

### Données transmises au LRM

Lorsqu’un régulateur prend RDV pour un patient via la plateforme numérique SAS, celle-ci transmet un message de création de RDV qui suivra les modalités suivantes :

* **Protocole** : AMQP 0-9-1
 
* **En-tête** : EDXL-DE, RC-DE 
* **Sender** : fr.health.ptfsas
 
* **Format du message contenu** : JSON 

Le message json contenant les données et encapsulé dans l'entête EDXL-DE (et dans l'entête RC-DE) respecte le format suivant :

* **ID**: 1
  * **Objet**: 
  * **Balise**: appointmentId
  * **Description**: Identifiant technique unique du RDV
  * **Exemple**: 1efc111e-ce11-1d11-a111-11c1f11c111e12348
  * **Cardinalité**: 1..1
  * **Type**: string
* **ID**: 2
  * **Objet**: 
  * **Balise**: method
  * **Description**: Indique un message de création ou de modification du rendez-vous
  * **Exemple**: createAppointment
  * **Cardinalité**: 1..1
  * **Type**: string
* **ID**: 3
  * **Objet**: 
  * **Balise**: created
  * **Description**: Date et heure de la prise de RDV
  * **Exemple**: 2025-06-17T10:15:56+01:00
  * **Cardinalité**: 1..1
  * **Type**: datetime
* **ID**: 4
  * **Objet**: 
  * **Balise**: start
  * **Description**: Date et heure de début du rendez-vous
  * **Exemple**: 2025-06-17T14:00:00+01:00
  * **Cardinalité**: 1..1
  * **Type**: datetime
* **ID**: 5
  * **Objet**: 
  * **Balise**: end
  * **Description**: Date et heure de fin du rendez-vous
  * **Exemple**: 2025-06-17T14:20:00+01:00
  * **Cardinalité**: 0..1
  * **Type**: datetime
* **ID**: 6
  * **Objet**: 
  * **Balise**: status
  * **Description**: Statut du rendez-vous
  * **Exemple**: booked
  * **Cardinalité**: 1..1
  * **Type**: string
* **ID**: 7
  * **Objet**: 
  * **Balise**: orientationCategory
  * **Description**: Indique la catégorie de l’orientation SAS identifiée
  * **Exemple**: SOS
  * **Cardinalité**: 0..1
  * **Type**: string
* **ID**: 8
  * **Objet**: practitioner
  * **Balise**: Professionnel de santé
  * **Description**: Représente le professionnel de santé associé au rendez-vous
  * **Exemple**: 
  * **Cardinalité**: 0..1
  * **Type**: practitioner
* **ID**: 9
  * **Objet**: practitioner
  * **Balise**: rppsId
  * **Description**: Identifiant national (RPPS avec préfixe) du PS effecteur de soins
  * **Exemple**: 810002909371
  * **Cardinalité**: 1..1
  * **Type**: string
* **ID**: 10
  * **Objet**: practitioner
  * **Balise**: lastName
  * **Description**: Nom du professionnel de santé
  * **Exemple**: Dupont
  * **Cardinalité**: 1..1
  * **Type**: string
* **ID**: 11
  * **Objet**: practitioner
  * **Balise**: firstName
  * **Description**: Prénom du professionnel de santé
  * **Exemple**: Jean
  * **Cardinalité**: 1..1
  * **Type**: string
* **ID**: 12
  * **Objet**: practitioner
  * **Balise**: specialityCode
  * **Description**: Code de la spécialité du professionnel de santé
  * **Exemple**: SM54 (pour médecine générale)
  * **Cardinalité**: 0..1
  * **Type**: string
* **ID**: 13
  * **Objet**: practitioner
  * **Balise**: specialityUrl
  * **Description**: Url de la terminologie utilisée pour la spécialité
  * **Exemple**: https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale
  * **Cardinalité**: 0..1
  * **Type**: string
* **ID**: 14
  * **Objet**: practitioner
  * **Balise**: professionUrl
  * **Description**: Url de la terminologie utilisée pour la profession
  * **Exemple**: https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante
  * **Cardinalité**: 0..1
  * **Type**: string
* **ID**: 15
  * **Objet**: practitioner
  * **Balise**: professionCode
  * **Description**: Code de la profession du professionnel de santé
  * **Exemple**: 10 (pour médecin)
  * **Cardinalité**: 0..1
  * **Type**: string
* **ID**: 16
  * **Objet**: organization
  * **Balise**: 
  * **Description**: Représente la structure du PS ou la structure associée au rendez-vous si le PS n'est pas connu
  * **Exemple**: 
  * **Cardinalité**: 0..1
  * **Type**: organization
* **ID**: 17
  * **Objet**: organization
  * **Balise**: organizationId
  * **Description**: Identifiant national de la structure (avec préfixe)
  * **Exemple**: 334173748400020
  * **Cardinalité**: 1..1
  * **Type**: string
* **ID**: 18
  * **Objet**: organization
  * **Balise**: name
  * **Description**: Nom de la structure
  * **Exemple**: SOS Médecins de Rennes
  * **Cardinalité**: 1..1
  * **Type**: string
* **ID**: 19
  * **Objet**: regulator
  * **Balise**: 
  * **Description**: Représente le régulateur ayant pris le RDV
  * **Exemple**: 
  * **Cardinalité**: 1..1
  * **Type**: regulator
* **ID**: 20
  * **Objet**: regulator
  * **Balise**: regulatorId
  * **Description**: Identifiant associé au compte SAS du régulateur ayant pris le RDV
  * **Exemple**: 3620100057/70326SR
  * **Cardinalité**: 0..1
  * **Type**: string
* **ID**: 21
  * **Objet**: regulator
  * **Balise**: regulatorName
  * **Description**: Nom du régulateur ayant pris le RDV
  * **Exemple**: Ricart
  * **Cardinalité**: 1..1
  * **Type**: string
* **ID**: 22
  * **Objet**: regulator
  * **Balise**: regulatorFirstname
  * **Description**: Prénom du régulateur ayant pris le RDV
  * **Exemple**: Pauline
  * **Cardinalité**: 1..1
  * **Type**: string
* **ID**: 23
  * **Objet**: regulator
  * **Balise**: regulatorEmail
  * **Description**: Adresse email associée au compte SAS du régulateur ayant pris le RDV
  * **Exemple**: pauline.ricart@ghsas.fr
  * **Cardinalité**: 1..1
  * **Type**: string

 Cf. exemple ci-dessous de message de création

```
{
  "appointment": {
    "appointmentId": "2d2db05f-e2b0-4169-be8f-891806da2c74",
    "method": "CreateAppointment",
    "created": "2025-06-17T10:15:00+02:00",
    "status": "booked",
    "orientationCategory": "PS",
    "start": "2025-06-17T14:00:00+02:00",
    "end": "2025-06-17T14:20:00+02:00",
    "practitioner": {
      "rppsId": "810005681340",
      "lastName": "MOREL",
      "firstName": "Didier",
      "specialityCode": "SM54",
      "specialityUrl": "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
      "professionUrl": "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
      "professionCode": "10"
    },
    "regulator":{
      "regulatorId": "3620100057/70326SR",
      "regulatorName": "RICART",
      "regulatorFirstname": "Pauline",
      "regulatorEmail": "pauline.ricart@ghsas.fr"
    }
  }
}

```

S'agissant d'une création de message, le champ `method` est valorisé à `CreateAppointment'

### Message de modification de RDV

La mise à jour des données du RDV peut porter sur chacun des éléments décrits avec modifications de données (dates du créneau, statut du RDV, etc.).ou bien ajout d'un objet (`practitioner` ou `organization`) et des attributs associés.

Le message transmis pour la mise à jour du RDV devra suivre les modalités suivantes :

* **Protocole** : AMQP 0-9-1
 
* **En-tête** : EDXL-DE, RC-DE 
* **Sender** : fr.health.ptfsas 
* **Format du message contenu** : JSON 

Le fichier json encapsulé dans l'entête aura le champ `method` valorisé à `UpdateAppointment` et contiendra les données modifiées / ajoutées / supprimées par rapport au message de création (selon le format décrit au paragraphe précédent) afin que les données pour un même identifiant de RDV puissent être mises à jour

**L’identifiant technique SAS du RDV (champ `appointmentId`)** transmis sera stocké par la solution éditeur LRM pour identification du RDV sur lequel porte les mises à jour éventuelles.

**En cas de réception d'un message de mise à jour sur un identifiant inconnu, la solution LRM devra pouvoir gérer le message en tant que création avec les données contenues dans le message à l'instant t.**

Cf. exemple ci-dessous de message de modification

```
{
  "appointment": {
    "appointmentId": "2d2db05f-e2b0-4169-be8f-891806da2c74",
    "method": "UpdateAppointment",
    "created": "2025-06-17T10:15:00+02:00",
    "status": "fulfilled",
    "orientationCategory": "PS",
    "start": "2025-06-17T14:00:00+02:00",
    "end": "2025-06-17T14:20:00+02:00",
    "practitioner": {
      "rppsId": "810005681340",
      "lastName": "MOREL",
      "firstName": "Didier",
      "specialityCode": "SM54",
      "specialityUrl": "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
      "professionUrl": "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
      "professionCode": "10"
    },
    "regulator":{
      "regulatorId": "3620100057/70326SR",
      "regulatorName": "RICART",
      "regulatorFirstname": "Pauline",
      "regulatorEmail": "pauline.ricart@ghsas.fr"
    }
  }
}

```

### Message d'annulation de RDV

Il n’y aura pas de message spécifique pour l’annulation d’un RDV. Une annulation de RDV est modélisée par un message de type « mise à jour du RDV » avec la modification du statut du RDV à « annulé ».

Cf. exemple ci-dessous de message d'annulation.

```
{
  "appointment": {
    "appointmentId": "2d2db05f-e2b0-4169-be8f-891806da2c74",
    "method": "UpdateAppointment",
    "created": "2025-06-17T10:15:00+02:00",
    "status": "cancelled",
    "orientationCategory": "PS",
    "start": "2025-06-17T14:00:00+02:00",
    "end": "2025-06-17T14:20:00+02:00",
    "practitioner": {
      "rppsId": "810005681340",
      "lastName": "MOREL",
      "firstName": "Didier",
      "specialityCode": "SM54",
      "specialityUrl": "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
      "professionUrl": "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
      "professionCode": "10"
    },
    "regulator":{
      "regulatorId": "3620100057/70326SR",
      "regulatorName": "RICART",
      "regulatorFirstname": "Pauline",
      "regulatorEmail": "pauline.ricart@ghsas.fr"
    }
  }
}

```

### Détail des champs transmis et nomenclatures

Cette section détaille les champs à utiliser afin de renseigner les différents éléments codifiés de la requête.

* **identifiant de la PTF SAS** : Utilisé dans les entêtes EDXL-DE et RC-DE. Valeur fixe par environnement. Pour l'environnement de PROD, sera valorisé à `fr.health.ptfsas`. Pour un environnement hors PROD, la valeur sera `fr.health.test.ptfsas`.
* **method** : Indique un message de création ou de mise à jour. Les valeurs suivantes sont attendues : 
* createAppointment
* updateAppointment
 
* **appointmentId** : Un identifiant technique unique par RDV est transmis. Cet ID est défini par la plateforme numérique SAS et peut prendre la forme d’un UUID par exemple. La solution éditeur devra s’appuyer sur cet ID pour la gestion des requêtes de mises à jour.
* **status** : L’utilisation de la nomenclature standard AppointmentStatus (http://hl7.org/fhir/appointmentstatus) est attendue. La plateforme numérique SAS exploite à date les valeurs suivantes : 
* PENDING : RDV en attente de confirmation
* BOOKED : RDV pris et confirmé
* FULFILLED : RDV honoré
* NOSHOW : RDV non honoré
* CANCELLED : RDV annulé
 
* **orientationCategory** : catégorie d'orientation transmise. Prend une valeur parmi la liste suivante : 
* PS
* SOS
* PDM
* CPTS
* CDS
* MSP
 
* **practitioner.rppsId** : RPPS avec préfixe « 8 »
* **practitioner.specialtyCode** : Code issu de la nomenclature des spécialités ordinales du NOS ([https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale/](https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale/))
* **practitioner.professionCode** : Code issu de la nomenclature des professions de santé du NOS ([https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante/](https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante/))
* **organizationId** : Identifiant unique propre à chaque structure de soins. Les champs sont valorisés comme suit : numéro du FINESS avec préfixe « 1 » ou numéro du SIRET avec préfixe « 3 »
* **regulatorId** : Identifiant unique du régulateur ayant pris le RDV. Il s'agira uniquement d'un identifiant national "IDNPS"(identifiant présent sur la carte CPx du régulateur). En effet, certains régulateurs n’ayant pas encore d’identifiant national à date, un identifiant technique de type uuid est créé. Cet identifiant étant connu uniquement de la PTF SAS, il ne sera pas transmis dans le flux. **Exemple d'identifiant national** : `3620100057/70326SR`
* **regulatorEmail** : Il s'agit de l'adresse mail du compte du régulateur telle que déclarée dans la plateforme SAS. Elle correspond également à l'identifiant de connexion à la plateforme.

### Exemples de messages complets avec entêtes et contenu

**Message PTF SAS -> SAMU 33**

```
{
  "distributionID": "fr.health.ptfsas_30c8e00d-68b2-4092-a4f2-a9cb19b416e9",
  "senderID": "fr.health.ptfsas",
  "dateTimeSent": "2025-10-28T17:05:54+01:00",
  "dateTimeExpires": "2072-09-27T08:23:34+02:00",
  "distributionStatus": "Actual",
  "distributionKind": "Report",
  "descriptor": {
    "language": "fr-FR",
    "explicitAddress": {
      "explicitAddressScheme": "hubex",
      "explicitAddressValue": "fr.health.samu330"
    }
  },
  "content": [
    {
      "jsonContent": {
        "embeddedJsonContent": {
          "message": {
            "messageId": "fr.health.ptfsas_30c8e00d-68b2-4092-a4f2-a9cb19b416e9",
            "sender": {
              "name": "fr.health.ptfsas",
              "URI": "hubex:fr.health.ptfsas"
            },
            "sentAt": "2025-10-28T17:05:54+01:00",
            "status": "Actual",
            "kind": "Report",
            "recipient": [
              {
                "name": "fr.health.samu330",
                "URI": "hubex:fr.health.samu330"
              }
            ],
            "appointment": {
              "appointmentId": "2d2db05f-e2b0-4169-be8f-891806da2c74",
              "method": "CreateAppointment",
              "created": "2025-06-17T10:15:00+02:00",
              "status": "booked",
              "orientationCategory": "PS",
              "start": "2025-06-17T14:00:00+02:00",
              "end": "2025-06-17T14:20:00+02:00",
              "practitioner": {
                "rppsId": "810005681340",
                "lastName": "MOREL",
                "firstName": "Didier",
                "specialityCode": "SM54",
                "specialityUrl": "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
                "professionUrl": "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
                "professionCode": "10"
              }
            }
          }
        }
      }
    }
  ]
}

```

Détail du message

```
{
  //entête EDXL-DE
  "distributionID": "fr.health.ptfsas_30c8e00d-68b2-4092-a4f2-a9cb19b416e9",
  "senderID": "fr.health.ptfsas",
  "dateTimeSent": "2025-10-28T17:05:54+01:00",
  "dateTimeExpires": "2072-09-27T08:23:34+02:00",
  "distributionStatus": "Actual",
  "distributionKind": "Report",
  "descriptor": {
    "language": "fr-FR",
    "explicitAddress": {
      "explicitAddressScheme": "hubex",
      "explicitAddressValue": "fr.health.samu330"
    }
  },
  "content": [
    {
      //contenu au format json
      "jsonContent": {
        "embeddedJsonContent": {
          "message": 
          //entête RC-DE
          {
            "messageId": "fr.health.ptfsas_30c8e00d-68b2-4092-a4f2-a9cb19b416e9",
            "sender": {
              "name": "fr.health.ptfsas",
              "URI": "hubex:fr.health.ptfsas"
            },
            "sentAt": "2025-10-28T17:05:54+01:00",
            "status": "Actual",
            "kind": "Report",
            "recipient": [
              {
                "name": "fr.health.samu330",
                "URI": "hubex:fr.health.samu330"
              }
            ],
            //données de RDV
            "appointment": {
              "appointmentId": "2d2db05f-e2b0-4169-be8f-891806da2c74",
              "method": "CreateAppointment",
              "created": "2025-06-17T10:15:00+02:00",
              "status": "booked",
              "orientationCategory": "PS",
              "start": "2025-06-17T14:00:00+02:00",
              "end": "2025-06-17T14:20:00+02:00",
              "practitioner": {
                "rppsId": "810005681340",
                "lastName": "MOREL",
                "firstName": "Didier",
                "specialityCode": "SM54",
                "specialityUrl": "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
                "professionUrl": "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
                "professionCode": "10"
              }
            }
          }
        }
      }
    }
  ]
}

```

**Message acquittement final SAMU 33 -> PTF SAS**

```
{
    "distributionID": "fr.health.samu330_cf21c600-3bd2-49e6-8651-c97dac05d021",
    "senderID": "fr.health.samu330",
    "dateTimeSent": "2025-10-28T17:06:30+01:00",
    "dateTimeExpires": "2072-09-27T08:23:34+02:00",
    "distributionStatus": "Actual",
    "distributionKind": "Ack",
    "descriptor": {
        "language": "fr-FR",
        "explicitAddress": {
            "explicitAddressScheme": "hubex",
            "explicitAddressValue": "fr.health.ptfsas"
        }
    },
    "content": [
        {
            "jsonContent": {
                "embeddedJsonContent": {
                    "message": {
                        "messageId": "fr.health.samu330_cf21c600-3bd2-49e6-8651-c97dac05d021",
                        "sender": {
                            "name": "fr.health.samu330",
                            "URI": "hubex:fr.health.samu330"
                        },
                        "sentAt": "2025-10-28T17:06:30+01:00",
                        "kind": "Ack",
                        "status": "Actual",
                        "recipient": [
                            {
                                "name": "fr.health.ptfsas",
                                "URI": "hubex:fr.health.ptfsas"
                            }
                        ],
                        "reference": {
                            "distributionID": "fr.health.ptfsas_30c8e00d-68b2-4092-a4f2-a9cb19b416e9"
                        }
                    }
                }
            }
        }
    ]
}

```

**Message d'erreur retourné par le Hub suite à un envoi PTF SAS -> SAMU 330**

```
{
    "distributionID": "fr.health.hub_29055e53-46e5-4a70-843c-335e7e058829",
    "senderID": "fr.health.hub",
    "dateTimeSent": "2025-10-29T14:37:15+00:00",
    "dateTimeExpires": "2025-10-30T14:37:15+00:00",
    "distributionStatus": "Actual",
    "distributionKind": "Error",
    "descriptor": {
        "language": "fr-FR",
        "explicitAddress": {
            "explicitAddressScheme": "hubex",
            "explicitAddressValue": "fr.health.test.ptfsas"
        }
    },
    "content": [
        {
            "jsonContent": {
                "embeddedJsonContent": {
                    "message": {
                        "error": {
                            "errorCode": {
                                "statusCode": 300,
                                "statusString": "INVALID_MESSAGE"
                            },
                            "errorCause": "Could not validate message against schema : errors occurred. \nIssues found on the $.content[0].jsonContent.embeddedJsonContent.message content: \n - appointment.orientationCategory: does not have a value in the enumeration [CPTS, MSP, CDS, SOS, PS, PDM]\n",
                            "sourceMessage": {
                                "distributionID": "fr.health.ptfsas_c461338a-97ea-41e5-b9fa-af87840890ff",
                                "distributionKind": "Report",
                                "senderID": "fr.health.ptfsas",
                                "dateTimeSent": "2025-10-29T15:37:15+01:00",
                                "distributionStatus": "Actual",
                                "descriptor": {
                                    "language": "fr-FR",
                                    "explicitAddress": {
                                        "explicitAddressScheme": "hubex",
                                        "explicitAddressValue": "fr.health.samu330"
                                    }
                                },
                                "dateTimeExpires": "2072-09-27T08:23:34+02:00",
                                "content": [
                                    {
                                        "jsonContent": {
                                            "embeddedJsonContent": {
                                                "message": {
                                                    "messageId": "fr.health.ptfsas_c461338a-97ea-41e5-b9fa-af87840890ff",
                                                    "sender": {
                                                        "name": "fr.health.ptfsas",
                                                        "URI": "hubex:fr.health.ptfsas"
                                                    },
                                                    "sentAt": "2025-10-29T15:37:15+01:00",
                                                    "status": "Actual",
                                                    "kind": "Report",
                                                    "recipient": [
                                                        {
                                                            "name": "fr.health.samu330",
                                                            "URI": "hubex:fr.health.samu330"
                                                        }
                                                    ],
                                                    "appointment": {
                                                        "appointmentId": "2d2db05f-e2b0-4169-be8f-891806da2c74",
                                                        "method": "CreateAppointment",
                                                        "created": "2025-06-17T10:15:00+02:00",
                                                        "status": "booked",
                                                        "orientationCategory": "Medecin",
                                                        "start": "2025-06-17T14:00:00+02:00",
                                                        "end": "2025-06-17T14:20:00+02:00",
                                                        "practitioner": {
                                                            "rppsId": "810005681340",
                                                            "lastName": "MOREL",
                                                            "firstName": "Didier",
                                                            "specialityCode": "SM54",
                                                            "specialityUrl": "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
                                                            "professionUrl": "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
                                                            "professionCode": "10"
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                ]
                            },
                            "referencedDistributionID": "fr.health.ptfsas_c461338a-97ea-41e5-b9fa-af87840890ff"
                        }
                    }
                }
            }
        }
    ]
}

```

Dans ce cas, le type d'orientation est incorrect car il ne respecte pas la nomenclature établie.

**Message d'erreur retourné par le LRM suite à un envoi PTF SAS -> SAMU 330**

```
{
    "distributionID": "fr.health.hub_cb0f6f14-6b57-4fb5-a635-97705c8d31e8",
    "senderID": "fr.health.samu330",
    "dateTimeSent": "2025-10-28T16:29:59+00:00",
    "dateTimeExpires": "2025-10-29T16:29:59+00:00",
    "distributionStatus": "Actual",
    "distributionKind": "Error",
    "descriptor": {
        "language": "fr-FR",
        "explicitAddress": {
            "explicitAddressScheme": "hubex",
            "explicitAddressValue": "fr.health.ptfsas"
        }
    },
    "content": [
        {
            "jsonContent": {
                "embeddedJsonContent": {
                    "message": {
                        "error": {
                            "errorCode": {
                                "statusCode": 409,
                                "statusString": "CONFLICT"
                            },
                            "errorCause": "Impossible de créer ce RDV. L'identifiant du RDV à créér '30c8e00d-68b2-4092-a4f2-a9cb19b416e9' existe déjà dans la solution",
                            "sourceMessage": {
                                "distributionID": "fr.health.ptfsas_44fce1e7-461e-4b15-91e2-b4168bed531e",
                                "distributionKind": "Report",
                                "senderID": "fr.health.ptfsas",
                                "dateTimeSent": "2025-10-28T17:29:59+01:00",
                                "distributionStatus": "Actual",
                                "descriptor": {
                                    "language": "fr-FR",
                                    "explicitAddress": {
                                        "explicitAddressScheme": "hubex",
                                        "explicitAddressValue": "fr.health.samu330"
                                    }
                                },
                                "dateTimeExpires": "2072-09-27T08:23:34+02:00",
                                "content": [
                                    {
                                        "jsonContent": {
                                            "embeddedJsonContent": {
                                                "message": {
                                                    "messageId": "fr.health.ptfsas_44fce1e7-461e-4b15-91e2-b4168bed531e",
                                                    "sender": {
                                                        "name": "fr.health.ptfsas",
                                                        "URI": "hubex:fr.health.ptfsas"
                                                    },
                                                    "sentAt": "2025-10-28T17:29:59+01:00",
                                                    "status": "Actual",
                                                    "kind": "Report",
                                                    "recipient": [
                                                        {
                                                            "name": "fr.health.samu330",
                                                            "URI": "hubex:fr.health.samu330"
                                                        }
                                                    ],
                                                    "appointment": {
                                                        "appointmentId": "2d2db05f-e2b0-4169-be8f-891806da2c74",
                                                        "method": "UpdateAppointment",
                                                        "created": "2025-06-17T10:15:00+02:00",
                                                        "status": "booked",
                                                        "orientationCategory": "PS",
                                                        "start": "2025-06-17T14:00:00+02:00",
                                                        "end": "2025-06-17T14:20:00+02:00",
                                                        "practitioner": {
                                                            "rppsId": "810005681340",
                                                            "lastName": "MOREL",
                                                            "firstName": "Didier",
                                                            "specialityCode": "SM54",
                                                            "specialityUrl": "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
                                                            "professionUrl": "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
                                                            "professionCode": "10"
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                ]
                            },
                            "referencedDistributionID": "fr.health.ptfsas_44fce1e7-461e-4b15-91e2-b4168bed531e"
                        }
                    }
                }
            }
        }
    ]
}

```

### Déclencheurs et règles d'intégration attendues

Divers évènements dans la plateforme numérique SAS peuvent déclencher de manière instantanée le flux. À titre d’exemple, une liste non exhaustive de ces évènements est présentée ci-dessous :

* Pour la création d’un message : 
* lors de la prise de RDV ou demande de prise en charge par le régulateur pour le compte du patient dans une solution éditeur
* lors de la prise de RDV par le régulateur pour le compte du patient dans la plateforme numérique SAS
* lors de la prise de RDV par le régulateur pour le compte du patient en surnuméraire
 
* Pour la modification d’un message : 
* lors d’un changement de statut du RDV : confirmé, annulé, honoré et non honoré
* lors d’un changement du PS effecteur de soins (ex. remplacement) ou lorsque le PS n’a pas pu être identifié au préalable (ex. agendas de structure)
* lors d’un changement horaire du créneau
 

 Le paragraphe ci-dessous détaille les différentes **règles de gestions attendues** par les éditeurs à la suite du déclenchement du flux et la transmission d’un message :

* A la réception du message, **la solution éditeur stockera l’identifiant technique SAS du RDV transmis** pour référence et gestion des mises à jour éventuelles
* Il est attendu pour les éditeurs ayant implémenté le flux de **mettre en place une écoute de leurs files de messages instantanément** afin de permettra le rattachement du RDV avec le DRM par le régulateur à la suite de la transmission des informations de RDV
* Lorsque les données du RDV pris pour le compte du patient auront été transmises à la solution LRM, le régulateur OSNP devra pouvoir réaliser le rapprochement entre l’orientation et le DRM. Il est attendu que **l’éditeur mette en place une solution pour que le régulateur puisse faire ce rapprochement au sein de la solution LRM**. Par exemple, un tableau de bord, un espace pour la gestion des RDV pris, un affichage des données métier disponibles pour faciliter l’action (ex. nom du PS, sélection DRM, heure de prise de RDV, heure du RDV, etc.), ou tout autre solution ergonomique que l’éditeur jugera pertinente. L’éditeur partagera à l’ANS la solution qu’il a prévu de mettre en place.
* Les règles d’association de l’orientation avec le DRM et la gestion des requêtes potentielles non associées seront gérées au cas par cas avec l’éditeur.
* Il est attendu de la part de l’éditeur de **conserver un historique des messages reçus** au niveau de l’échange et au niveau du résultat du traitement du message.

