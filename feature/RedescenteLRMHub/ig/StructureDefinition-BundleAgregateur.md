# BundleAgregateur - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BundleAgregateur**

## Resource Profile: BundleAgregateur 

| | |
| :--- | :--- |
| *Official URL*:http://sas.fr/fhir/StructureDefinition/BundleAgregateur | *Version*:1.1.0 |
| Active as of 2025-10-29 | *Computable Name*:BundleAgregateur |

 
Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - Cas d'usage PS Indiv 

**Usages:**

* Examples for this Profile: [Bundle/ExampleBundlePSIndiv](Bundle-ExampleBundlePSIndiv.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/BundleAgregateur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleAgregateur.csv), [Excel](StructureDefinition-BundleAgregateur.xlsx), [Schematron](StructureDefinition-BundleAgregateur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/BundleAgregateur",
  "version" : "1.1.0",
  "name" : "BundleAgregateur",
  "status" : "active",
  "date" : "2025-10-29T14:06:34+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - Cas d'usage PS Indiv",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "searchset"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Bundle.entry:FrSlotAgregateur",
        "path" : "Bundle.entry",
        "sliceName" : "FrSlotAgregateur",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:FrSlotAgregateur.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Slot",
            "profile" : ["http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:FrScheduleAgregateur",
        "path" : "Bundle.entry",
        "sliceName" : "FrScheduleAgregateur",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:FrScheduleAgregateur.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Schedule",
            "profile" : [
              "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:FrPractitionerAgregateur",
        "path" : "Bundle.entry",
        "sliceName" : "FrPractitionerAgregateur",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:FrPractitionerAgregateur.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:FrPractitionerRoleExerciceAgregateur",
        "path" : "Bundle.entry",
        "sliceName" : "FrPractitionerRoleExerciceAgregateur",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:FrPractitionerRoleExerciceAgregateur.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"
            ]
          }
        ]
      }
    ]
  }
}

```
