# FrScheduleAgregateurSOS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrScheduleAgregateurSOS**

## Resource Profile: FrScheduleAgregateurSOS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator | *Version*:1.1.0 |
| Active as of 2025-10-14 | *Computable Name*:FrScheduleAgregateurSOS |

 
Profil de Schedule, dérivé de FrSchedule, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Usages:**

* Use this Profile: [BundleAgregateurSOS](StructureDefinition-sas-sos-bundle-aggregator.md)
* Refer to this Profile: [FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md)
* Examples for this Profile: [Schedule/ExampleScheduleSOS1](Schedule-ExampleScheduleSOS1.md), [Schedule/ExampleScheduleSOS2](Schedule-ExampleScheduleSOS2.md) and [Schedule/ExampleScheduleSOS3](Schedule-ExampleScheduleSOS3.md)
* CapabilityStatements using this Profile: [Profil SAS consommateur de créneaux SOS](CapabilityStatement-SAS-Consommateur-SOS.md) and [Profil SAS gestionnaire d'agenda SOS](CapabilityStatement-SAS-GestionnaireAgenda-SOS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-sos-schedule-aggregator)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-sos-schedule-aggregator.csv), [Excel](StructureDefinition-sas-sos-schedule-aggregator.xlsx), [Schematron](StructureDefinition-sas-sos-schedule-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-schedule-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator",
  "version" : "1.1.0",
  "name" : "FrScheduleAgregateurSOS",
  "status" : "active",
  "date" : "2025-10-14T07:48:21+00:00",
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
  "description" : "Profil de Schedule, dérivé de FrSchedule, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins",
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
  "type" : "Schedule",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrSchedule",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Schedule.actor",
        "path" : "Schedule.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://interopsante.org/fhir/StructureDefinition/FrLocation"
            ]
          }
        ]
      },
      {
        "id" : "Schedule.actor.reference",
        "path" : "Schedule.actor.reference",
        "min" : 1
      }
    ]
  }
}

```
