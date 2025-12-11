# ExampleSlotSOS4 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleSlotSOS4**

## Example Slot: ExampleSlotSOS4

Profil: [FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md)

Label de sécurité: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public')

**serviceType**: ambulatory

**appointmentType**: Routine appointment - default if not valued

**schedule**: [Schedule](Schedule-ExampleScheduleSOS3.md)

**status**: Free

**start**: 2023-08-18 14:40:00+0200

**end**: 2023-08-18 15:00:00+0200

**comment**: http://www.editeur.com/agenda-pfg/creneau4



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "ExampleSlotSOS4",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator"
    ],
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
    "reference" : "Schedule/ExampleScheduleSOS3"
  },
  "status" : "free",
  "start" : "2023-08-18T14:40:00.000+02:00",
  "end" : "2023-08-18T15:00:00.000+02:00",
  "comment" : "http://www.editeur.com/agenda-pfg/creneau4"
}

```
