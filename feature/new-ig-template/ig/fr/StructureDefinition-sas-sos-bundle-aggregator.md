# BundleAgregateurSOS - Service d'Accès aux Soins v1.2.0

## Profil de ressource: BundleAgregateurSOS 

 
Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Bundle/ExampleBundleAgregateurSOS](Bundle-ExampleBundleAgregateurSOS.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-sos-bundle-aggregator)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Résumé **

Obligatoire : 10 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FrSlotAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator)](StructureDefinition-sas-sos-slot-aggregator.md)
* [FrScheduleAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator)](StructureDefinition-sas-sos-schedule-aggregator.md)
* [FrLocationAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator)](StructureDefinition-sas-sos-location-aggregator.md)
* [FrOrganizationAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator)](StructureDefinition-sas-sos-organization-aggregator.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Bundle.entry

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Résumé **

Obligatoire : 10 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FrSlotAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator)](StructureDefinition-sas-sos-slot-aggregator.md)
* [FrScheduleAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator)](StructureDefinition-sas-sos-schedule-aggregator.md)
* [FrLocationAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator)](StructureDefinition-sas-sos-location-aggregator.md)
* [FrOrganizationAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator)](StructureDefinition-sas-sos-organization-aggregator.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Bundle.entry

 

Autres représentations du profil : [CSV](../StructureDefinition-sas-sos-bundle-aggregator.csv), [Excel](../StructureDefinition-sas-sos-bundle-aggregator.xlsx), [Schematron](../StructureDefinition-sas-sos-bundle-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-bundle-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-bundle-aggregator",
  "version" : "1.2.0",
  "name" : "BundleAgregateurSOS",
  "status" : "active",
  "date" : "2026-06-12T14:36:22+00:00",
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
