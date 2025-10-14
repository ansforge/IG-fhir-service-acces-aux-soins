# BundleAgregateurCPTS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BundleAgregateurCPTS**

## Resource Profile: BundleAgregateurCPTS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-bundle-aggregator | *Version*:1.1.0 |
| Active as of 2025-10-14 | *Computable Name*:BundleAgregateurCPTS |

 
Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - Cas d'usage CPTS 

**Usages:**

* Examples for this Profile: [Bundle/ExampleBundleCPTS1](Bundle-ExampleBundleCPTS1.md) and [Bundle/ExampleBundleCPTS2](Bundle-ExampleBundleCPTS2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-cpts-bundle-aggregator)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-cpts-bundle-aggregator.csv), [Excel](StructureDefinition-sas-cpts-bundle-aggregator.xlsx), [Schematron](StructureDefinition-sas-cpts-bundle-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-cpts-bundle-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-bundle-aggregator",
  "version" : "1.1.0",
  "name" : "BundleAgregateurCPTS",
  "status" : "active",
  "date" : "2025-10-14T09:08:01+00:00",
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
  "description" : "Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - Cas d'usage CPTS",
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
        "id" : "Bundle.total",
        "path" : "Bundle.total",
        "min" : 1
      },
      {
        "id" : "Bundle.link",
        "path" : "Bundle.link",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        },
        "min" : 4
      },
      {
        "id" : "Bundle.entry:slotAgregateurCPTS",
        "path" : "Bundle.entry",
        "sliceName" : "slotAgregateurCPTS",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:slotAgregateurCPTS.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:slotAgregateurCPTS.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Slot",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-slot-aggregator"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:scheduleAgregateurCPTS",
        "path" : "Bundle.entry",
        "sliceName" : "scheduleAgregateurCPTS",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:scheduleAgregateurCPTS.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:scheduleAgregateurCPTS.resource",
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
        "id" : "Bundle.entry:practitionerAgregateur",
        "path" : "Bundle.entry",
        "sliceName" : "practitionerAgregateur",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:practitionerAgregateur.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:practitionerAgregateur.resource",
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
        "id" : "Bundle.entry:practitionerRole",
        "path" : "Bundle.entry",
        "sliceName" : "practitionerRole",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:practitionerRole.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:practitionerRole.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:healthcareserviceCPTS",
        "path" : "Bundle.entry",
        "sliceName" : "healthcareserviceCPTS",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:healthcareserviceCPTS.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:healthcareserviceCPTS.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "HealthcareService",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:organizationAgregateurCPTS",
        "path" : "Bundle.entry",
        "sliceName" : "organizationAgregateurCPTS",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:organizationAgregateurCPTS.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:organizationAgregateurCPTS.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator"
            ]
          }
        ]
      }
    ]
  }
}

```
