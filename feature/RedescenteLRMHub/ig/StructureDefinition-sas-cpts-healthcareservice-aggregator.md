# FrHealthcareServiceAgregateurCPTS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrHealthcareServiceAgregateurCPTS**

## Resource Profile: FrHealthcareServiceAgregateurCPTS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator | *Version*:1.1.0 |
| Active as of 2025-10-28 | *Computable Name*:FrHealthcareServiceAgregateurCPTS |

 
Profil dérivé de FrHealthcareService pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS 

**Usages:**

* Use this Profile: [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Refer to this Profile: [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)
* Examples for this Profile: [HealthcareService/ExampleHealthcareServiceCPTS1](HealthcareService-ExampleHealthcareServiceCPTS1.md) and [HealthcareService/ExampleHealthcareServiceCPTS2](HealthcareService-ExampleHealthcareServiceCPTS2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-cpts-healthcareservice-aggregator)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-cpts-healthcareservice-aggregator.csv), [Excel](StructureDefinition-sas-cpts-healthcareservice-aggregator.xlsx), [Schematron](StructureDefinition-sas-cpts-healthcareservice-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-cpts-healthcareservice-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator",
  "version" : "1.1.0",
  "name" : "FrHealthcareServiceAgregateurCPTS",
  "status" : "active",
  "date" : "2025-10-28T16:18:27+00:00",
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
  "description" : "Profil dérivé de FrHealthcareService pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS",
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
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrHealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HealthcareService.id",
        "path" : "HealthcareService.id",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.providedBy",
        "path" : "HealthcareService.providedBy",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
