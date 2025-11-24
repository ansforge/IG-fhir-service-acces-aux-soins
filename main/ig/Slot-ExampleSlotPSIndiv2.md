# ExampleSlotPSIndiv2 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleSlotPSIndiv2**

## Example Slot: ExampleSlotPSIndiv2

Profil: [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md)

Label de sécurité: Créneau accessible par l'ensemble des professionnels de santé (Détails : code TRE_R314-TypeCreneau PRO = 'Créneau accessible par l'ensemble des professionnels de santé')

**serviceType**: ambulatory, Visite urgente

**specialty**: Médecine générale (SM)

**appointmentType**: A previously unscheduled walk-in visit

**schedule**: [Schedule](Schedule-ExampleSchedule2.md)

**status**: Free

**start**: 2021-11-05 11:00:00+0000

**end**: 2021-11-05 11:30:00+0000



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "ExampleSlotPSIndiv2",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur"],
    "security" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
        "code" : "PRO"
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
      "text" : "Visite urgente"
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
    }
  ],
  "appointmentType" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
        "code" : "WALKIN"
      }
    ]
  },
  "schedule" : {
    "reference" : "Schedule/ExampleSchedule2"
  },
  "status" : "free",
  "start" : "2021-11-05T11:00:00.000+00:00",
  "end" : "2021-11-05T11:30:00.000+00:00"
}

```
