# ExampleSlotCPTS1 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleSlotCPTS1**

## Example Slot: ExampleSlotCPTS1

Profil: [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)

Label de sécurités: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public'), Créneau accessible par les communautés professionnelles territoriales de santé (Détails : code TRE_R314-TypeCreneau CPTS = 'Créneau accessible par les communautés professionnelles territoriales de santé')

**serviceType**: ambulatory, Communauté Professionnelle Territoriale de Santé (CPTS), Visite de contrôle

**specialty**: Médecine générale (SM)

**appointmentType**: Routine appointment - default if not valued

**schedule**: [Schedule](Schedule-ExampleSchedule.md)

**status**: Free

**start**: 2024-06-12 16:40:00+0200

**end**: 2024-06-12 17:00:00+0200

**comment**: https://exemple.com/rdv/com/



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "ExampleSlotCPTS1",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-slot-aggregator"
    ],
    "security" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
        "code" : "PUBLIC"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
        "code" : "CPTS"
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
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType",
          "valueReference" : {
            "reference" : "HealthcareService/ExampleHealthcareServiceCPTS1"
          }
        }
      ],
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement",
          "code" : "604"
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
    "reference" : "Schedule/ExampleSchedule"
  },
  "status" : "free",
  "start" : "2024-06-12T16:40:00.000+02:00",
  "end" : "2024-06-12T17:00:00.000+02:00",
  "comment" : "https://exemple.com/rdv/com/"
}

```
