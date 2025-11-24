# FrSlotAgregateurCPTS - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrSlotAgregateurCPTS**

## Resource Profile: FrSlotAgregateurCPTS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-slot-aggregator | *Version*:1.2.0 |
| Active as of 2025-11-24 | *Computable Name*:FrSlotAgregateurCPTS |

 
Profil de Slot, dérivé de FrSlot, pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS 

**Usages:**

* Use this Profile: [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Examples for this Profile: [Slot/ExampleSlotCPTS1](Slot-ExampleSlotCPTS1.md) and [Slot/ExampleSlotCPTS2](Slot-ExampleSlotCPTS2.md)
* CapabilityStatements using this Profile: [Profil SAS consommateur de créneaux CPTS](CapabilityStatement-SAS-Consommateur-CPTS.md) and [Profil SAS gestionnaire d'agenda CPTS](CapabilityStatement-SAS-GestionnaireAgenda-CPTS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-cpts-slot-aggregator)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-cpts-slot-aggregator.csv), [Excel](StructureDefinition-sas-cpts-slot-aggregator.xlsx), [Schematron](StructureDefinition-sas-cpts-slot-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-cpts-slot-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-slot-aggregator",
  "version" : "1.2.0",
  "name" : "FrSlotAgregateurCPTS",
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
  "description" : "Profil de Slot, dérivé de FrSlot, pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS",
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
        "short" : "type de créneau : public, pro, SNP, CPTS",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-cpts-valueset-typecreneau"
        }
      },
      {
        "id" : "Slot.serviceType",
        "path" : "Slot.serviceType",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Slot.serviceType.extension:sas-servicetype-r5",
        "path" : "Slot.serviceType.extension",
        "sliceName" : "sas-servicetype-r5",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType"
            ]
          }
        ]
      },
      {
        "id" : "Slot.serviceType:TypeConsultation",
        "path" : "Slot.serviceType",
        "sliceName" : "TypeConsultation",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
        }
      },
      {
        "id" : "Slot.serviceType:TypeConsultation.extension:sas-servicetype-r5",
        "path" : "Slot.serviceType.extension",
        "sliceName" : "sas-servicetype-r5",
        "min" : 0,
        "max" : "0",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType"
            ]
          }
        ]
      },
      {
        "id" : "Slot.serviceType:TypeConsultation.coding.system",
        "path" : "Slot.serviceType.coding.system",
        "patternUri" : "http://terminology.hl7.org/CodeSystem/v3-ActCode"
      },
      {
        "id" : "Slot.serviceType:referencecpts",
        "path" : "Slot.serviceType",
        "sliceName" : "referencecpts",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-categorieetablissement"
        }
      },
      {
        "id" : "Slot.serviceType:referencecpts.extension",
        "path" : "Slot.serviceType.extension",
        "min" : 1
      },
      {
        "id" : "Slot.serviceType:referencecpts.extension:sas-servicetype-r5",
        "path" : "Slot.serviceType.extension",
        "sliceName" : "sas-servicetype-r5",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType"
            ]
          }
        ]
      },
      {
        "id" : "Slot.serviceType:referencecpts.extension:sas-servicetype-r5.value[x]",
        "path" : "Slot.serviceType.extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator"
            ]
          }
        ]
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
              "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
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
