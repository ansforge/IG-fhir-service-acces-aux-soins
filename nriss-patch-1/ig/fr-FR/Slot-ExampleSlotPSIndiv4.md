# ExampleSlotPSIndiv4 - Service d'Accès aux Soins v1.2.0

##  Slot: ExampleSlotPSIndiv4

Profil: [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md)

Label de sécurités: [Créneau public (Détails : code TRE_R314_TypeCreneau PUBLIC = 'Créneau public')](https://smt.esante.gouv.fr/fhir/ValueSet/TRE-R314-TypeCreneau), [Créneau professionnel (Détails : code TRE_R314_TypeCreneau PRO = 'Créneau professionnel')](https://smt.esante.gouv.fr/fhir/ValueSet/TRE-R314-TypeCreneau)

**serviceType**: home health, Visite de contrôle, Consultation de suivi pneumologique

**specialty**: Pneumologie, Médecine générale

**appointmentType**: Routine appointment - default if not valued

**schedule**: [Schedule](Schedule-ExampleSchedule3.md)

**status**: Free

**start**: 2021-11-04 14:40:00+0000

**end**: 2021-11-04 15:00:00+0000

**comment**: https://exemple.com/rdv/com/



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "ExampleSlotPSIndiv4",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur"],
    "security" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
      "code" : "PUBLIC"
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
      "code" : "PRO"
    }]
  },
  "serviceType" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "HH"
    }]
  },
  {
    "text" : "Visite de contrôle"
  },
  {
    "text" : "Consultation de suivi pneumologique"
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
      "code" : "SM41"
    }]
  },
  {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
      "code" : "SM54"
    }]
  }],
  "appointmentType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
      "code" : "ROUTINE"
    }]
  },
  "schedule" : {
    "reference" : "Schedule/ExampleSchedule3"
  },
  "status" : "free",
  "start" : "2021-11-04T14:40:00.000+00:00",
  "end" : "2021-11-04T15:00:00.000+00:00",
  "comment" : "https://exemple.com/rdv/com/"
}

```
