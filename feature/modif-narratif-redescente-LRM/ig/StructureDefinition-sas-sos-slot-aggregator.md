# FrSlotAgregateurSOS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrSlotAgregateurSOS**

## Resource Profile: FrSlotAgregateurSOS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator | *Version*:1.1.0 |
| Active as of 2025-11-05 | *Computable Name*:FrSlotAgregateurSOS |

 
Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Usages:**

* Use this Profile: [BundleAgregateurSOS](StructureDefinition-sas-sos-bundle-aggregator.md)
* Examples for this Profile: [Slot/ExampleSlotSOS1](Slot-ExampleSlotSOS1.md), [Slot/ExampleSlotSOS2](Slot-ExampleSlotSOS2.md), [Slot/ExampleSlotSOS3](Slot-ExampleSlotSOS3.md) and [Slot/ExampleSlotSOS4](Slot-ExampleSlotSOS4.md)
* CapabilityStatements using this Profile: [Profil SAS consommateur de créneaux SOS](CapabilityStatement-SAS-Consommateur-SOS.md) and [Profil SAS gestionnaire d'agenda SOS](CapabilityStatement-SAS-GestionnaireAgenda-SOS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-sos-slot-aggregator)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-sos-slot-aggregator.csv), [Excel](StructureDefinition-sas-sos-slot-aggregator.xlsx), [Schematron](StructureDefinition-sas-sos-slot-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-slot-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator",
  "version" : "1.1.0",
  "name" : "FrSlotAgregateurSOS",
  "status" : "active",
  "date" : "2025-11-05T08:44:55+00:00",
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
  "description" : "Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins",
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
  "type" : "Slot",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrSlot",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Slot.meta.security",
        "path" : "Slot.meta.security",
        "binding" : {
          "strength" : "required",
          "description" : "type de créneau : public, SNP",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-sos-valueset-typecreneau"
        }
      },
      {
        "id" : "Slot.serviceType.coding",
        "path" : "Slot.serviceType.coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-typeconsultation"
        }
      },
      {
        "id" : "Slot.appointmentType.coding",
        "path" : "Slot.appointmentType.coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-appointmentreason"
        }
      },
      {
        "id" : "Slot.schedule",
        "path" : "Slot.schedule",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator"
            ]
          }
        ]
      },
      {
        "id" : "Slot.status",
        "path" : "Slot.status",
        "patternCode" : "free"
      }
    ]
  }
}

```
