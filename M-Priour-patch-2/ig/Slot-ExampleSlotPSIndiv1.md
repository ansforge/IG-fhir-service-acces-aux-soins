# ExampleSlotPSIndiv1 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleSlotPSIndiv1**

## Example Slot: ExampleSlotPSIndiv1

Profil: [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md)

Label de sécurité: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public')

**serviceType**: ambulatory, virtual, Visite de contrôle

**specialty**: Médecine générale (SM), Chirurgie générale (SM)

**appointmentType**: Routine appointment - default if not valued

**schedule**: [Schedule](Schedule-ExampleSchedule1.md)

**status**: Free

**start**: 2021-11-05 09:00:00+0000

**end**: 2021-11-05 09:30:00+0000

**comment**: https://exemple.com/rdv/com/



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "ExampleSlotPSIndiv1",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur"],
    "security" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
        "code" : "PUBLIC"
      }
    ]
  },
  "serviceType" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "AMB"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "VR"
        }
      ]
    },
    {
      "text" : "Visite de contrôle"
    }
  ],
  "specialty" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
          "code" : "SM54"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
          "code" : "SM05"
        }
      ]
    }
  ],
  "appointmentType" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
        "code" : "ROUTINE"
      }
    ]
  },
  "schedule" : {
    "reference" : "Schedule/ExampleSchedule1"
  },
  "status" : "free",
  "start" : "2021-11-05T09:00:00.000+00:00",
  "end" : "2021-11-05T09:30:00.000+00:00",
  "comment" : "https://exemple.com/rdv/com/"
}

```
