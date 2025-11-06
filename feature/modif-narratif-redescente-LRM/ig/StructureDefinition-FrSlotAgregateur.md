# FrSlotAgregateur - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrSlotAgregateur**

## Resource Profile: FrSlotAgregateur 

| | |
| :--- | :--- |
| *Official URL*:http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur | *Version*:1.1.0 |
| Active as of 2025-11-06 | *Computable Name*:FrSlotAgregateur |

 
Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Usages:**

* Use this Profile: [BundleAgregateur](StructureDefinition-BundleAgregateur.md)
* Examples for this Profile: [Slot/ExampleSlotPSIndiv1](Slot-ExampleSlotPSIndiv1.md), [Slot/ExampleSlotPSIndiv2](Slot-ExampleSlotPSIndiv2.md), [Slot/ExampleSlotPSIndiv3](Slot-ExampleSlotPSIndiv3.md) and [Slot/ExampleSlotPSIndiv4](Slot-ExampleSlotPSIndiv4.md)
* CapabilityStatements using this Profile: [Profil SAS consommateur de créneaux](CapabilityStatement-SAS-Consommateur-psindiv.md) and [Profil SAS gestionnaire d'agenda PS Indiv](CapabilityStatement-SAS-GestionnaireAgenda-PsIndiv.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrSlotAgregateur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrSlotAgregateur.csv), [Excel](StructureDefinition-FrSlotAgregateur.xlsx), [Schematron](StructureDefinition-FrSlotAgregateur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrSlotAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur",
  "version" : "1.1.0",
  "name" : "FrSlotAgregateur",
  "status" : "active",
  "date" : "2025-11-06T14:31:44+00:00",
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
  "description" : "Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
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
          "description" : "type de créneau : public, pro, SNP",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J165-TypeCreneau-SAS/FHIR/JDV-J165-TypeCreneau-SAS"
        }
      },
      {
        "id" : "Slot.serviceType",
        "path" : "Slot.serviceType",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "rules" : "open"
        }
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
        "id" : "Slot.serviceType:TypeConsultation.coding.system",
        "path" : "Slot.serviceType.coding.system",
        "min" : 1,
        "patternUri" : "http://terminology.hl7.org/CodeSystem/v3-ActCode"
      },
      {
        "id" : "Slot.specialty",
        "path" : "Slot.specialty",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "specialty"
            }
          ],
          "strength" : "required",
          "description" : "Spécialités ou compétences particulières du PS associées au créneau",
          "valueSet" : "http://interopsante.org/fhir/ValueSet/fr-practitioner-specialty"
        }
      },
      {
        "id" : "Slot.appointmentType",
        "path" : "Slot.appointmentType",
        "short" : "Créneau avec ou sans RDV",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "appointment-type"
            }
          ],
          "strength" : "preferred",
          "description" : "ROUTINE – Créneau avec prise de RDV possible, WALKIN – Créneau sans prise de RDV possible",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0276"
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
            ],
            "aggregation" : ["referenced", "bundled"]
          }
        ]
      },
      {
        "id" : "Slot.status",
        "path" : "Slot.status",
        "fixedCode" : "free",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "SlotStatus"
            }
          ],
          "strength" : "required",
          "description" : "Statut du créneau free/busy",
          "valueSet" : "http://hl7.org/fhir/ValueSet/slotstatus"
        }
      },
      {
        "id" : "Slot.start",
        "path" : "Slot.start",
        "short" : "Date de début du créneau",
        "definition" : "Date de début du créneau"
      },
      {
        "id" : "Slot.end",
        "path" : "Slot.end",
        "short" : "Date de fin du créneau",
        "definition" : "Date de fin du créneau"
      },
      {
        "id" : "Slot.comment",
        "path" : "Slot.comment",
        "short" : "URL permettant d’accéder à la prise de RDV relative à ce créneau",
        "definition" : "URL permettant d’accéder à la prise de RDV relative à ce créneau"
      }
    ]
  }
}

```
