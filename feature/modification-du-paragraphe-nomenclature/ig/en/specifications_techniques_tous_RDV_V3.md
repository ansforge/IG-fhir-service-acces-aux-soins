# Récupération des données du RDV pris - Service d'Accès aux Soins v1.2.0

## Récupération des données du RDV pris

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Caractéristiques de l'API

| | |
| :--- | :--- |
| **Endpoint** |   |
| **Header** | Accept: application/json+fhir |
| **Encodage** | UTF-8 |
| **Version FHIR** | 4.0.1 |
| **Version package** |   |
| **Publication** |   |

### Création de rendez-vous

#### Construction de la requête de base

| | |
| :--- | :--- |
| **Interaction FHIR** | Create[[1] ](#_ftn1) |
| **Méthode http associée** | POST |
| **Ressource créée** | Appointment |
| **Construction requête de base** | `POST[base]/Appointment{?_format=[mime-type]}` |

[[1] ](#_ftnref1) [https://www.hl7.org/fhir/http.html#create](https://www.hl7.org/fhir/http.html#create) et [https://www.hl7.org/fhir/http.html#general](https://www.hl7.org/fhir/http.html#general)

#### Construction de la réponse de base

##### Réponse de base -- Succès

Lien vers la spécification FHIR : [https://www.hl7.org/fhir/bundle.html](https://www.hl7.org/fhir/bundle.html)

Si la création est un succès, le serveur répond :

* Un header avec un code 201 Created HTTP
* Un header Location incluant l'ID de la ressource créée par le serveur `Location: [base]/Appointment/12345`

Plus de précision sur la spécification FHIR : [https://www.hl7.org/fhir/http.html](https://www.hl7.org/fhir/http.html)

##### Réponse de base -- Echec

Lien vers la spécification FHIR : [https://www.hl7.org/fhir/operationoutcome.html](https://www.hl7.org/fhir/operationoutcome.html)

Si la recherche échoue, le serveur doit répondre :

* Un header avec un un code erreur HTTP 4XX ou 5XX
* Un body contenant une ressource OperationOutcome[^3] qui donne les détails sur la raison de l'échec

À titre d'information, les codes erreurs classiques sont les suivants :

* 400 (Bad request) – Le format de la requête FHIR transmise est incorrect
* 422 (Unprocessable Entity) – L'action demandée ne peut pas être réalisée à cause d’une règle interne à l’application.

Plus de précision sur la spécification FHIR : [https://www.hl7.org/fhir/http.html](https://www.hl7.org/fhir/http.html)

#### Exemples de requêtes

Ci-dessous des exemples de requêtes pour la création de rendez-vous par cas d'usage :

**Requête :**

 `POST [BASE]/Appointment` 

**Corps de la requête :**

 La requête ci-dessous correspond à la transmission d'un rendez-vous pris par le régulateur avec un identifiant national 3456780581/11242343 avec le PS dont le RPPS est 810100050075 pour le 04/09 à 14h. 

**Requête :**

 `POST [BASE]/Appointment` 

**Corps de la requête :**

 La requête ci-dessous correspond à la transmission d'un rendez-vous pris par le régulateur avec un identifiant national 3456780581/11242343 pour le 04/09 à 14h auprès d'une association SOS Médecins ou de visite à domicile, le PS effecteur de soins n'est pas connu à la prise de rendez-vous. 

**Requête :**

 `POST [BASE]/Appointment` 

**Corps de la requête :**

 La requête ci-dessous correspond à la transmission d'une demande de prise en charge initiée par le régulateur avec un identifiant national 3456780581/11242343 le 04/09 à 14h, le PS effecteur de soins n'est pas connu à la prise de rendez-vous. 

### Mise à jour de rendez-vous

#### Construction de la requête de base

| | |
| :--- | :--- |
| **Interaction FHIR** | Conditional update[[1] ](#_ftn1) |
| **Méthode http associée** | PUT |
| **Ressource créée** | Appointment |
| **Construction requête de base** | `PUT[base]/Appointment?Identifier=[ID]{&_format=[mime-type]}` |

[[1] ](#_ftnref1) [https://www.hl7.org/fhir/http.html#cond-update](https://www.hl7.org/fhir/http.html#cond-update) et [https://www.hl7.org/fhir/http.html#general](https://www.hl7.org/fhir/http.html#general)

#### Construction de la réponse de base

##### Réponse de base -- Succès

Lien vers la spécification FHIR : [https://www.hl7.org/fhir/bundle.html](https://www.hl7.org/fhir/bundle.html)

Si la création est un succès, le serveur répond :

* Un header avec un code 200 OK HTTP
* Un header Location incluant l'ID de la ressource mise à jour par le serveur `Location: [base]/Appointment/12345`

Plus de précision sur la spécification FHIR : [https://www.hl7.org/fhir/http.html](https://www.hl7.org/fhir/http.html)

##### Réponse de base -- Echec

Si la recherche échoue, le serveur doit répondre :

* Un header avec un un code erreur HTTP 4XX ou 5XX
* Un body contenant une ressource [OperationOutcome](https://www.hl7.org/fhir/operationoutcome.html) qui donne les détails sur la raison de l'échec

À titre d'information, les codes erreurs classiques sont les suivants :

* 400 (Bad request) – Le format de la requête FHIR transmise est incorrect
* 422 (Unprocessable Entity) – L'action demandée ne peut pas être réalisée à cause d’une règle interne à l’application.

Plus de précision sur la spécification FHIR : [https://www.hl7.org/fhir/http.html](https://www.hl7.org/fhir/http.html)

#### Exemples de requêtes

Ci-dessous des exemples de requêtes pour la modification de rendez-vous par cas d'usage :

**Requête :**

 `PUT [BASE]/Appointment` 

**Corps de la requête :**

 La requête ci-dessous correspond à la mise à jour d’un RDV pris par le régulateur avec un identifiant national 3456780581/11242343 avec le PS dont le RPPS est 810100050075 pour le 04/09 à 14h, dont le statut est annulé. 

**Requête :**

 `PUT [BASE]/Appointment` 

**Corps de la requête :**

 La requête ci-dessous correspond à la mise à jour d’un RDV pris par le régulateur avec un identifiant national 3456780581/11242343, pour le 04/09 à 14h auprès d'une association SOS Médecins ou de visite à domicile. Au moment de la création du rendez-vous, le professionnel de santé effecteur n’était pas renseigné, celui-ci est désormais connu et identifié par le RPPS 810100050075. Le statut du rendez-vous est à annulé. 

**Requête :**

 `PUT [BASE]/Appointment` 

**Corps de la requête :**

 La requête ci-dessous correspond à la mise à jour d’une demande de prise en charge initiée par le régulateur avec un identifiant national 3456780581/11242343, le 04/09 à 14h. Au moment de la demande de prise en charge, le professionnel de santé effecteur n’était pas renseigné, celui-ci est désormais connu et identifié par le RPPS 810100050075. Le statut du rendez-vous est à annulé. 

### Nomenclatures

Cette section détaille les nomenclatures à utiliser afin de renseigner les différents éléments codifiés de la requête.

* **Identifiant technique du RDV :** 
* Un identifiant technique unique par RDV est attendu. Cet ID est défini par la solution logicielle éditeur et peut prendre la forme d'un UUID par exemple. Les échanges s'appuieront sur cet ID pour les requêtes de mises à jour (interaction conditional update).
 
* **Autorité d'affectation de la solution logicielle éditeur :** 
* Ce champ est une valeur fixe, valorisé soit par une URL soit par un OID. Si l'éditeur possède un OID propre à sa solution logicielle il est attendu que celui-ci soit transmis, sinon il est demandé de définir une URL propre à la solution éditeur.
 
* **URL de l'extension AppointmentOperator pour la référence au régulateur :** 
* Ce champ est une valeur fixe, valorisé à `http://interopsante.org/fhir/StructureDefinition/FrAppointmentOperator`.
 
* **Identification du régulateur ayant pris le RDV pour le patient :** 
* Il s'agit de l'identifiant communiqué par la plateforme numérique SAS dans l'interface INT_R02 "Gestion des comptes régulateurs". Deux combinaisons sont possibles pour ces trois champs selon que le régulateur possède ou non un identifiant national. 
* Lorsque le régulateur a un identifiant national, les différents champs seront valorisés comme suit : 
* Valeur de l'identifiant : Identifiant national avec préfixe ;
* Autorité d'affectation : urn:oid:1.2.250.1.71.4.2.1 ;
* Type d'identifiant : le champ `type.coding.code` est valorisé à `IDNPS` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`.
 
* Lorsque le régulateur n'a pas d’identifiant national, nous utiliserons un ID technique SAS, les différents champs seront valorisés comme suit : 
* Valeur de l'identifiant : Identifiant technique SAS avec un format de type UUID ;
* Autorité d'affectation : urn:oid:1.2.250.1.213.3.6 ;
* Type d'identifiant : le champ type.coding.code est valorisé à `INTRN` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`.
 
 
* **Statut du RDV :** 
* L'utilisation de la nomenclature standard AppointmentStatus ([http://hl7.org/fhir/appointmentstatus](http://hl7.org/fhir/appointmentstatus)) est attendue. La plateforme numérique SAS exploite à date les valeurs suivantes : 
* PENDING : RDV en attente de confirmation
* BOOKED : RDV pris et confirmé
* FULFILLED : RDV honoré
* NOSHOW : RDV non honoré
* CANCELLED : RDV annulé
 
 
* **Identification du PS effecteur de soins :** 
* Les champs attendus doivent être valorisés comme suit : 
* Valeur de l'identifiant : RPPS avec préfixe "8" ou ADELI avec préfixe "0"
* Autorité d'affectation : urn:oid:1.2.250.1.71.4.2.1
* Type d'identifiant : le champ `type.coding.code` est valorisé à `IDNPS` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`
 
 
* **Statut d’acceptation du RDV par le PS effecteur de soins :** 
* L'utilisation de la nomenclature standard Appointmentparticipantstatus ([http://hl7.org/fhir/ValueSet/participationstatus](http://hl7.org/fhir/ValueSet/participationstatus)) est attendue. La plateforme numérique SAS ne récupérant que les RDV avec acceptation automatique et tacite du médecin effecteur de soins, ce champ aura systématiquement la valeur « accepted ».
 

* **Identifiant technique du RDV :** 
* Un identifiant technique unique par RDV est attendu. Cet ID est défini par la solution logicielle éditeur et peut prendre la forme d'un UUID par exemple. Les échanges s'appuieront sur cet ID pour les requêtes de mises à jour (interaction conditional update).
 
* **Autorité d'affectation de la solution logicielle éditeur :** 
* Ce champ est une valeur fixe, valorisé soit par une URL soit par un OID. Si l'éditeur possède un OID propre à sa solution logicielle il est attendu que celui-ci soit transmis, sinon il est demandé de définir une URL propre à la solution éditeur.
 
* **URL de l'extension AppointmentOperator pour la référence au régulateur :** 
* Ce champ est une valeur fixe, valorisé à `http://interopsante.org/fhir/StructureDefinition/FrAppointmentOperator`.
 
* **Identification du régulateur ayant pris le RDV pour le patient :** 
* Il s'agit de l'identifiant communiqué par la plateforme numérique SAS dans l'interface INT_R02 "Gestion des comptes régulateurs". Deux combinaisons sont possibles pour ces trois champs selon que le régulateur possède ou non un identifiant national. 
* Lorsque le régulateur a un identifiant national, les différents champs seront valorisés comme suit : 
* Valeur de l'identifiant : Identifiant national avec préfixe ;
* Autorité d'affectation : urn:oid:1.2.250.1.71.4.2.1 ;
* Type d'identifiant : le champ `type.coding.code` est valorisé à `IDNPS` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`.
 
* Lorsque le régulateur n'a pas d’identifiant national, nous utiliserons un ID technique SAS, les différents champs seront valorisés comme suit : 
* Valeur de l'identifiant : Identifiant technique SAS avec un format de type UUID ;
* Autorité d'affectation : urn:oid:1.2.250.1.213.3.6 ;
* Type d'identifiant : le champ type.coding.code est valorisé à `INTRN` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`.
 
 
* **Statut du RDV :** 
* L'utilisation de la nomenclature standard AppointmentStatus ([http://hl7.org/fhir/appointmentstatus](http://hl7.org/fhir/appointmentstatus)) est attendue. La plateforme numérique SAS exploite à date les valeurs suivantes : 
* PENDING : RDV en attente de confirmation
* BOOKED : RDV pris et confirmé
* FULFILLED : RDV honoré
* NOSHOW : RDV non honoré
* CANCELLED : RDV annulé
 
 
* **Identification du PS effecteur de soins :** 
* Les champs attendus doivent être valorisés comme suit : 
* Valeur de l'identifiant : RPPS avec préfixe "8" ou ADELI avec préfixe "0"
* Autorité d'affectation : urn:oid:1.2.250.1.71.4.2.1
* Type d'identifiant : le champ `type.coding.code` est valorisé à `IDNPS` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`
 
 
* **Statut d’acceptation du RDV par le PS effecteur de soins :** 
* L'utilisation de la nomenclature standard Appointmentparticipantstatus ([http://hl7.org/fhir/ValueSet/participationstatus](http://hl7.org/fhir/ValueSet/participationstatus)) est attendue. La plateforme numérique SAS ne récupérant que les RDV avec acceptation automatique et tacite du médecin effecteur de soins, ce champ aura systématiquement la valeur « accepted ».
 

* **Identifiant technique du RDV :** 
* Un identifiant technique unique par RDV est attendu. Cet ID est défini par la solution logicielle éditeur et peut prendre la forme d'un UUID par exemple. Les échanges s'appuieront sur cet ID pour les requêtes de mises à jour (interaction conditional update).
 
* **Autorité d'affectation de la solution logicielle éditeur :** 
* Ce champ est une valeur fixe, valorisé soit par une URL soit par un OID. Si l'éditeur possède un OID propre à sa solution logicielle il est attendu que celui-ci soit transmis, sinon il est demandé de définir une URL propre à la solution éditeur.
 
* **URL de l'extension AppointmentOperator pour la référence au régulateur :** 
* Ce champ est une valeur fixe, valorisé à `http://interopsante.org/fhir/StructureDefinition/FrAppointmentOperator`.
 
* **Identification du régulateur ayant pris le RDV pour le patient :** 
* Il s'agit de l'identifiant communiqué par la plateforme numérique SAS dans l'interface INT_R02 "Gestion des comptes régulateurs". Deux combinaisons sont possibles pour ces trois champs selon que le régulateur possède ou non un identifiant national. 
* Lorsque le régulateur a un identifiant national, les différents champs seront valorisés comme suit : 
* Valeur de l'identifiant : Identifiant national avec préfixe ;
* Autorité d'affectation : urn:oid:1.2.250.1.71.4.2.1 ;
* Type d'identifiant : le champ `type.coding.code` est valorisé à `IDNPS` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`.
 
* Lorsque le régulateur n'a pas d’identifiant national, nous utiliserons un ID technique SAS, les différents champs seront valorisés comme suit : 
* Valeur de l'identifiant : Identifiant technique SAS avec un format de type UUID ;
* Autorité d'affectation : urn:oid:1.2.250.1.213.3.6 ;
* Type d'identifiant : le champ type.coding.code est valorisé à `INTRN` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`.
 
 
* **Statut du RDV :** 
* L'utilisation de la nomenclature standard AppointmentStatus ([http://hl7.org/fhir/appointmentstatus](http://hl7.org/fhir/appointmentstatus)) est attendue. La plateforme numérique SAS exploite à date les valeurs suivantes : 
* PENDING : RDV en attente de confirmation
* BOOKED : RDV pris et confirmé
* FULFILLED : RDV honoré
* NOSHOW : RDV non honoré
* CANCELLED : RDV annulé
 
 
* **Identification du PS effecteur de soins :** 
* Les champs attendus doivent être valorisés comme suit : 
* Valeur de l'identifiant : RPPS avec préfixe "8" ou ADELI avec préfixe "0"
* Autorité d'affectation : urn:oid:1.2.250.1.71.4.2.1
* Type d'identifiant : le champ `type.coding.code` est valorisé à `IDNPS` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`
 
 
* **Statut d’acceptation du RDV par le PS effecteur de soins :** 
* L'utilisation de la nomenclature standard Appointmentparticipantstatus ([http://hl7.org/fhir/ValueSet/participationstatus](http://hl7.org/fhir/ValueSet/participationstatus)) est attendue. La plateforme numérique SAS ne récupérant que les RDV avec acceptation automatique et tacite du médecin effecteur de soins, ce champ aura systématiquement la valeur « accepted ».
 

### Validateur ressources

[Cf. page dédiée](./tests.md)

