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

### Détail des éléments d'entête

#### Message PTF SAS -> Hub 

| Élément | Chemin | Type | Commentaire / valeur |
|--------|--------|------|-------------|
| *Entête EDXL-DE* | distributionID | string | À définir |
| *Entête EDXL-DE* | senderID | string | À définir. Ex : PTFSAS|
| *Entête EDXL-DE* | dateTimeSent | Date time | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête EDXL-DE* | dateTimeExpires | Date time | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête EDXL-DE* | distributionStatus | string | Actual |
| *Entête EDXL-DE* | distributionKind | string | Report
|  *Entête EDXL-DE*| descriptor.language | string | fr-FR |
| *Entête EDXL-DE* | descriptor.explicitAddress.explicitAddressScheme | string | Hubex |
| *Entête EDXL-DE* | descriptor.explicitAddress.explicitAddressValue | string | fr.health.samu.XXX Ex : fr.health.samu.330 |
| *Contenu* | content.contentObject.JsonContent.embeddedJsonContent | json | Fichier Bundle transactionnel au format JSON |

#### Message d'acquittement technique

| Élément | Chemin | Type | Commentaire / valeur |
|--------|--------|------|------------------------|
| *Entête EDXL-DE* | distributionID | string | Règle à communiquer par équipe Hub |
| *Entête EDXL-DE* | senderID | string | À définir. PTF SAS ? |
| *Entête EDXL-DE* | dateTimeSent | Date time | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête EDXL-DE* | dateTimeExpires | Date time | Ex : 2025-08-24T14:15:22Z+02:00 |
| *Entête EDXL-DE* | distributionStatus | string | Actual |
| *Entête EDXL-DE* | distributionKind | string | Ack |
| *Entête EDXL-DE* | descriptor.language | string | fr-FR |
| *Entête EDXL-DE* | descriptor.explicitAddress.explicitAddressScheme | string | Hubex |
| *Entête EDXL-DE* | descriptor.explicitAddress.explicitAddressValue | string | fr.health.samu.XXX (Ex : fr.health.samu.330) |
| *Contenu* | content.contentObject.JsonContent.embeddedJsonContent | json | Fichier Bundle transactionnel au format JSON |

#### Message d'acquittement final

| Élément | Chemin | Type | Commentaire |
|--------|--------|------|-------------|
| *Entête RC-DE* | messageId | string | Égal à distributionId du message initial |
| *Entête RC-DE* | sender.AddresseeType.name | string | "Sender du message initial ? ou de celui de l'ACK PTFSAS" |
| *Entête RC-DE* | sender.AddresseeType.URL | string | hubex:fr.PTFSAS |
| *Entête RC-DE* | sentAt | Date time | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête RC-DE* | status | string | Actual |
| *Entête RC-DE* | kind | string | Ack |
| *Entête RC-DE* | recipients.recipient.explicitAddressScheme | string | hubex |
| *Entête RC-DE* | recipients.recipient.explicitAddressValue | string | fr.health.samu.XXX |
|  | reference | string | Égal à distributionId du message initial |


#### Message d'erreur

| Élément | Type | Commentaire |
|--------|------|-------------|
| distributionID | string | À définir |
| senderID | string | fr.health.samu.XXX Ex : fr.health.samu.330 |
| dateTimeSent | Date time | Ex : 2025-08-24T14:15:22+02:00 |
| dateTimeExpires | Date time | Ex : 2025-08-24T14:15:22+02:00 |
| distributionStatus | string | Actual |
| distributionKind | string | Error |
| descriptor.language | string | fr-FR |
| descriptor.explicitAddress.explicitAddressScheme | string | hubex |
| descriptor.explicitAddress.explicitAddressValue | string | À définir. PTF SAS ? |
| content.contentObject.embeddedJsonContent | json | JSON avec errorCode et errorCause |