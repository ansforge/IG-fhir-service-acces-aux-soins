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
