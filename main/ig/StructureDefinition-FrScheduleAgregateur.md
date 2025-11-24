# FrScheduleAgregateur - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrScheduleAgregateur**

## Resource Profile: FrScheduleAgregateur 

| | |
| :--- | :--- |
| *Official URL*:http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur | *Version*:1.2.0 |
| Active as of 2025-11-24 | *Computable Name*:FrScheduleAgregateur |

 
Profil de Schedule, dérivé de FrSchedule, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Usages:**

* Use this Profile: [BundleAgregateur](StructureDefinition-BundleAgregateur.md) and [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Refer to this Profile: [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md) and [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)
* Examples for this Profile: [Schedule/ExampleSchedule](Schedule-ExampleSchedule.md), [Schedule/ExampleSchedule1](Schedule-ExampleSchedule1.md), [Schedule/ExampleSchedule2](Schedule-ExampleSchedule2.md) and [Schedule/ExampleSchedule3](Schedule-ExampleSchedule3.md)
* CapabilityStatements using this Profile: [Profil SAS consommateur de créneaux CPTS](CapabilityStatement-SAS-Consommateur-CPTS.md), [Profil SAS consommateur de créneaux](CapabilityStatement-SAS-Consommateur-psindiv.md), [Profil SAS gestionnaire d'agenda CPTS](CapabilityStatement-SAS-GestionnaireAgenda-CPTS.md) and [Profil SAS gestionnaire d'agenda PS Indiv](CapabilityStatement-SAS-GestionnaireAgenda-PsIndiv.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrScheduleAgregateur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrScheduleAgregateur.csv), [Excel](StructureDefinition-FrScheduleAgregateur.xlsx), [Schematron](StructureDefinition-FrScheduleAgregateur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrScheduleAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur",
  "version" : "1.2.0",
  "name" : "FrScheduleAgregateur",
  "status" : "active",
  "date" : "2025-11-24T14:06:07+00:00",
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
  "description" : "Profil de Schedule, dérivé de FrSchedule, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
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
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "http://interopsante.org/fhir/StructureDefinition/FrRelatedPerson",
              "http://interopsante.org/fhir/StructureDefinition/FrHealthcareService",
              "http://interopsante.org/fhir/StructureDefinition/FrLocation",
              "http://interopsante.org/fhir/StructureDefinition/FrPatient",
              "http://interopsante.org/fhir/StructureDefinition/FrPractitioner"
            ],
            "aggregation" : ["referenced", "bundled"]
          }
        ]
      }
    ]
  }
}

```
