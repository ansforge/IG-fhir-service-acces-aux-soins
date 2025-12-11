# ExamplePractitionerRoleAgregateur - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExamplePractitionerRoleAgregateur**

## Example PractitionerRole: ExamplePractitionerRoleAgregateur

Profil: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

**practitioner**: [Practitioner Pierre Foret](Practitioner-ExamplePractitioner.md)

**organization**: Identifier: 412345678912345

**location**: [Location : identifier = Identifiant interne](#hcExamplePractitionerRoleAgregateur/ExampleLocation)

**telecom**: [+33561855977](tel:+33561855977)

-------

> **Narratif généré : Localisation #ExampleLocation**

Profil: [FrLocationAgregateur](StructureDefinition-FrLocationAgregateur.md)

**identifier**: Identifiant interne/123456789**address**: 25 CHEMIN DE MOUNESTIE Aussonne 31840



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ExamplePractitionerRoleAgregateur",
  "meta" : {
    "profile" : [
      "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Location",
      "id" : "ExampleLocation",
      "meta" : {
        "profile" : [
          "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur"
        ]
      },
      "identifier" : [
        {
          "type" : {
            "coding" : [
              {
                "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
                "code" : "INTRN"
              }
            ]
          },
          "system" : "https://editeur.com",
          "value" : "123456789"
        }
      ],
      "address" : {
        "line" : ["25 CHEMIN DE MOUNESTIE"],
        "city" : "Aussonne",
        "postalCode" : "31840"
      }
    }
  ],
  "practitioner" : {
    "reference" : "Practitioner/ExamplePractitioner"
  },
  "organization" : {
    "identifier" : {
      "value" : "412345678912345"
    }
  },
  "location" : [
    {
      "reference" : "#ExampleLocation"
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+33561855977"
    }
  ]
}

```
