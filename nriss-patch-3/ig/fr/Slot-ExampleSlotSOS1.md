# ExampleSlotSOS1 - Service d'Accès aux Soins v1.2.0

## Exemple Slot: ExampleSlotSOS1

-------

**French**

-------

Profil: [FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md)

Label de sécurités: [Créneau accessible par le grand public (Détails : code TRE_R314_TypeCreneau PUBLIC = 'Créneau accessible par le grand public')](https://smt.esante.gouv.fr/fhir/ValueSet/TRE-R314-TypeCreneau), [Créneau accessible par les Régulateurs et Organisateurs de Soins Non Programmés (Détails : code TRE_R314_TypeCreneau SNP = 'Créneau accessible par les Régulateurs et Organisateurs de Soins Non Programmés')](https://smt.esante.gouv.fr/fhir/ValueSet/TRE-R314-TypeCreneau)

**serviceType**: ambulatory, virtual

**appointmentType**: Routine appointment - default if not valued

**schedule**: [Schedule](Schedule-ExampleScheduleSOS1.md)

**status**: Free

**start**: 2023-08-18 09:00:00+0200

**end**: 2023-08-18 09:30:00+0200

**comment**: http://www.editeur.com/agenda-pfg/creneau1



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "ExampleSlotSOS1",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator"],
    "security" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
      "code" : "PUBLIC"
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
      "code" : "SNP"
    }]
  },
  "serviceType" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "AMB"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "VR"
    }]
  }],
  "appointmentType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
      "code" : "ROUTINE"
    }]
  },
  "schedule" : {
    "reference" : "Schedule/ExampleScheduleSOS1"
  },
  "status" : "free",
  "start" : "2023-08-18T09:00:00.000+02:00",
  "end" : "2023-08-18T09:30:00.000+02:00",
  "comment" : "http://www.editeur.com/agenda-pfg/creneau1"
}

```
