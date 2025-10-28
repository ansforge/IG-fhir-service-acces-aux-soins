# Transmission des informations de rendez-vous aux LRM - Service d'Accès aux Soins v1.1.0

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


### Détail des échanges entre les acteurs

#### Gestion de l'envoi d'un message PTF SAS -> LRM via Hub

Dans le cadre de l’interface mise en place entre les solutions logicielles éditeurs (LRM) et la plateforme numérique SAS, les requêtes seront transmises **instantanément** par la plateforme numérique du SAS au HubSanté pour transmission auprès des solutions éditeurs de LRM lors de la **création ou la mise à jour d’un RDV** et contiendront l’ensemble des données relatives au RDV **au format JSON** dans le contenu du message.

Les champs ci-dessous correspondent à l’en-tête du message qui porte les informations de RDV pris par le régulateur pour le compte du patient. Ce message est envoyé instantanément de la plateforme SAS au HubSanté. L'entête est de type "EDXL-DE" et les messages au format Json, cf. [spécifications techniques (DST) du Hub Santé](https://hub.esante.gouv.fr/resources/Accompagnement/tech/23.09%20DST%20v1.2%20-%20Hub%20Sante%20&%20connecteurs.pdf).

Le tableau ci-dessous précise les balises qui doivent être envoyées et qui sont nécessaires au routage des messages.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **Entête EDXL-DE** | distributionID | string | Identifiant unique du message attribué par l’expéditeur | Format`<senderId>_<internalId>`où`<internalId>`est un identifiant garanti unique |
| **Entête EDXL-DE** | senderID | string | Identifiant de l'émetteur | Valeur fixe par environnement. Ex :`fr.health.ptfsas` |
| **Entête EDXL-DE** | dateTimeSent | Date time | Date et heure d'envoi du message | Ex : 2025-08-24T14:15:22+02:00 |
| **Entête EDXL-DE** | dateTimeExpires | Date time | Date et heure d'expiration du message : les données ne doivent pas être délivrées au-delà de cette date | Ex : 2025-08-24T14:15:22+02:00 |
| **Entête EDXL-DE** | distributionStatus | string | Statut du message | Valeur fixe :`Actual` |
| **Entête EDXL-DE** | distributionKind | string | Type du message | Valeur fixe :`Report` |
| **Entête EDXL-DE** | descriptor.language | string | Langue du message échangé | Valeur fixe :`fr-FR` |
| **Entête EDXL-DE** | descriptor.explicitAddress.explicitAddressScheme | string | Identifiant du SI pilotant le Hub | Valeur fixe :`Hubex` |
| **Entête EDXL-DE** | descriptor.explicitAddress.explicitAddressValue | string | Identifiant du SAMU destinataire | fr.health.samuXXX Ex : fr.health.samu330 |
| **Contenu** | content.contentObject.JsonContent.embeddedJsonContent | json | Contenu du message json encapsulé dans l'entête | Fichier json contenant les données transmises, cf. détail ci-dessous |

Détail sur le contenu `embeddedJsonContent` encapsulé dans l'entête EXDL-DE : ils'agit d'un message json avec la liste des champs décrite plus bas propre aux données de RDV transmises elle même encapsulée dans une entête RC-DE dont les caractéristiques sont décrites plus bas. L'entête RC-DE contient un nombre de champs communs à l'entête EDXL-DE, ce qui permet de rendre le message auportortant sans l'entête EDXL-DE.

#### Acquittement technique Hub -> PTF SAS

Un acquittement technique sera transmis du Hub vers la plateforme SAS afin d'informer de la bonne prise en charge du message et de l'inscription dans sa file d'envoi (file « message » du LRM). Cette fonctionnalité est intégrée au protocole AMQ sous la forme de **Consumer Acknowledgement** (cf. spécifications du Hub Santé §3.3.1).

#### Message d'acquittement final LRM -> PTF SAS via Hub

Cet aquittement correspond à la validation auprès de l’émetteur (plateforme numérique SAS) de la bonne réception du message par le destinataire (Editeur LRM). Le cheminement est similaire au message envoyé mais pris en sens inverse.

Le format des acquittements de réception finale est de type "RC-DE" selon le modèle et les balises précisées dans le tableau ci-dessous, en reprenant le **distrubtionId** du message concerné (cf spécifications du Hub Santé §3.3.2) :

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **Entête RC-DE** | messageId | string | Identifiant du message interne. Identique au champ`distributionID`de l'enveloppe EDXL-DE | Égal à`distributionId`du message initial |
| **Entête RC-DE** | sender.AddresseeType.name | string | Identifiant de l'émetteur | fr.health.samuXXX Ex : fr.health.samu330 |
| **Entête RC-DE** | sender.AddresseeType.URL | string | URL de l'émetteur | hubex:fr.fr.health.samuXXX |
| **Entête RC-DE** | sentAt | Date time | Date et heure d'envoi du message | Ex : 2025-08-24T14:15:22+02:00 |
| **Entête RC-DE** | status | string | Statut du message | Valeur fixe :`Actual` |
| **Entête RC-DE** | kind | string | Type du message | Valeur fixe :`Ack` |
| **Entête RC-DE** | recipients.recipient.explicitAddressScheme | string | Identifiant du SI pilotant le Hub | Valeur fixe :`Hubex` |
| **Entête RC-DE** | recipients.recipient.explicitAddressValue | string | Identifiant du destinataire | Valeur fixe par environnement. Ex :`fr.health.ptfsas` |
|   | reference | string | Identifiant du message référencé | Égal à distributionId du message initial |

#### Message d'erreur LRM -> PTF SAS via Hub et Hub -> PTF SAS

En cas d'erreur, un message est posté sur la file « info » de la plateforme SAS (cf. spécifications du Hub Santé §3.3.4).Les champs ci-dessous correspondent à l’en-tête et au contenu du message :

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **Entête EDXL-DE** | distributionID | string | Identifiant unique du message attribué par l’expéditeur | À définir |
| **Entête EDXL-DE** | senderID | string | Identifiant de l'émetteur | fr.health.samu.XXX Ex : fr.health.samu.330 |
| **Entête EDXL-DE** | dateTimeSent | Date time | Date et heure d'envoi du message | Ex : 2025-08-24T14:15:22+02:00 |
| **Entête EDXL-DE** | dateTimeExpires | Date time | Date et heure d'expiration du message : les données ne doivent pas être délivrées au-delà de cette date | Ex : 2025-08-24T14:15:22+02:00 |
| **Entête EDXL-DE** | distributionStatus | string | Statut du message | Valeur fixe :`Actual` |
| **Entête EDXL-DE** | distributionKind | string | Type du message | Valeur fixe :`Error` |
| **Entête EDXL-DE** | descriptor.language | string | Langue du message échangé | Valeur fixe :`fr-FR` |
| **Entête EDXL-DE** | descriptor.explicitAddress.explicitAddressScheme | string | Identifiant du SI pilotant le Hub | Valeur fixe :`Hubex` |
| **Entête EDXL-DE** | descriptor.explicitAddress.explicitAddressValue | string | Identifiant du SAMU destinataire | Valeur fixe par environnement. Ex :`fr.health.ptfsas` |
| **Contenu** | content.contentObject.embeddedJsonContent | json | Contenu du message json encapsulé dans l'entête | JSON avec errorCode et errorCause |

L'erreur sera présente dans le contenu du message json qui respecte le modèle suivant, cf. spécifications du Hub Santé :

| | | |
| :--- | :--- | :--- |
| errorCode | Code de l'erreur ayant conduit au rejet du message | Cf. tableau des erreurs ci-après |
| errorCause | Cause de l'erreur | La cause de l’erreur. Le distributionID de l’enveloppe EDXL y est précisé si le message a pu être désérialisé, ainsi que des éléments plus précis suivant l’erreur relevée. |
| sourceMessage | Contenu du message rejeté | A préciser |

A noter qu'il existe deux types d'erreur :

* les messages "techniques" directement générés par le Hub et traduisant une impossibilité de remettre le message au destinataire (LRM) (a)
* les messages d'erreurs "fonctionnels" envoyés depuis le LRM (toujours en transitant par le Hub) traduisant l'impossibilité de traiter correctement le message reçu (b)

A titre d'exemple, les codes d'erreur suivants pourront être envoyés du Hub vers la plateforme SAS :

* 102 UNRECOGNIZED_MESSAGE_FORMAT - Le message n’a pas pu être désérialisé.
* 300 INVALID_MESSAGE Le message n’est pas conforme aux spécifications techniques (JSON Schema)
* 400 (EXPIRED_MESSAGE_BEFORE_ROUTING) - Le message n’a pas été reçu par son destinataire, il a expiré sur le Hub avant de lui être délivré.
* 500 (DEAD_LETTERED_QUEUE) - Le message n’a pas été reçu par son destinataire, il a expiré avant qu’il ne le dépile.

Le LRM pourra envoyer des messages de type :

* 404 (NOT_FOUND) - L'identifiant du RDV a mettre à jour n'a pas été trouvé dans le cas d'un message de mise à jour

### Message d'envoi de RDV

Lorsqu’un régulateur prend RDV pour un patient via la plateforme numérique SAS, celle-ci transmet un message de création de RDV qui suivra les modalités suivantes :

* **Protocole** : AMQP 0-9-1

* **En-tête** : EDXL-DL
* **Sender** : ptfsas

* **Format du message contenu** : JSON

Le message json contenant les données et encapsulé dans l'entête EDXL-DE (et dans l'entête RC-DE) respecte le format suivant :

* **ID**: 1
  * **Donnée (Niveau 1)**: Identifiant du rendez-vous
  * **Donnée (Niveau 2)**: 
  * **Description**: Un identifiant technique unique par RDV est transmis. Cet identifiant est défini par la plateforme numérique SAS et peut prendre la forme d’un UUID par exemple.La solution éditeur devra s’appuyer sur cet ID pour la gestion des requêtes de mises à jour.
  * **Exemples**: 12348
  * **Balise**: appointmentId
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 2
  * **Donnée (Niveau 1)**: Méthode
  * **Donnée (Niveau 2)**: 
  * **Description**: Indique un message de création ou de modification du rendez-vous
  * **Exemples**: createAppointment
  * **Balise**: method
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: ENUM: CreateAppointment, UpdateAppointment
* **ID**: 3
  * **Donnée (Niveau 1)**: Date et heure de la prise de rendez-vous
  * **Donnée (Niveau 2)**: 
  * **Description**: Indique la date et l’heure de la prise de RDV
  * **Exemples**: 2025-06-17T10:15:56+01:00
  * **Balise**: created
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: datetime
  * **Détails de format**: 
* **ID**: 4
  * **Donnée (Niveau 1)**: Date et heure de début du rendez-vous
  * **Donnée (Niveau 2)**: 
  * **Description**: Indique la date et l’horaire de début du rendez-vous
  * **Exemples**: 2025-06-17T14:00:00+01:00
  * **Balise**: start
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: datetime
  * **Détails de format**: 
* **ID**: 5
  * **Donnée (Niveau 1)**: Date et heure de fin du rendez-vous
  * **Donnée (Niveau 2)**: 
  * **Description**: Indique la date et l’horaire de fin du rendez-vous
  * **Exemples**: 2025-06-17T14:20:00+01:00
  * **Balise**: end
  * **Cardinalité**: 0..1
  * **Objet**: 
  * **Format (ou type)**: datetime
  * **Détails de format**: 
* **ID**: 6
  * **Donnée (Niveau 1)**: Statut du rendez-vous
  * **Donnée (Niveau 2)**: 
  * **Description**: Indique le statut du rendez-vous
  * **Exemples**: booked
  * **Balise**: status
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: ENUM: pending, booked, fulfilled, noshow, cancelled
* **ID**: 7
  * **Donnée (Niveau 1)**: Catégorie d'orientation
  * **Donnée (Niveau 2)**: 
  * **Description**: Indique la catégorie de l’orientation de rendez-vous
  * **Exemples**: SOS
  * **Balise**: orientationCategory
  * **Cardinalité**: 0..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: ENUM: CPTS, MSP, CDS, SOS, PS, PDM
* **ID**: 8
  * **Donnée (Niveau 1)**: Professionnel de santé
  * **Donnée (Niveau 2)**: 
  * **Description**: Représente le professionnel de santé associé au rendez-vous
  * **Exemples**: 
  * **Balise**: practitioner
  * **Cardinalité**: 0..1
  * **Objet**: X
  * **Format (ou type)**: practitioner
  * **Détails de format**: 
* **ID**: 9
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Identifiant RPPS
  * **Description**: Identifiant national (RPPS) du PS
  * **Exemples**: 810002909371
  * **Balise**: rppsId
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: REGEX: ^81[0-9]{10}$
* **ID**: 10
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Nom du PS
  * **Description**: Nom du professionnel de santé
  * **Exemples**: Dupont
  * **Balise**: lastName
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 11
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Prénom du PS
  * **Description**: Prénom du professionnel de santé
  * **Exemples**: Jean
  * **Balise**: firstName
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 12
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Spécialité
  * **Description**: Code de la spécialité du professionnel de santé
  * **Exemples**: SM54
  * **Balise**: specialityCode
  * **Cardinalité**: 0..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 13
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Terminologie spécialité
  * **Description**: Url de la terminologie utilisée pour la spécialité
  * **Exemples**: https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale
  * **Balise**: specialityUrl
  * **Cardinalité**: 0..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 14
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Profession
  * **Description**: Code de la profession du professionnel de santé
  * **Exemples**: 10
  * **Balise**: professionCode
  * **Cardinalité**: 0..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 15
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Terminologie profession
  * **Description**: Url de la terminologie utilisée pour la profession
  * **Exemples**: https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante
  * **Balise**: professionUrl
  * **Cardinalité**: 0..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 16
  * **Donnée (Niveau 1)**: Structure
  * **Donnée (Niveau 2)**: 
  * **Description**: Représente la structure du PS ou la structure associée au rendez-vous si le PS n'est pas connu
  * **Exemples**: 
  * **Balise**: organization
  * **Cardinalité**: 0..1
  * **Objet**: X
  * **Format (ou type)**: organization
  * **Détails de format**: 
* **ID**: 17
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Identifiant national de la structure
  * **Description**: Indique l'identifiant national de la structure
  * **Exemples**: 334173748400020
  * **Balise**: organizationId
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 18
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Nom de la structure
  * **Description**: Indique le nom de la structure
  * **Exemples**: SOS Médecins de Rennes
  * **Balise**: name
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 19
  * **Donnée (Niveau 1)**: Régulateur
  * **Donnée (Niveau 2)**: 
  * **Description**: Représente le régulateur ayant pris le RDV
  * **Exemples**: 
  * **Balise**: regulatorId
  * **Cardinalité**: 1..1
  * **Objet**: X
  * **Format (ou type)**: regulator
  * **Détails de format**: 
* **ID**: 20
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Identifiant régulateur
  * **Description**: Identifiant du régulateur ayant pris le RDV
  * **Exemples**: 3620100057/70326SR
  * **Balise**: regulatorId
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 21
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Nom du régulateur
  * **Description**: Nom du régulateur ayant pris le RDV
  * **Exemples**: Ricart
  * **Balise**: regulatorName
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 22
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Prénom du régulateur
  * **Description**: Prénom du régulateur ayant pris le RDV
  * **Exemples**: Pauline
  * **Balise**: regulatorFirstname
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 
* **ID**: 23
  * **Donnée (Niveau 1)**: 
  * **Donnée (Niveau 2)**: Mail du régulateur
  * **Description**: Adresse mail du régulateur ayant pris le RDV
  * **Exemples**: pauline.ricart@ghsas.fr
  * **Balise**: regulatorEmail
  * **Cardinalité**: 1..1
  * **Objet**: 
  * **Format (ou type)**: string
  * **Détails de format**: 

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

* **En-tête** : EDXL-DE
* **Sender** : ptfsas
* **Format du message contenu** : JSON

Le fichier json encapsulé dans l'entête aura le champ `method` valorisé à `UpdateAppointment` et contiendra les données modifiées / ajoutées / supprimées par rapport au message de création (selon le format décrit au paragraphe précédent) afin que les données pour un même identifiant de RDV puissent être mises à jour

**L’identifiant technique SAS du RDV (champ`appointmentId`)** transmis sera stocké par la solution éditeur LRM pour identification du RDV sur lequel porte les mises à jour éventuelles.

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
* **practitioner.professionCode** : Code issu de la nomenclature des professions de santédu NOS ([https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante/](https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante/))
* **organizationId** : Identifiant unique propre à chaque structure de soins. Les champs sont valorisés comme suit : numéro du FINESS avec préfixe « 1 » ou numéro du SIRET avec préfixe « 3 »
* **regulatorId** : Identifiant unique du régulateur ayant pris le RDV. Il s'agit soit d'un identifiant national "IDNPS"(identifiant présent sur la carte CPx du régulateur) soit d'un identifiant technique attribué par la plateforme numérique SAS. En effet, certains régulateurs n’ayant pas encore d’identifiant national à date, un identifiant technique de type uuid est créé. **Exemple d'identifiant national** : `3620100057/70326SR` **Exemple d'identifiant technique** : `1ef24046-7c54-69ca-a309-8106d60b6540`
* **regulatorEmail** : Il s'agit de l'adresse mail du compte du régulateur telle que déclarée dans la plateforme SAS. Elle correspond également à l'identifiant de connexion à la plateforme.

### Exemple de message complet avec entêtes et contenu

Message PTF SAS -> SAMU 33

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
              "name": "ptfsas",
              "URI": "hubex:fr.health.ptfsas"
            },
            "sentAt": "2025-10-28T17:05:54+01:00",
            "status": "Actual",
            "kind": "Report",
            "recipient": [
              {
                "name": "samu330",
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

Acquittement final SAMU 33 -> PTF SAS

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
                            "name": "samu330",
                            "URI": "hubex:fr.health.samu330"
                        },
                        "sentAt": "2025-10-28T17:06:30+01:00",
                        "kind": "Ack",
                        "status": "Actual",
                        "recipient": [
                            {
                                "name": "ptfsas",
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

### Déclencheurs et règles d'intégration attendues

Divers évènements dans la plateforme numérique SAS peuvent déclencher de manière instantanée le flux. À titre d’exemple, vous trouverez ci-dessous une liste non exhaustive de ces évènements :

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
* Lorsque les données du RDV pris pour le compte du patient auront été transmises à la solution LRM, le régulateur OSNP devra pouvoir réaliser le rapprochement entre l’orientation et le DRM. Il est attendu que **l’éditeur mette en place une solution pour que le régulateur puisse faire ce rapprochement au sein de la solution LRM**. Par exemple, un tableau de bord, un espace pour la gestion des RDV pris, un affichage des données métier disponibles pour faciliter l’action (ex. numéro téléphone, nom du PS, nom du patient, sélection DRM, heure de prise de RDV, heure du RDV, etc.), ou tout autre solution ergonomique que l’éditeur jugera pertinente. L’éditeur partagera à l’ANS la solution qu’il est prévu de mettre en place.
* Les règles d’association de l’orientation avec le DRM et la gestion des requêtes potentielles non associées seront gérées au cas par cas avec l’éditeur.
* Il est attendu de la part de l’éditeur de **conserver un historique des messages reçus** au niveau de l’échange et au niveau du résultat du traitement du message.

