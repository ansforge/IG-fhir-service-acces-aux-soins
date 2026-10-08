# ExamplePractitionerRoleAgregateur - Service d'Accès aux Soins v1.2.0

## Example PractitionerRole: ExamplePractitionerRoleAgregateur



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
