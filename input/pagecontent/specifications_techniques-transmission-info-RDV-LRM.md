Les échanges avec les éditeurs de LRM se font au travers d'une liaison avec le Hub Santé.
La plateforme numérique du SAS, ainsi que les éditeurs de LRM sont raccordés au Hub.

Le schéma ci-dessous illustre l'échange de données entre la PTF SAS et les éditeurs de LRM

<div class="figure" style="width:100%;" align ="center">
    <p>{% include schemaHub.svg %}</p>
</div>

Le protocole utilisé pour la connexion des applications (PTF SAS et éditeurs de LRM) avec le Hub est le protocole AMQP, en vesion 0-9-1. 

Les messages seront transmis au format json sous la forme d'une ressource FHIR Bundle de type transaction contenant les différentes ressources / données permettant aux LRM de traiter le message. 

Ils seront transmis avec une entête permettant notamment au Hub de router le message vers le bon SAS de destination.

Chaque client dispose de 3 files d’écoute selon la typologie des messages reçus : 
- « message » pour les échanges fonctionnels
- « ack » pour les acquittements de réception finale
- « info » pour les messages généraux d’informations, alertes et erreurs

En l'occurence, les LRM écouteront sur leur file « message » et la plateforme SAS écoutera sur les files "ack" et "info".  

### Détail des échanges

#### Gestion de l'envoi d'un message de la PTF SAS -> Hub 

Les champs ci-dessous correspondent à l’en-tête du message qui porte les informations de RDV pris par le régulateur pour le compte du patient. Ce message est envoyé instantanément de la plateforme SAS au HubSanté. 
L'entête est de type "EDXL-DE", cf. spécifications du Hub Santé.

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
| *Contenu* | content.contentObject.JsonContent.embeddedJsonContent | json | Contenu du message json encapsulé dans l'entête | Fichier Bundle transactionnel au format JSON |

#### Acquittement technique

Un acquittement technique sera transmis du Hub vers la plateforme SAS afin d'informer cette dernière de la bonne prise en charge du message et de l'inscription dans sa file d'envoi (file « message » du LRM). Cette fonctionnalité est intégréé au protocole AMQ sous la forme de *Consumer Acknowledgement*, cf. spécifications du Hub Santé.


#### Message d'acquittement final

Cet aquittement correspond à la confirmation par le HubSanté de la bonne réception du message transmis par la plateforme SAS. L'entête est de type "RC-DE", cf. spécifications du Hub Santé. 

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


#### Message d'erreur

En cas d'erreur, un message est posté sur la file « info » de la plateforme SAS. Les champs ci-dessous correspondent à l’en-tête du message

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

Le fichier json encapsulé dans le message est un Bundle de type transaction et ne contiendra que les ressources créées ou modifiées par rapport au message de création transmis. 

Ceci se fait au travers du verbe HTTP (POST et/ou PUT) de l'attribut entry.request.method de la ressource Bundle. 

Cf. [exemple](./Bundle-ExampleBundleAppointmentLRM5.json.html) avec modification de la ressource `Appointment` et ajout de la ressource `Practitioner`

### Message d'annulation de RDV

Il n’y aura pas de message spécifique pour l’annulation d’un RDV. Une annulation de RDV est modélisée par un message de type « mise à jour du RDV » avec la modification du statut du RDV à « annulé ».

Cf. [exemple](./Bundle-ExampleBundleAppointmentLRM9.json.html) de RDV annulé avec modification de la ressource `Appointment`

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
<br>

Le paragraphe ci-dessous détaille les différentes **règles de gestions attendues** par les éditeurs à la suite du déclenchement du flux et la transmission d’un message : 
- A la réception du message, **la solution éditeur stockera l’identifiant technique SAS du RDV transmis** pour référence et gestion des mises à jour éventuelles 
- Il est attendu pour les éditeurs ayant implémenté le flux de **mettre en place une écoute de leurs files de messages instantanément** afin de permettra le rattachement du RDV avec le DRM par le régulateur à la suite de la transmission des informations de RDV 
- Lorsque les données du RDV pris pour le compte du patient auront été transmises à la solution LRM, le régulateur OSNP devra réaliser le rapprochement entre l’orientation et le DRM. Il est attendu que **l’éditeur mette en place un tableau de bord ou un espace pour la gestion des RDV pris au sein du LRM** en s’appuyant sur la donnée métier disponible (ex. via numéro téléphone, Nom Patient, sélection ID DRM avec filtre SNP, heure de prise de RDV, heure du RDV, etc) ou par l’affichage d’une liste déroulante des orientations non associées depuis le DRM. L’ANS et l’éditeur conviendront en atelier de cadrage du moyen d’association à définir dans la solution. 
- Les règles d’association de l’orientation avec le DRM et la gestion des requêtes potentielles non associées seront gérées au cas par cas avec l’éditeur. 
- Il est attendu de la part de l’éditeur de **conserver un historique des messages reçus** au niveau de l’échange et au niveau du résultat du traitement du message. 