Les échanges avec les éditeurs de LRM se font au travers d'une liaison avec le [Hub Santé](https://hub.esante.gouv.fr/).
La plateforme numérique du SAS, ainsi que les éditeurs de LRM sont raccordés au Hub.

Le schéma ci-dessous illustre l'échange de données entre la PTF SAS et les éditeurs de LRM

<div class="figure" style="width:100%;" align ="center">
    <p>{% include schemaHub.svg %}</p>
</div>

Le protocole utilisé pour la connexion des applications (PTF SAS et éditeurs de LRM) avec le Hub est le [protocole AMQP](https://fr.wikipedia.org/wiki/Advanced_Message_Queuing_Protocol), en version 0-9-1. 

Les messages seront transmis sous la forme d'un fichier json contenant les différentes ressources / données permettant aux LRM de traiter le message. 

Les messages sont transmis avec un entête permettant au Hub de router le message vers le bon SAMU et la solution LRM associée au SAS de destination. Les règles de nommage et de routage associées ainsi que l’enveloppe EDXL-DE permettant de porter ces informations d’adressage dans les messages sont décrites ci-après.

Le mode de communication est basé sur un mode d'échange point à point (PTP) via des files de messages.

Chaque client (Plateforme numérique SAS et les solutions de LRM) dispose de 3 files d’écoute selon la typologie des messages reçus : 
- « message » pour les échanges fonctionnels
- « ack » pour les acquittements de réception finale
- « info » pour les messages généraux d’informations, alertes et erreurs

La structuration du nom des files est {𝑖𝑑𝑒𝑛𝑡𝑖𝑓𝑖𝑎𝑛𝑡𝐶𝑙𝑖𝑒𝑛𝑡}.{𝑡𝑦𝑝𝑜𝑙𝑜𝑔𝑖𝑒} donnant, par exemple, *fr.health.samu001.message*

En l'occurrence, les LRM écouteront sur leur file « message » et la plateforme SAS écoutera sur les files "ack" et "info".  

Le schéma ci-dessous détaille cette cinématique d'échange entre les différents acteurs

<div class="figure" style="width:100%;" align ="center">
    <p>{% include diagramme_sequence_hub_detaille.svg %}</p>
</div>

### Détail des échanges entre les acteurs

#### Gestion de l'envoi d'un message PTF SAS -> LRM via Hub 

Dans le cadre de l’interface mise en place entre les solutions logicielles éditeurs (LRM) et la plateforme numérique SAS, les requêtes seront transmises **instantanément** par la plateforme numérique du SAS au HubSanté pour transmission auprès des solutions éditeurs de LRM lors de la **création ou la mise à jour d’un RDV** et contiendront l’ensemble des données relatives au RDV **au format JSON** dans le contenu du message.

Les champs ci-dessous correspondent à l’en-tête du message qui porte les informations de RDV pris par le régulateur pour le compte du patient. Ce message est envoyé instantanément de la plateforme SAS au HubSanté. 
L'entête est de type "EDXL-DE" et les messages au format Json, cf. [spécifications techniques (DST) du Hub Santé](https://hub.esante.gouv.fr/resources/Accompagnement/tech/23.09%20DST%20v1.2%20-%20Hub%20Sante%20&%20connecteurs.pdf).

Le tableau ci-dessous précise les balises qui doivent être envoyées et qui sont nécessaires au routage des messages.

| Élément | Champ | Type | Description | Commentaire / valeur |
|--------|--------|------|------|-------------|
| *Entête EDXL-DE* | distributionID | string | Identifiant unique du message attribué par l’expéditeur |Format `<senderId>_<internalId>` où `<internalId>` est un identifiant garanti unique |
| *Entête EDXL-DE* | senderID | string | Identifiant de l'émetteur | À définir. Ex : PTFSAS
| *Entête EDXL-DE* | dateTimeSent | Date time | Date et heure d'envoi du message | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête EDXL-DE* | dateTimeExpires | Date time | Date et heure d'expiration du message : les données ne doivent pas être délivrées au-delà de cette date | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête EDXL-DE* | distributionStatus | string | Statut du message | Valeur fixe : `Actual` |
| *Entête EDXL-DE* | distributionKind | string | Type du message| Valeur fixe : `Report` |
| *Entête EDXL-DE*| descriptor.language | string | Langue du message échangé | Valeur fixe : `fr-FR` |
| *Entête EDXL-DE* | descriptor.explicitAddress.explicitAddressScheme | string | Identifiant du SI pilotant le Hub| Valeur fixe : `Hubex` |
| *Entête EDXL-DE* | descriptor.explicitAddress.explicitAddressValue | string | Identifiant du SAMU destinataire |fr.health.samuXXX Ex : fr.health.samu330 |
| *Contenu* | content.contentObject.JsonContent.embeddedJsonContent | json | Contenu du message json encapsulé dans l'entête | Fichier json contenant les données transmises |

#### Acquittement technique Hub -> PTF SAS

Un acquittement technique sera transmis du Hub vers la plateforme SAS afin d'informer de la bonne prise en charge du message et de l'inscription dans sa file d'envoi (file « message » du LRM). Cette fonctionnalité est intégrée au protocole AMQ sous la forme de *Consumer Acknowledgement* (cf. spécifications du Hub Santé §3.3.1).


#### Message d'acquittement final LRM -> PTF SAS via Hub

Cet aquittement correspond à la validation auprès de l’émetteur (plateforme numérique SAS) de la bonne réception du message par le destinataire (Editeur LRM).
Le cheminement est similaire au message envoyé mais pris en sens inverse. 

Le format des acquittements de réception finale est de type "RC-DE" selon le modèle et les balises précisées dans le tableau ci-dessous, en reprenant le *distrubtionId* du message concerné (cf spécifications du Hub Santé §3.3.2) :

| Élément | Champ | Type | Description | Commentaire / valeur |
|--------|--------|------|------|-------------|
| *Entête RC-DE* | messageId | string | Identifiant du message interne. Identique au champ `distributionID` de l'enveloppe EDXL-DE| Égal à `distributionId` du message initial |
| *Entête RC-DE* | sender.AddresseeType.name | string | Identifiant de l'émetteur |fr.health.samuXXX Ex : fr.health.samu330 |
| *Entête RC-DE* | sender.AddresseeType.URL | string | URL de l'émetteur| hubex:fr.fr.health.samuXXX |
| *Entête RC-DE* | sentAt | Date time | Date et heure d'envoi du message | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête RC-DE* | status | string | Statut du message | Valeur fixe : `Actual` |
| *Entête RC-DE* | kind | string | Type du message | Valeur fixe : `Ack` |
| *Entête RC-DE* | recipients.recipient.explicitAddressScheme | string | Identifiant du SI pilotant le Hub| Valeur fixe : `Hubex` |
| *Entête RC-DE* | recipients.recipient.explicitAddressValue | string | Identifiant du destinataire |À définir. Ex : PTFSAS |
|  | reference | string | Identifiant du message référencé |Égal à distributionId du message initial |


#### Message d'erreur LRM -> PTF SAS via Hub et Hub -> PTF SAS

En cas d'erreur, un message est posté sur la file « info » de la plateforme SAS (cf. spécifications du Hub Santé §3.3.4).Les champs ci-dessous correspondent à l’en-tête et au contenu du message : 

| Élément | Champ | Type | Description | Commentaire / valeur |
|--------|--------|------|------|-------------|
| *Entête EDXL-DE* | distributionID | string | Identifiant unique du message attribué par l’expéditeur | À définir |
| *Entête EDXL-DE* | senderID | string |Identifiant de l'émetteur | fr.health.samu.XXX Ex : fr.health.samu.330 |
| *Entête EDXL-DE* | dateTimeSent | Date time | Date et heure d'envoi du message | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête EDXL-DE* | dateTimeExpires | Date time | Date et heure d'expiration du message : les données ne doivent pas être délivrées au-delà de cette date | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête EDXL-DE* | distributionStatus | string | Statut du message |  Valeur fixe : `Actual` |
| *Entête EDXL-DE* | distributionKind | string | Type du message | Valeur fixe : `Error` |
| *Entête EDXL-DE* | descriptor.language | string | Langue du message échangé | Valeur fixe : `fr-FR` |
| *Entête EDXL-DE* | descriptor.explicitAddress.explicitAddressScheme | string | Identifiant du SI pilotant le Hub| Valeur fixe : `Hubex` |
| *Entête EDXL-DE* | descriptor.explicitAddress.explicitAddressValue | string | Identifiant du SAMU destinataire | À définir. Ex : PTFSAS|
| *Contenu* | content.contentObject.embeddedJsonContent | json | Contenu du message json encapsulé dans l'entête | JSON avec errorCode et errorCause |

L'erreur sera présente dans le contenu du message json qui respecte le modèle suivant, cf. spécifications du Hub Santé : 

| Champ | Description | Commentaire / valeur |
|--------|--------|------|
| errorCode | Code de l'erreur ayant conduit au rejet du message | Cf. tableau des erreurs ci-après |
| errorCause | Cause de l'erreur | La cause de l’erreur. Le distributionID de l’enveloppe EDXL y est précisé si le message a pu être désérialisé, ainsi que des éléments plus précis suivant l’erreur relevée. |
| sourceMessage | Contenu du message rejeté | A préciser |

A noter qu'il existe deux types d'erreur : 
- les messages "techniques" directement générés par le Hub et traduisant une impossibilité de remettre le message au destinataire (LRM) (a)
- les messages d'erreurs "fonctionnels" envoyés depuis le LRM (toujours en transitant par le Hub) traduisant l'impossibilité de traiter correctement le message reçu (b)

A titre d'exemple, les codes d'erreur suivants pourront être envoyés du Hub vers la plateforme SAS : 
- 400 (EXPIRED_MESSAGE_BEFORE_ROUTING) - Le message n’a pas été reçu par son destinataire, il a expiré sur le Hub avant de lui être délivré.
- 500 (DEAD_LETTERED_QUEUE) Le message n’a pas été reçu par son destinataire, il a expiré avant qu’il ne le dépile. 

Le LRM pourra envoyer des messages de type : 
- 404 (NOT_FOUND) - L'identifiant du RDV a mettre à jour n'a pas été trouvé dans le cas d'un Bundle contenant une mise à jour sur la ressource Appointment. 

### Message d'envoi de RDV

Lorsqu’un régulateur prend RDV pour un patient via la plateforme numérique SAS, celle-ci transmet un message de création de RDV qui suivra les modalités suivantes :

- **Protocole** : <span style="color:blue">AMQP 0-9-1  
</span>
- **Ressource type** : <span style="color:blue">Bundle  
</span>  
- **Sender** : <span style="color:blue">PTF SAS  
</span> 
- **Content-type** : <span style="color:blue">application/json    
</span>
- **Format du contenu** : <span style="color:blue">JSON
</span>

Le message json contenant les données et encapsulé dans l'entête EDXL-DE respecte les spécifications suivantes

<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Donnée (Niveau 1)</th>
      <th>Donnée (Niveau 2)</th>
      <th>Donnée (Niveau 3)</th>
      <th>Donnée (Niveau 4)</th>
      <th>Donnée (Niveau 5)</th>
      <th>Donnée (Niveau 6)</th>
      <th>Description</th>
      <th>Exemples</th>
      <th>Balise</th>
      <th>Cardinalité</th>
      <th>Objet</th>
      <th>Format (ou type)</th>
      <th>Détails de format</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>Identifiant du rendez-vous</td><td></td><td></td><td></td><td></td><td></td>
      <td>Un identifiant technique unique par RDV est transmis. Cet identifiant est défini par la plateforme numérique SAS et peut prendre la forme d’un UUID. La solution éditeur devra s’appuyer sur cet ID.</td>
      <td>29b7fcca-0b06-43f1-8019-9a7788a241ad</td><td>appointmentId</td><td>1..1</td><td></td><td>string</td><td>X</td>
    </tr>
    <tr>
      <td>2</td><td>Méthode</td><td></td><td></td><td></td><td></td><td></td>
      <td>Indique un message de création ou de modification du rendez-vous</td>
      <td>createAppointment</td><td>method</td><td>1..1</td><td></td><td>string</td><td>ENUM: CreateAppointment, UpdateAppointment</td>
    </tr>
    <tr>
      <td>3</td><td>Date et heure de la prise de rendez-vous</td><td></td><td></td><td></td><td></td><td></td>
      <td>Indique la date et l’heure de la prise de RDV</td>
      <td>2025-06-17T10:15:56+01:00</td><td>created</td><td>1..1</td><td></td><td>datetime</td><td>X</td>
    </tr>
    <tr>
      <td>4</td><td>Date et heure de début du rendez-vous</td><td></td><td></td><td></td><td></td><td></td>
      <td>Indique la date et l’horaire de début du rendez-vous</td>
      <td>2025-06-17T14:00:00+01:00</td><td>start</td><td>1..1</td><td></td><td>datetime</td><td>X</td>
    </tr>
    <tr>
      <td>5</td><td>Date et heure de fin du rendez-vous</td><td></td><td></td><td></td><td></td><td></td>
      <td>Indique la date et l’horaire de fin du rendez-vous</td>
      <td>2025-06-17T14:20:00+01:00</td><td>end</td><td>0..1</td><td></td><td>datetime</td><td>X</td>
    </tr>
    <tr>
      <td>6</td><td>Statut du rendez-vous</td><td></td><td></td><td></td><td></td><td></td>
      <td>Indique le statut du rendez-vous</td>
      <td>booked</td><td>status</td><td>1..1</td><td></td><td>string</td><td>ENUM: pending, booked, fulfilled, noshow, cancelled</td>
    </tr>
    <tr>
      <td>7</td><td>Catégorie d'orientation</td><td></td><td></td><td></td><td></td><td></td>
      <td>Indique la catégorie de l’orientation de rendez-vous</td>
      <td>SOS</td><td>orientationCategory</td><td>0..1</td><td></td><td>string</td><td>ENUM: CPTS, MSP, CDS, SOS, PS, PDM</td>
    </tr>
    <tr>
      <td>8</td><td>Professionnel de santé</td><td></td><td></td><td></td><td></td><td></td>
      <td>Représente le professionnel de santé associé au rendez-vous</td>
      <td></td><td>practitioner</td><td>0..1</td><td>practitioner</td><td></td><td>X</td>
    </tr>
    <tr>
      <td>9</td><td></td><td>Identifiant RPPS</td><td></td><td></td><td></td><td></td>
      <td>Identifiant national (RPPS) du PS</td>
      <td>810002909371</td><td>rppsId</td><td>1..1</td><td></td><td>string</td><td>REGEX: ^81[0-9]{10}$</td>
    </tr>
    <tr>
      <td>10</td><td></td><td>Nom du PS</td><td></td><td></td><td></td><td></td>
      <td>Nom du professionnel de santé</td>
      <td>Dupont</td><td>lastName</td><td>1..1</td><td></td><td>string</td><td>X</td>
    </tr>
    <tr>
      <td>11</td><td></td><td>Prénom du PS</td><td></td><td></td><td></td><td></td>
      <td>Prénom du professionnel de santé</td>
      <td>Jean</td><td>firstName</td><td>1..1</td><td></td><td>string</td><td>X</td>
    </tr>
    <tr>
      <td>12</td><td></td><td>Spécialité</td><td></td><td></td><td></td><td></td>
      <td>Code de la spécialité du professionnel de santé</td>
      <td>SM54</td><td>specialityCode</td><td>0..1</td><td></td><td>string</td><td>X</td>
    </tr>
    <tr>
      <td>13</td><td></td><td>Terminologie spécialité</td><td></td><td></td><td></td><td></td>
      <td>Url de la terminologie utilisée pour la spécialité</td>
      <td><a href="https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale/"></td><td>specialityUrl</td><td>0..1</td><td></td><td>string</td><td>X</td>
    </tr>
    <tr>
      <td>14</td><td></td><td>Profession</td><td></td><td></td><td></td><td></td>
      <td>Code de la profession du professionnel de santé</td>
      <td>10</td><td>professionCode</td><td>0..1</td><td></td><td>string</td><td>X</td>
    </tr>
    <tr>
      <td>15</td><td></td><td>Terminologie profession</td><td></td><td></td><td></td><td></td>
      <td>Url de la terminologie utilisée pour la profession</td>
      <td><a href="https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante/"></td><td>professionUrl</td><td>0..1</td><td></td><td>string</td><td>X</td>
    </tr>
    <tr>
      <td>16</td><td>Structure</td><td></td><td></td><td></td><td></td><td></td>
      <td>Représente la structure du PS ou la structure associée au rendez-vous si le PS n'est pas connu</td>
      <td></td><td>organization</td><td>0..1</td><td>organization</td><td></td><td>X</td>
    </tr>
    <tr>
      <td>17</td><td></td><td>Identifiant national de la structure</td><td></td><td></td><td></td><td></td>
      <td>Indique l'identifiant national de la structure</td>
      <td>334173748400020</td><td>organizationId</td><td>1..1</td><td></td><td>string</td><td>X</td>
    </tr>
    <tr>
      <td>18</td><td></td><td>Nom de la structure</td><td></td><td></td><td></td><td></td>
      <td>Indique le nom de la structure</td>
      <td>SOS Médecins de Rennes</td><td>name</td><td>1..1</td><td></td><td>string</td><td>X</td>
    </tr>
  </tbody>
</table>


Cf. exemple ci-dessous de message de création

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
    }
  }
}

### Message de modification de RDV

La mise à jour des données du RDV peut porter sur chacun des éléments de la ressource transmise (dates du créneau, PS effecteurs des soins, statut du RDV, etc.).

Le message transmis pour la mise à jour du RDV devra suivre les modalités suivantes :

- **Protocole** : <span style="color:blue">AMQP 0-9-1  
</span>
- **Ressource type** : <span style="color:blue">Bundle  
</span>  
- **Sender** : <span style="color:blue">PTF SAS  
</span> 
- **Content-type** : <span style="color:blue">application/json    
</span>
- **Format du contenu** : <span style="color:blue">JSON
</span>


Le fichier json encapsulé dans l'entête aura le champ `Méthode` valorisé à `UpdateAppointment` et contiendra les données modifiées / ajoutées / supprimées par rapport au message de création afin que les données pour un même identifiant de RDV puissent être mises à jour

**L’identifiant technique SAS du RDV (champ `appointmentId`)** transmis sera stocké par la solution éditeur LRM pour identification du RDV sur lequel porte les mises à jour éventuelles.

Cf. exemple ci-dessous de message de modification

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
    }
  }
}

### Message d'annulation de RDV

Il n’y aura pas de message spécifique pour l’annulation d’un RDV. Une annulation de RDV est modélisée par un message de type « mise à jour du RDV » avec la modification du statut du RDV à « annulé ».

Cf. exemple ci-dessous de message d'annulation.

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
    }
  }
}

### Détail des champs à utiliser

Cette section détaille les champs à utiliser afin de renseigner les différents éléments codifiés de la requête.
 - **method** : Indique un message de création ou de mise à jour. Les valeurs suivantes sont attendues : 
    - createAppointment
    - updateAppointment
  
- **appointmentId** : Un identifiant technique unique par RDV est transmis. Cet ID est défini par la plateforme numérique SAS et peut prendre la forme d’un UUID par exemple. La solution éditeur devra s’appuyer sur cet ID pour la gestion des requêtes de mises à jour.

- **status** : L’utilisation de la nomenclature standard AppointmentStatus (http://hl7.org/fhir/appointmentstatus) est attendue. La plateforme numérique SAS exploite à date les valeurs suivantes :
  - PENDING : RDV en attente de confirmation
  - BOOKED : RDV pris et confirmé
  - FULFILLED : RDV honoré
  - NOSHOW : RDV non honoré
  - CANCELLED : RDV annulé

- **practitioner.rppsId** : RPPS avec préfixe « 8 »

- **practitioner.specialtyCode** : Code issu de la nomenclature des spécialités ordinales du NOS (<https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale/>)

- **practitioner.professionCode** : Code issu de la nomenclature des professions de santédu NOS (<https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante/>)

- **organizationId** : Identifiant unique propre à chaque structure de soins. Les champs sont valorisés comme suit : numéro du FINESS avec préfixe « 1 » ou numéro du SIRET avec préfixe « 3 » 


### Déclencheurs et règles d'intégration attendues

Divers évènements dans la plateforme numérique SAS peuvent déclencher de manière instantanée le flux. À titre d’exemple, vous trouverez ci-dessous une liste non exhaustive de ces évènements : 

- Pour la création d’un message : 
    - lors de la prise de RDV ou demande de prise en charge par le régulateur pour le compte du patient dans une solution éditeur 
    - lors de la prise de RDV par le régulateur pour le compte du patient dans la plateforme numérique SAS 
    - lors de la prise de RDV par le régulateur pour le compte du patient en surnuméraire 

- Pour la modification d’un message : 
    - lors d’un changement de statut du RDV : confirmé, annulé, honoré et non honoré 
    - lors d’un changement du PS effecteur de soins (ex. remplacement) ou lorsque le PS n’a pas pu être identifié au préalable (ex. agendas de structure) 
    - lors d’un changement horaire du créneau 

<br>

Le paragraphe ci-dessous détaille les différentes **règles de gestions attendues** par les éditeurs à la suite du déclenchement du flux et la transmission d’un message : 
- A la réception du message, **la solution éditeur stockera l’identifiant technique SAS du RDV transmis** pour référence et gestion des mises à jour éventuelles 
- Il est attendu pour les éditeurs ayant implémenté le flux de **mettre en place une écoute de leurs files de messages instantanément** afin de permettra le rattachement du RDV avec le DRM par le régulateur à la suite de la transmission des informations de RDV 
- Lorsque les données du RDV pris pour le compte du patient auront été transmises à la solution LRM, le régulateur OSNP devra pouvoir réaliser le rapprochement entre l’orientation et le DRM. Il est attendu que **l’éditeur mette en place une solution pour que le régulateur puisse faire ce rapprochement au sein de la solution LRM**. Par exemple, un tableau de bord, un espace pour la gestion des RDV pris, un affichage des données métier disponibles pour faciliter l’action (ex. numéro téléphone, nom du PS, nom du patient, sélection DRM, heure de prise de RDV, heure du RDV, etc.), ou tout autre solution ergonomique que l’éditeur jugera pertinente. L’éditeur partagera à l’ANS la solution qu’il est prévu de mettre en place.
- Les règles d’association de l’orientation avec le DRM et la gestion des requêtes potentielles non associées seront gérées au cas par cas avec l’éditeur. 
- Il est attendu de la part de l’éditeur de **conserver un historique des messages reçus** au niveau de l’échange et au niveau du résultat du traitement du message. 