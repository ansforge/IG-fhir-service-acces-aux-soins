# FrAppointmentSASSOS - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrAppointmentSASSOS**

## Resource Profile: FrAppointmentSASSOS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-appointment | *Version*:1.2.0 |
| Active as of 2025-11-25 | *Computable Name*:FrAppointmentSASSOS |

 
Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Usages:**

* CapabilityStatements using this Profile: [Profil SAS gestionnaire d'agenda RDV SOS](CapabilityStatement-SAS-GestionnaireAgenda-RDVSOS.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-sos-appointment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-sos-appointment.csv), [Excel](StructureDefinition-sas-sos-appointment.xlsx), [Schematron](StructureDefinition-sas-sos-appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-appointment",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-appointment",
  "version" : "1.2.0",
  "name" : "FrAppointmentSASSOS",
  "status" : "active",
  "date" : "2025-11-25T08:03:17+00:00",
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
  "type" : "Appointment",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrAppointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Appointment",
        "path" : "Appointment"
      },
      {
        "id" : "Appointment.extension",
        "path" : "Appointment.extension",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Appointment.extension:appointmentOperator",
        "path" : "Appointment.extension",
        "sliceName" : "appointmentOperator",
        "min" : 1
      },
      {
        "id" : "Appointment.extension:appointmentOperator.extension",
        "path" : "Appointment.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Appointment.extension:appointmentOperator.value[x]",
        "path" : "Appointment.extension.value[x]",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference",
        "path" : "Appointment.extension.value[x]",
        "sliceName" : "valueReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://interopsante.org/fhir/StructureDefinition/FrOrganization",
              "http://interopsante.org/fhir/StructureDefinition/FrPractitioner",
              "http://interopsante.org/fhir/StructureDefinition/FrPatient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier.type",
        "path" : "Appointment.extension.value[x].identifier.type",
        "min" : 1
      },
      {
        "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier.type.coding",
        "path" : "Appointment.extension.value[x].identifier.type.coding",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-typeidentifiant"
        }
      },
      {
        "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier.type.coding.code",
        "path" : "Appointment.extension.value[x].identifier.type.coding.code",
        "min" : 1
      },
      {
        "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier.system",
        "path" : "Appointment.extension.value[x].identifier.system",
        "min" : 1
      },
      {
        "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier.value",
        "path" : "Appointment.extension.value[x].identifier.value",
        "min" : 1
      },
      {
        "id" : "Appointment.identifier",
        "path" : "Appointment.identifier",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Appointment.identifier.system",
        "path" : "Appointment.identifier.system",
        "min" : 1
      },
      {
        "id" : "Appointment.identifier.value",
        "path" : "Appointment.identifier.value",
        "min" : 1
      },
      {
        "id" : "Appointment.start",
        "path" : "Appointment.start",
        "min" : 1
      },
      {
        "id" : "Appointment.end",
        "path" : "Appointment.end",
        "min" : 1
      },
      {
        "id" : "Appointment.created",
        "path" : "Appointment.created",
        "mustSupport" : true
      },
      {
        "id" : "Appointment.participant.status",
        "path" : "Appointment.participant.status",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-sos-valueset-participant-status"
        }
      }
    ]
  }
}

```
