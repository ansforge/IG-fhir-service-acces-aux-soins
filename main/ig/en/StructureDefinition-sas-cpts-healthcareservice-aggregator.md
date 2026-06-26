# FrHealthcareServiceAgregateurCPTS - Service d'Accès aux Soins v1.2.0

## Resource Profile: FrHealthcareServiceAgregateurCPTS 

 
Profil dérivé de FrHealthcareService pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS 

**Usages:**

* Use this Profile: [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Refer to this Profile: [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)
* Examples for this Profile: [HealthcareService/ExampleHealthcareServiceCPTS1](HealthcareService-ExampleHealthcareServiceCPTS1.md) and [HealthcareService/ExampleHealthcareServiceCPTS2](HealthcareService-ExampleHealthcareServiceCPTS2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.sas|current/StructureDefinition/StructureDefinition-sas-cpts-healthcareservice-aggregator.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-sas-cpts-healthcareservice-aggregator.csv), [Excel](../StructureDefinition-sas-cpts-healthcareservice-aggregator.xlsx), [Schematron](../StructureDefinition-sas-cpts-healthcareservice-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-cpts-healthcareservice-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator",
  "version" : "1.2.0",
  "name" : "FrHealthcareServiceAgregateurCPTS",
  "status" : "active",
  "date" : "2026-06-26T14:40:16+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil dérivé de FrHealthcareService pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrHealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService.id",
      "path" : "HealthcareService.id",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.providedBy",
      "path" : "HealthcareService.providedBy",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator"]
      }],
      "mustSupport" : true
    }]
  }
}

```
