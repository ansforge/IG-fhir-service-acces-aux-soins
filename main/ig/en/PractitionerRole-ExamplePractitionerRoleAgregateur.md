# ExamplePractitionerRoleAgregateur - Service d'Accès aux Soins v1.2.0

## Example PractitionerRole: ExamplePractitionerRoleAgregateur

-------

**English**

-------

Profile: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

Pierre Foret (Identifiant National de Professionnel de Santé: 810002909371) at id: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS: 412345678912345

-------

| | |
| :--- | :--- |
| Practitioner: | [Pierre Foret (Identifiant National de Professionnel de Santé: 810002909371)](Practitioner-ExamplePractitioner.md) |
| Organization: | Identifier: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS/412345678912345 |
| Location: | [Unnamed Location (Identifiant interne: 123456789)](#en-hcExamplePractitionerRoleAgregateur/ExampleLocation) |
| Contact Detail | [+33561855977](tel:+33561855977) |

-------

**Contained Resource**

-------

Profile: [FrLocationAgregateur](StructureDefinition-FrLocationAgregateur.md)

Unnamed Location (Identifiant interne: 123456789)

-------

| | |
| :--- | :--- |
| Address: | 25 CHEMIN DE MOUNESTIE Aussonne 31840 |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ExamplePractitionerRoleAgregateur",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"]
  },
  "contained" : [{
    "resourceType" : "Location",
    "id" : "ExampleLocation",
    "meta" : {
      "profile" : ["http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur"]
    },
    "identifier" : [{
      "type" : {
        "coding" : [{
          "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
          "code" : "INTRN"
        }]
      },
      "system" : "https://editeur.com",
      "value" : "123456789"
    }],
    "address" : {
      "line" : ["25 CHEMIN DE MOUNESTIE"],
      "city" : "Aussonne",
      "postalCode" : "31840"
    }
  }],
  "practitioner" : {
    "reference" : "Practitioner/ExamplePractitioner"
  },
  "organization" : {
    "identifier" : {
      "type" : {
        "coding" : [{
          "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
          "code" : "IDNST"
        }]
      },
      "system" : "urn:oid:1.2.250.1.71.4.2.2",
      "value" : "412345678912345"
    }
  },
  "location" : [{
    "reference" : "#ExampleLocation"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+33561855977"
  }]
}

```
