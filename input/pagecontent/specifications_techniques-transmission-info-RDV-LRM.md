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
| *Entête EDXL-DE* | distributionID | string | Format `<senderId>_<internalId>` où `<internalId>` est un identifiant garanti unique |
| *Entête EDXL-DE* | senderID | string | À définir. Ex : PTFSAS
| *Entête EDXL-DE* | dateTimeSent | Date time | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête EDXL-DE* | dateTimeExpires | Date time | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête EDXL-DE* | distributionStatus | string | Actual |
| *Entête EDXL-DE* | distributionKind | string | Report
|  *Entête EDXL-DE*| descriptor.language | string | fr-FR |
| *Entête EDXL-DE* | descriptor.explicitAddress.explicitAddressScheme | string | Hubex |
| *Entête EDXL-DE* | descriptor.explicitAddress.explicitAddressValue | string | fr.health.samuXXX Ex : fr.health.samu330 |
| *Contenu* | content.contentObject.JsonContent.embeddedJsonContent | json | Fichier Bundle transactionnel au format JSON |

#### Message d'acquittement final

| Élément | Chemin | Type | Commentaire |
|--------|--------|------|-------------|
| *Entête RC-DE* | messageId | string | Égal à distributionId du message initial |
| *Entête RC-DE* | sender.AddresseeType.name | string | fr.health.samuXXX Ex : fr.health.samu330 |
| *Entête RC-DE* | sender.AddresseeType.URL | string | hubex:fr.fr.health.samuXXX |
| *Entête RC-DE* | sentAt | Date time | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête RC-DE* | status | string | Actual |
| *Entête RC-DE* | kind | string | Ack |
| *Entête RC-DE* | recipients.recipient.explicitAddressScheme | string | hubex |
| *Entête RC-DE* | recipients.recipient.explicitAddressValue | string | À définir. Ex : PTFSAS |
|  | reference | string | Égal à distributionId du message initial |


#### Message d'erreur

| Élément | Chemin | Type | Commentaire |
|--------|--------|------|-------------|
| *Entête RC-DE* | distributionID | string | À définir |
| *Entête RC-DE* | senderID | string | fr.health.samu.XXX Ex : fr.health.samu.330 |
| *Entête RC-DE* | dateTimeSent | Date time | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête RC-DE* | dateTimeExpires | Date time | Ex : 2025-08-24T14:15:22+02:00 |
| *Entête RC-DE* | distributionStatus | string | Actual |
| *Entête RC-DE* | distributionKind | string | Error |
| *Entête RC-DE* | descriptor.language | string | fr-FR |
| *Entête RC-DE* | descriptor.explicitAddress.explicitAddressScheme | string | hubex |
| *Entête RC-DE* | descriptor.explicitAddress.explicitAddressValue | string | À définir. Ex : PTFSAS|
| *Entête RC-DE* | content.contentObject.embeddedJsonContent | json | JSON avec errorCode et errorCause |

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