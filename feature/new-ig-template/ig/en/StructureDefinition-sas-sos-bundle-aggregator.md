# BundleAgregateurSOS - Service d'Accès aux Soins v1.2.0

## Resource Profile: BundleAgregateurSOS 

 
Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Usages:**

* Examples for this Profile: [Bundle/ExampleBundleAgregateurSOS](Bundle-ExampleBundleAgregateurSOS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.sas|current/StructureDefinition/StructureDefinition-sas-sos-bundle-aggregator.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-sas-sos-bundle-aggregator.csv), [Excel](../StructureDefinition-sas-sos-bundle-aggregator.xlsx), [Schematron](../StructureDefinition-sas-sos-bundle-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-bundle-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-bundle-aggregator",
  "version" : "1.2.0",
  "name" : "BundleAgregateurSOS",
  "status" : "active",
  "date" : "2026-06-12T13:24:30+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
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
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "min" : 4
    },
    {
      "id" : "Bundle.entry:slotAgregateurSOS",
      "path" : "Bundle.entry",
      "sliceName" : "slotAgregateurSOS",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:slotAgregateurSOS.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:slotAgregateurSOS.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Slot",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator"]
      }]
    },
    {
      "id" : "Bundle.entry:scheduleAgregateurSOS",
      "path" : "Bundle.entry",
      "sliceName" : "scheduleAgregateurSOS",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:scheduleAgregateurSOS.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:scheduleAgregateurSOS.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Schedule",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator"]
      }]
    },
    {
      "id" : "Bundle.entry:locationAgregateurSOS",
      "path" : "Bundle.entry",
      "sliceName" : "locationAgregateurSOS",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:locationAgregateurSOS.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:locationAgregateurSOS.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Location",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator"]
      }]
    },
    {
      "id" : "Bundle.entry:organizationAgregateurSOS",
      "path" : "Bundle.entry",
      "sliceName" : "organizationAgregateurSOS",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:organizationAgregateurSOS.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:organizationAgregateurSOS.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator"]
      }]
    }]
  }
}

```
