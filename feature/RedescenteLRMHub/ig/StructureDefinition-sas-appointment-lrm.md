# SASAppointmentLRM - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SASAppointmentLRM**

## Resource Profile: SASAppointmentLRM 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-appointment-lrm | *Version*:1.1.0 |
| Active as of 2025-10-09 | *Computable Name*:SASAppointmentLRM |

 
Profil de Appointment, dérivé de FrAppointment, pour le cas d'usage d'envoi des RDV consolidés de la PTF aux logiciels de LRM 

**Usages:**

* Use this Profile: [SASBundleAppointmentLRM](StructureDefinition-sas-bundle-appointment-lrm.md)
* Examples for this Profile: [Appointment/ExampleAppointmentLRM1](Appointment-ExampleAppointmentLRM1.md), [Appointment/ExampleAppointmentLRM2](Appointment-ExampleAppointmentLRM2.md), [Appointment/ExampleAppointmentLRM3](Appointment-ExampleAppointmentLRM3.md), [Appointment/ExampleAppointmentLRM4](Appointment-ExampleAppointmentLRM4.md)...Show 4 more,[Appointment/ExampleAppointmentLRM5](Appointment-ExampleAppointmentLRM5.md),[Appointment/ExampleAppointmentLRM6](Appointment-ExampleAppointmentLRM6.md),[Appointment/ExampleAppointmentLRM7](Appointment-ExampleAppointmentLRM7.md)and[Appointment/ExampleAppointmentLRM8](Appointment-ExampleAppointmentLRM8.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-appointment-lrm)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-appointment-lrm.csv), [Excel](StructureDefinition-sas-appointment-lrm.xlsx), [Schematron](StructureDefinition-sas-appointment-lrm.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-appointment-lrm",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-appointment-lrm",
  "version" : "1.1.0",
  "name" : "SASAppointmentLRM",
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
  "description" : "Profil de Appointment, dérivé de FrAppointment, pour le cas d'usage d'envoi des RDV consolidés de la PTF aux logiciels de LRM",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "ical",
      "uri" : "http://ietf.org/rfc/2445",
      "name" : "iCalendar"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Appointment",
        "path" : "Appointment"
      },
      {
        "id" : "Appointment.meta.profile:sas-appointment-ds",
        "path" : "Appointment.meta.profile",
        "sliceName" : "sas-appointment-ds",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-appointment-lrm"
      },
      {
        "id" : "Appointment.extension:categorieOrientation",
        "path" : "Appointment.extension",
        "sliceName" : "categorieOrientation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-categorie-orientation"
            ]
          }
        ]
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
        "patternUri" : "urn:oid:1.2.250.1.213.3.6.2"
      },
      {
        "id" : "Appointment.identifier.value",
        "path" : "Appointment.identifier.value",
        "min" : 1
      },
      {
        "id" : "Appointment.status",
        "path" : "Appointment.status",
        "short" : "Statuts exploités par la PTF SAS : PENDING, BOOKED, NOSHOW, CANCELLED"
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
        "min" : 1
      },
      {
        "id" : "Appointment.participant.type",
        "path" : "Appointment.participant.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-appointmentparticipanttype"
        }
      },
      {
        "id" : "Appointment.participant.actor",
        "path" : "Appointment.participant.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-lrm",
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-healthcareservice-lrm"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Appointment.participant.status",
        "path" : "Appointment.participant.status",
        "short" : "Statuts exploités par la PTF SAS : ACCEPTED, NEEDS-ACTION",
        "mustSupport" : true
      }
    ]
  }
}

```
