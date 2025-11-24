# ExamplePractitionerRoleAgregateur4 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExamplePractitionerRoleAgregateur4**

## Example PractitionerRole: ExamplePractitionerRoleAgregateur4

Profil: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

**practitioner**: [Practitioner Guillaume MARCEL](Practitioner-ExamplePractitioner3.md)

**organization**: Identifier: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS/1810004421

**location**: [Location : identifier = Identifiant interne](#hcExamplePractitionerRoleAgregateur4/ExampleLocation3)

**telecom**: [+33658913859](tel:+33658913859)

-------

> **Narratif généré : Localisation #ExampleLocation3**

Profil: [FrLocationAgregateur](StructureDefinition-FrLocationAgregateur.md)

**identifier**: Identifiant interne/1**address**: 1 rue Mme DELMAS AGEN 47000



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ExamplePractitionerRoleAgregateur4",
  "meta" : {
    "profile" : [
      "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Location",
      "id" : "ExampleLocation3",
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
          "system" : "urn:oid:1.1.111.1.111.1.1.1",
          "value" : "1"
        }
      ],
      "address" : {
        "line" : ["1 rue Mme DELMAS"],
        "city" : "AGEN",
        "postalCode" : "47000"
      }
    }
  ],
  "practitioner" : {
    "reference" : "Practitioner/ExamplePractitioner3"
  },
  "organization" : {
    "identifier" : {
      "type" : {
        "coding" : [
          {
            "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
            "code" : "IDNST"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.71.4.2.2",
      "value" : "1810004421"
    }
  },
  "location" : [
    {
      "reference" : "#ExampleLocation3"
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+33658913859"
    }
  ]
}

```
