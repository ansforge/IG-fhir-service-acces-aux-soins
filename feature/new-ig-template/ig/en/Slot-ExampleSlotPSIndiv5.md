# ExampleSlotPSIndiv5 - Service d'Accès aux Soins v1.2.0

## Example Slot: ExampleSlotPSIndiv5

-------

**English**

-------

Profile: [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md)

Security Label: [Créneau accessible par l'ensemble des professionnels de santé (Details: TRE_R314_TypeCreneau code PRO = 'Créneau accessible par l'ensemble des professionnels de santé')](https://smt.esante.gouv.fr/fhir/ValueSet/TRE-R314-TypeCreneau)

**serviceType**: ambulatory, Visite urgente

**specialty**: Médecine générale

**appointmentType**: A previously unscheduled walk-in visit

**schedule**: [Schedule](Schedule-ExampleSchedule2.md)

**status**: Free

**start**: 2021-11-05 11:00:00+0000

**end**: 2021-11-05 11:30:00+0000



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "ExampleSlotPSIndiv5",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur"],
    "security" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
      "code" : "PRO"
    }]
  },
  "serviceType" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "AMB"
    }]
  },
  {
    "text" : "Visite urgente"
  }],
  "specialty" : [{
    "text" : "Médecine générale"
  }],
  "appointmentType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
      "code" : "WALKIN"
    }]
  },
  "schedule" : {
    "reference" : "Schedule/ExampleSchedule2"
  },
  "status" : "free",
  "start" : "2021-11-05T11:00:00.000+00:00",
  "end" : "2021-11-05T11:30:00.000+00:00"
}

```
