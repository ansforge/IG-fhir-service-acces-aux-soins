# SASHealthcareServiceLRM - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SASHealthcareServiceLRM**

## Resource Profile: SASHealthcareServiceLRM 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-healthcareservice-lrm | *Version*:1.1.0 |
| Active as of 2025-10-09 | *Computable Name*:SASHealthcareServiceLRM |

 
Profil dérivé de FR Core Healthcare Service Profile dans le cadre de l'usage des flux du SAS 

**Usages:**

* Use this Profile: [SASBundleAppointmentLRM](StructureDefinition-sas-bundle-appointment-lrm.md)
* Refer to this Profile: [SASAppointmentLRM](StructureDefinition-sas-appointment-lrm.md)
* Examples for this Profile: [HealthcareService/ExampleHealthcareService1](HealthcareService-ExampleHealthcareService1.md) and [HealthcareService/ExampleHealthcareService2](HealthcareService-ExampleHealthcareService2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-healthcareservice-lrm)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-healthcareservice-lrm.csv), [Excel](StructureDefinition-sas-healthcareservice-lrm.xlsx), [Schematron](StructureDefinition-sas-healthcareservice-lrm.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-healthcareservice-lrm",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-healthcareservice-lrm",
  "version" : "1.1.0",
  "name" : "SASHealthcareServiceLRM",
  "status" : "active",
  "date" : "2025-10-09T08:55:21+00:00",
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
  "description" : "Profil dérivé de FR Core Healthcare Service Profile dans le cadre de l'usage des flux du SAS",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HealthcareService.meta.profile:sas-healthcareservice",
        "path" : "HealthcareService.meta.profile",
        "sliceName" : "sas-healthcareservice",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-healthcareservice-lrm"
      },
      {
        "id" : "HealthcareService.providedBy",
        "path" : "HealthcareService.providedBy",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-organization-lrm"
            ]
          }
        ]
      }
    ]
  }
}

```
