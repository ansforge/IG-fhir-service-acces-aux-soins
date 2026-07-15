# Remontée des informations des Rendez-Vous pris - Service d'Accès aux Soins v1.2.0

## Remontée des informations des Rendez-Vous pris

 
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

TEST SIMPLE

```

            TEST JSON
        
```

**Requête :**

`post[BASE]/Appointment`

**Corps de la requête :**

La requête ci-dessous correspond à la transmission d'un RDV pris par le régulateur avec un identifiant national 3456780581/11242343 avec le PS dont le RPPS est 810100050075 pour le 04/09 à 14h.

**Requête :**

`post[BASE]/Appointment`

**Corps de la requête :**

La requête ci-dessous correspond à la transmission d'un RDV pris par le régulateur avec un identifiant national 3456780581/11242343 avec le PS dont le RPPS est 810100050075 pour le 04/09 à 14h.

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

