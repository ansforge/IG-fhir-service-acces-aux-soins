# ExamplePractitionerRoleAgregateur3 - Service d'Accès aux Soins v1.2.0

## Example PractitionerRole: ExamplePractitionerRoleAgregateur3



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ExamplePractitionerRoleAgregateur3",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"]
  },
  "contained" : [{
    "resourceType" : "Location",
    "id" : "ExampleLocation2",
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
      "value" : "2"
    }],
    "address" : {
      "line" : ["30 rue Mme DELMAS"],
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
      "value" : "1810004956"
    }
  },
  "location" : [{
    "reference" : "#ExampleLocation2"
  }]
}

```
