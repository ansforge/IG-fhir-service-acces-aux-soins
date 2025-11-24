# FrAppointmentSAS - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrAppointmentSAS**

## Resource Profile: FrAppointmentSAS 

| | |
| :--- | :--- |
| *Official URL*:http://sas.fr/fhir/StructureDefinition/FrAppointmentSAS | *Version*:1.2.0 |
| Active as of 2025-11-24 | *Computable Name*:FrAppointmentSAS |

 
Profil de Appointment, dérivé de FrAppointment, pour le cas d'usage prise de RDV de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Usages:**

* Examples for this Profile: [Appointment/1](Appointment-1.md) and [Appointment/2](Appointment-2.md)
* CapabilityStatements using this Profile: [Profil SAS gestionnaire d'agenda RDV ps indiv](CapabilityStatement-SAS-GestionnaireAgenda-RDVpsindiv.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrAppointmentSAS)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrAppointmentSAS.csv), [Excel](StructureDefinition-FrAppointmentSAS.xlsx), [Schematron](StructureDefinition-FrAppointmentSAS.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrAppointmentSAS",
  "url" : "http://sas.fr/fhir/StructureDefinition/FrAppointmentSAS",
  "version" : "1.2.0",
  "name" : "FrAppointmentSAS",
  "status" : "active",
  "date" : "2025-11-24T09:10:21+00:00",
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
  "description" : "Profil de Appointment, dérivé de FrAppointment, pour le cas d'usage prise de RDV de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
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
        "min" : 1
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
        "min" : 1,
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
        "min" : 1,
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
        "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier",
        "path" : "Appointment.extension.value[x].identifier",
        "min" : 1
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
        "max" : "1"
      },
      {
        "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier.type.coding.system",
        "path" : "Appointment.extension.value[x].identifier.type.coding.system",
        "patternUri" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203"
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
        "id" : "Appointment.participant.actor.identifier.type",
        "path" : "Appointment.participant.actor.identifier.type",
        "min" : 1
      },
      {
        "id" : "Appointment.participant.actor.identifier.type.coding",
        "path" : "Appointment.participant.actor.identifier.type.coding",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
          "code" : "IDNPS"
        }
      },
      {
        "id" : "Appointment.participant.actor.identifier.system",
        "path" : "Appointment.participant.actor.identifier.system",
        "min" : 1,
        "patternUri" : "urn:oid:1.2.250.1.71.4.2.1"
      },
      {
        "id" : "Appointment.participant.actor.identifier.value",
        "path" : "Appointment.participant.actor.identifier.value",
        "min" : 1
      },
      {
        "id" : "Appointment.participant.status",
        "path" : "Appointment.participant.status",
        "patternCode" : "accepted"
      }
    ]
  }
}

```
