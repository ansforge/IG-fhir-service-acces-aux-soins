# ExamplePractitionerRoleAgregateur2 - Service d'Accès aux Soins v1.2.0

## Example PractitionerRole: ExamplePractitionerRoleAgregateur2

-------

**English**

-------

Profile: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

Sébastien THOMAS (Identifiant National de Professionnel de Santé: 810100050075) at id: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS: 1810004421

-------

| | |
| :--- | :--- |
| Practitioner: | [Sébastien THOMAS (Identifiant National de Professionnel de Santé: 810100050075)](Practitioner-ExamplePractitioner2.md) |
| Organization: | Identifier: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS/1810004421 |
| Location: | [Unnamed Location (Identifiant interne: 1)](#en-hcExamplePractitionerRoleAgregateur2/ExampleLocation3) |

-------

**Contained Resource**

-------

Profile: [FrLocationAgregateur](StructureDefinition-FrLocationAgregateur.md)

Unnamed Location (Identifiant interne: 1)

-------

| | |
| :--- | :--- |
| Address: | 1 rue Mme DELMAS AGEN 47000 |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ExamplePractitionerRoleAgregateur2",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"]
  },
  "contained" : [{
    "resourceType" : "Location",
    "id" : "ExampleLocation3",
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
      "system" : "urn:oid:1.1.111.1.111.1.1.1",
      "value" : "1"
    }],
    "address" : {
      "line" : ["1 rue Mme DELMAS"],
      "city" : "AGEN",
      "postalCode" : "47000"
    }
  }],
  "practitioner" : {
    "reference" : "Practitioner/ExamplePractitioner2"
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
      "value" : "1810004421"
    }
  },
  "location" : [{
    "reference" : "#ExampleLocation3"
  }]
}

```
