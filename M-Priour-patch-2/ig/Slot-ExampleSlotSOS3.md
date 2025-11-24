# ExampleSlotSOS3 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleSlotSOS3**

## Example Slot: ExampleSlotSOS3

Profil: [FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md)

Label de sécurité: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public')

**serviceType**: virtual

**appointmentType**: Routine appointment - default if not valued

**schedule**: [Schedule](Schedule-ExampleScheduleSOS3.md)

**status**: Free

**start**: 2023-08-18 14:20:00+0200

**end**: 2023-08-18 14:40:00+0200

**comment**: http://www.editeur.com/agenda-pfg/creneau3



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "ExampleSlotSOS3",
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
          "code" : "VR"
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
  "start" : "2023-08-18T14:20:00.000+02:00",
  "end" : "2023-08-18T14:40:00.000+02:00",
  "comment" : "http://www.editeur.com/agenda-pfg/creneau3"
}

```
