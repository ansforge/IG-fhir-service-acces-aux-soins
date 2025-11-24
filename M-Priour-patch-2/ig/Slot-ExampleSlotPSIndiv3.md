# ExampleSlotPSIndiv3 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleSlotPSIndiv3**

## Example Slot: ExampleSlotPSIndiv3

Profil: [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md)

Label de sécurités: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public'), Créneau accessible par l'ensemble des professionnels de santé (Détails : code TRE_R314-TypeCreneau PRO = 'Créneau accessible par l'ensemble des professionnels de santé')

**serviceType**: virtual, Visite de contrôle, Consultation de suivi pneumologie

**specialty**: Pneumologie (SM)

**appointmentType**: Routine appointment - default if not valued

**schedule**: [Schedule](Schedule-ExampleSchedule3.md)

**status**: Free

**start**: 2021-11-04 14:20:00+0000

**end**: 2021-11-04 14:40:00+0000

**comment**: https://exemple.com/rdv/com/



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "ExampleSlotPSIndiv3",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur"],
    "security" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
        "code" : "PUBLIC"
      },
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
          "code" : "VR"
        }
      ]
    },
    {
      "text" : "Visite de contrôle"
    },
    {
      "text" : "Consultation de suivi pneumologie"
    }
  ],
  "specialty" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
          "code" : "SM41"
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
    "reference" : "Schedule/ExampleSchedule3"
  },
  "status" : "free",
  "start" : "2021-11-04T14:20:00.000+00:00",
  "end" : "2021-11-04T14:40:00.000+00:00",
  "comment" : "https://exemple.com/rdv/com/"
}

```
