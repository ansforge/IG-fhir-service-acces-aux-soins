<!-- Mise à jour de rendez-vous -->
### Caractéristiques de l'API

<table>
<tbody>
<tr>
  <td width="25%"><p><strong>Endpoint</strong></p></td>
  <td><p>&nbsp;</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Header</strong></p></td>
  <td><p>Accept: application/json+fhir</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Encodage</strong></p></td>
  <td><p>UTF-8</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Version FHIR</strong></p></td>
  <td><p>4.0.1</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Version package</strong></p></td>
  <td><p>&nbsp;</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Publication</strong></p></td>
  <td><p>&nbsp;</p></td>
</tr>
</tbody>
</table>

###  Construction de la requête de base

<table>
<tbody>
<tr>
  <td width="25%"><p><strong>Interaction FHIR</strong></p></td>
  <td><p>Conditional update<a href="#_ftn1" name="_ftnref1">[1]</a></p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Méthode http associée</strong></p></td>
  <td><p>PUT</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Ressource créée</strong></p></td>
  <td><p>Appointment</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Construction requête de base</strong></p></td>
  <td><p><code>PUT[base]/Appointment?Identifier=[ID]{&amp;_format=[mime-type]}</code></p></td>
</tr>
</tbody>
</table>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/http.html#cond-update">https://www.hl7.org/fhir/http.html#cond-update</a> et <a href="https://www.hl7.org/fhir/http.html#general">https://www.hl7.org/fhir/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/bundle.html>

Si la création est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP
-   Un header Location incluant l'ID de la ressource mise à jour par le serveur `Location: [base]/Appointment/12345`

Plus de précision sur la spécification FHIR :
https://www.hl7.org/fhir/http.html

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
<https://www.hl7.org/fhir/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource OperationOutcome[^3] qui donne les
    détails sur la raison de l'échec

À titre d'information, les codes erreurs classiques sont les suivants :
- 400 (Bad request) – Le format de la requête FHIR transmise est incorrect
- 422 (Unprocessable Entity) – L'action demandée ne peut pas être réalisée à cause d’une règle interne à l’application.

Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/http.html>

### Exemple de requête

**Requête :**

`put[BASE]/Appointment`

**Corps de la requête :**

La requête ci-dessous correspond à la transmission d’un RDV pris par le régulateur avec un identifiant national 3456780581/11242343 avec le PS dont le RPPS est 810100050075 pour le 04/09 à 14h, dont le statut est annulé.

```
{
  "resourceType": "Appointment",
  "id": "1",
  "meta": {
    "profile": [
      "http://interopsante.org/fhir/StructureDefinition/FrAppointmentSAS"
    ]
  },
  "identifier": [
    {
      "system": "urn:oid:1.1.111.1.11.1.1.1",
      "value": "b6e39355-8a61-4556-b340-36f7b95fec6a"
    }
  ],
  "extension": [
    {
      "url": "http://interopsante.org/fhir/StructureDefinition/FrAppointmentOperator",
      "valueReference": {
        "identifier": {
          "type": {
            "coding": [
              {
                "system": "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                "code": "IDNPS"
              }
            ]
          },
          "system": "urn:oid:1.2.250.1.71.4.2.1",
          "value": "3456780581/11242343"
        }
      }
    }
  ],
  "status": "cancelled",
  "start": "2022-09-04T14:00:00+01:00",
  "end": "2022-09-04T14:15:00+01:00",
  "participant": [
    {
      "actor": {
        "identifier": {
          "type": {
            "coding": [
              {
                "system": "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                "code": "IDNPS"
              }
            ]
          },
          "system": "urn:oid:1.2.250.1.71.4.2.1",
          "value": "810100050075"
        }
      },
      "status": "refused"
    }
  ]
}

```
