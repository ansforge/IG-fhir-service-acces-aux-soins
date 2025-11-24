# ExampleBundlePSIndiv - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleBundlePSIndiv**

## Example Bundle: ExampleBundlePSIndiv

Profil: [BundleAgregateur](StructureDefinition-BundleAgregateur.md)

Bundle ExampleBundlePSIndiv de type searchset

-------

Entrée 1 - fullUrl = https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv1

Recherche :Mode = match

Ressource Slot :

> 

Profil: [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md)

Label de sécurité: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public')

**serviceType**: Pas daffichage pour {0} (concept : ambulatory), Pas daffichage pour {0} (concept : virtual), Pas daffichage pour {0} (concept : )**specialty**:Médecine générale (SM),Chirurgie générale (SM)**appointmentType**:Routine appointment - default if not valued**schedule**:[Schedule](Schedule-ExampleSchedule1.md)**status**: Free**start**: 2021-11-05 09:00:00+0000**end**: 2021-11-05 09:30:00+0000**comment**: https://exemple.com/rdv/com/

-------

Entrée 2 - fullUrl = https://exemple.com/ans-sas/Schedule/ExampleSchedule1

Recherche :Mode = include

Ressource Schedule :

> 

Profil: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**:
* [Practitioner Sébastien THOMAS](Practitioner-ExamplePractitioner2.md)
* [PractitionerRole](PractitionerRole-ExamplePractitionerRoleAgregateur2.md)

-------

Entrée 3 - fullUrl = https://exemple.com/ans-sas/Practitioner/ExamplePractitioner2

Ressource Practitioner :

> 

Profil: [FrPractitionerAgregateur](StructureDefinition-FrPractitionerAgregateur.md)

**identifier**: Identifiant National de Professionnel de Santé/810100050075**name**: Sébastien THOMAS

-------

Entrée 4 - fullUrl = https://exemple.com/ans-sas/PractitionerRole/ExamplePractitionerRoleAgregateur2

Recherche :Mode = include

Ressource PractitionerRole :

> 

Profil: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

**practitioner**:[Practitioner Sébastien THOMAS](Practitioner-ExamplePractitioner2.md)**organization**: Identifier: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS/1810004421**location**:[Location : identifier = Identifiant interne](#hcExampleBundlePSIndiv/ExamplePractitionerRoleAgregateur2/ExampleLocation3)
-------

> 

Profil: [FrLocationAgregateur](StructureDefinition-FrLocationAgregateur.md)

**identifier**: Identifiant interne/1**address**: 1 rue Mme DELMAS AGEN 47000

-------

Entrée 5 - fullUrl = https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv2

Recherche :Mode = match

Ressource Slot :

> 

Profil: [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md)

Label de sécurité: Créneau accessible par l'ensemble des professionnels de santé (Détails : code TRE_R314-TypeCreneau PRO = 'Créneau accessible par l'ensemble des professionnels de santé')

**serviceType**: Pas daffichage pour {0} (concept : ambulatory), Pas daffichage pour {0} (concept : )**specialty**:Médecine générale (SM)**appointmentType**:A previously unscheduled walk-in visit**schedule**:[Schedule](Schedule-ExampleSchedule2.md)**status**: Free**start**: 2021-11-05 11:00:00+0000**end**: 2021-11-05 11:30:00+0000

-------

Entrée 6 - fullUrl = https://exemple.com/ans-sas/Schedule/ExampleSchedule2

Recherche :Mode = include

Ressource Schedule :

> 

Profil: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**:
* [Practitioner Sébastien THOMAS](Practitioner-ExamplePractitioner2.md)
* [PractitionerRole](PractitionerRole-ExamplePractitionerRoleAgregateur3.md)

-------

Entrée 7 - fullUrl = https://exemple.com/ans-sas/PractitionerRole/ExamplePractitionerRoleAgregateur3

Recherche :Mode = include

Ressource PractitionerRole :

> 

Profil: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

**practitioner**:[Practitioner Sébastien THOMAS](Practitioner-ExamplePractitioner2.md)**organization**: Identifier: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS/1810004956**location**:[Location : identifier = Identifiant interne](#hcExampleBundlePSIndiv/ExamplePractitionerRoleAgregateur3/ExampleLocation2)
-------

> 

Profil: [FrLocationAgregateur](StructureDefinition-FrLocationAgregateur.md)

**identifier**: Identifiant interne/2**address**: 30 rue Mme DELMAS AGEN 47000

-------

Entrée 8 - fullUrl = https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv3

Recherche :Mode = match

Ressource Slot :

> 

Profil: [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md)

Label de sécurités: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public'), Créneau accessible par l'ensemble des professionnels de santé (Détails : code TRE_R314-TypeCreneau PRO = 'Créneau accessible par l'ensemble des professionnels de santé')

**serviceType**: Pas daffichage pour {0} (concept : virtual), Pas daffichage pour {0} (concept : ), Pas daffichage pour {0} (concept : )**specialty**:Pneumologie (SM)**appointmentType**:Routine appointment - default if not valued**schedule**:[Schedule](Schedule-ExampleSchedule3.md)**status**: Free**start**: 2021-11-04 14:20:00+0000**end**: 2021-11-04 14:40:00+0000**comment**: https://exemple.com/rdv/com/

-------

Entrée 9 - fullUrl = https://exemple.com/ans-sas/Schedule/ExampleSchedule3

Recherche :Mode = include

Ressource Schedule :

> 

Profil: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**:
* [Practitioner Guillaume MARCEL](Practitioner-ExamplePractitioner3.md)
* [PractitionerRole : telecom = ph: +33658913859](PractitionerRole-ExamplePractitionerRoleAgregateur4.md)

-------

Entrée 10 - fullUrl = https://exemple.com/ans-sas/Practitioner/ExamplePractitioner3

Recherche :Mode = include

Ressource Practitioner :

> 

Profil: [FrPractitionerAgregateur](StructureDefinition-FrPractitionerAgregateur.md)

**identifier**: Identifiant National de Professionnel de Santé/810002673899**name**: Guillaume MARCEL

-------

Entrée 11 - fullUrl = https://exemple.com/ans-sas/PractitionerRole/ExamplePractitionerRoleAgregateur4

Recherche :Mode = include

Ressource PractitionerRole :

> 

Profil: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

**practitioner**:[Practitioner Guillaume MARCEL](Practitioner-ExamplePractitioner3.md)**organization**: Identifier: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS/1810004421**location**:[Location : identifier = Identifiant interne](#hcExampleBundlePSIndiv/ExamplePractitionerRoleAgregateur4/ExampleLocation3)
-------

> 

Profil: [FrLocationAgregateur](StructureDefinition-FrLocationAgregateur.md)

**identifier**: Identifiant interne/1**address**: 1 rue Mme DELMAS AGEN 47000

-------

Entrée 12 - fullUrl = https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv4

Recherche :Mode = match

Ressource Slot :

> 

Profil: [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md)

Label de sécurités: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public'), Créneau accessible par l'ensemble des professionnels de santé (Détails : code TRE_R314-TypeCreneau PRO = 'Créneau accessible par l'ensemble des professionnels de santé')

**serviceType**: Pas daffichage pour {0} (concept : home health), Pas daffichage pour {0} (concept : ), Pas daffichage pour {0} (concept : )**specialty**:Pneumologie (SM),Médecine générale (SM)**appointmentType**:Routine appointment - default if not valued**schedule**:[Schedule](Schedule-ExampleSchedule3.md)**status**: Free**start**: 2021-11-04 14:40:00+0000**end**: 2021-11-04 15:00:00+0000**comment**: https://exemple.com/rdv/com/



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ExampleBundlePSIndiv",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/BundleAgregateur"]
  },
  "type" : "searchset",
  "total" : 4,
  "link" : [
    {
      "relation" : "self",
      "url" : "https://exemple.com/ans-sas/Slot/?_include=Slot:schedule&_include:iterate=Schedule:actor&status=free&start=ge2021-11-04T14:19:35.760+00:00&start=le2021-11-06T23:59:59.999+00:00&schedule.actor:Practitioner.identifier=urn:oid:1.2.250.1.71.4.2.1%7C810002673899,urn:oid:1.2.250.1.71.4.2.1%7C810100050075&_count=1000"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv1",
      "resource" : {
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Slot_ExampleSlotPSIndiv1\"> </a><p class=\"res-header-id\"><b>Narratif généré : Slot ExampleSlotPSIndiv1</b></p><a name=\"ExampleSlotPSIndiv1\"> </a><a name=\"hcExampleSlotPSIndiv1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrSlotAgregateur.html\">FrSlotAgregateur</a></p><p style=\"margin-bottom: 0px\">Label de sécurité: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public')</p></div><p><b>serviceType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v3-ActCode AMB}\">ambulatory</span>, <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v3-ActCode VR}\">virtual</span>, <span title=\"Codes :\">Visite de contrôle</span></p><p><b>specialty</b>: <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale SM54}\">Médecine générale (SM)</span>, <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale SM05}\">Chirurgie générale (SM)</span></p><p><b>appointmentType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v2-0276 ROUTINE}\">Routine appointment - default if not valued</span></p><p><b>schedule</b>: <a href=\"Schedule-ExampleSchedule1.html\">Schedule</a></p><p><b>status</b>: Free</p><p><b>start</b>: 2021-11-05 09:00:00+0000</p><p><b>end</b>: 2021-11-05 09:30:00+0000</p><p><b>comment</b>: https://exemple.com/rdv/com/</p></div>"
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
      },
      "search" : {
        "mode" : "match"
      }
    },
    {
      "fullUrl" : "https://exemple.com/ans-sas/Schedule/ExampleSchedule1",
      "resource" : {
        "resourceType" : "Schedule",
        "id" : "ExampleSchedule1",
        "meta" : {
          "profile" : [
            "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Schedule_ExampleSchedule1\"> </a><p class=\"res-header-id\"><b>Narratif généré : Schedule ExampleSchedule1</b></p><a name=\"ExampleSchedule1\"> </a><a name=\"hcExampleSchedule1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrScheduleAgregateur.html\">FrScheduleAgregateur</a></p></div><p><b>actor</b>: </p><ul><li><a href=\"Practitioner-ExamplePractitioner2.html\">Practitioner Sébastien THOMAS </a></li><li><a href=\"PractitionerRole-ExamplePractitionerRoleAgregateur2.html\">PractitionerRole</a></li></ul></div>"
        },
        "actor" : [
          {
            "reference" : "Practitioner/ExamplePractitioner2"
          },
          {
            "reference" : "PractitionerRole/ExamplePractitionerRoleAgregateur2"
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://exemple.com/ans-sas/Practitioner/ExamplePractitioner2",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "ExamplePractitioner2",
        "meta" : {
          "profile" : [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_ExamplePractitioner2\"> </a><p class=\"res-header-id\"><b>Narratif généré : Praticien ExamplePractitioner2</b></p><a name=\"ExamplePractitioner2\"> </a><a name=\"hcExamplePractitioner2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrPractitionerAgregateur.html\">FrPractitionerAgregateur</a></p></div><p><b>identifier</b>: Identifiant National de Professionnel de Santé/810100050075</p><p><b>name</b>: Sébastien THOMAS </p></div>"
        },
        "identifier" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                  "code" : "IDNPS"
                }
              ]
            },
            "system" : "urn:oid:1.2.250.1.71.4.2.1",
            "value" : "810100050075"
          }
        ],
        "name" : [
          {
            "family" : "THOMAS",
            "given" : ["Sébastien"]
          }
        ]
      }
    },
    {
      "fullUrl" : "https://exemple.com/ans-sas/PractitionerRole/ExamplePractitionerRoleAgregateur2",
      "resource" : {
        "resourceType" : "PractitionerRole",
        "id" : "ExamplePractitionerRoleAgregateur2",
        "meta" : {
          "profile" : [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_ExamplePractitionerRoleAgregateur2\"> </a><p class=\"res-header-id\"><b>Narratif généré : PractitionerRole ExamplePractitionerRoleAgregateur2</b></p><a name=\"ExamplePractitionerRoleAgregateur2\"> </a><a name=\"hcExamplePractitionerRoleAgregateur2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrPractitionerRoleExerciceAgregateur.html\">FrPractitionerRoleExerciceAgregateur</a></p></div><p><b>practitioner</b>: <a href=\"Practitioner-ExamplePractitioner2.html\">Practitioner Sébastien THOMAS </a></p><p><b>organization</b>: Identifier: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS/1810004421</p><p><b>location</b>: <a href=\"#hcExamplePractitionerRoleAgregateur2/ExampleLocation3\">Location : identifier = Identifiant interne</a></p><hr/><blockquote><p class=\"res-header-id\"><b>Narratif généré : Localisation #ExampleLocation3</b></p><a name=\"ExamplePractitionerRoleAgregateur2/ExampleLocation3\"> </a><a name=\"hcExamplePractitionerRoleAgregateur2/ExampleLocation3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrLocationAgregateur.html\">FrLocationAgregateur</a></p></div><p><b>identifier</b>: Identifiant interne/1</p><p><b>address</b>: 1 rue Mme DELMAS AGEN 47000 </p></blockquote></div>"
        },
        "contained" : [
          {
            "resourceType" : "Location",
            "id" : "ExampleLocation3",
            "meta" : {
              "profile" : [
                "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur"
              ]
            },
            "identifier" : [
              {
                "type" : {
                  "coding" : [
                    {
                      "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
                      "code" : "INTRN"
                    }
                  ]
                },
                "system" : "urn:oid:1.1.111.1.111.1.1.1",
                "value" : "1"
              }
            ],
            "address" : {
              "line" : ["1 rue Mme DELMAS"],
              "city" : "AGEN",
              "postalCode" : "47000"
            }
          }
        ],
        "practitioner" : {
          "reference" : "Practitioner/ExamplePractitioner2"
        },
        "organization" : {
          "identifier" : {
            "type" : {
              "coding" : [
                {
                  "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                  "code" : "IDNST"
                }
              ]
            },
            "system" : "urn:oid:1.2.250.1.71.4.2.2",
            "value" : "1810004421"
          }
        },
        "location" : [
          {
            "reference" : "#ExampleLocation3"
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv2",
      "resource" : {
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Slot_ExampleSlotPSIndiv2\"> </a><p class=\"res-header-id\"><b>Narratif généré : Slot ExampleSlotPSIndiv2</b></p><a name=\"ExampleSlotPSIndiv2\"> </a><a name=\"hcExampleSlotPSIndiv2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrSlotAgregateur.html\">FrSlotAgregateur</a></p><p style=\"margin-bottom: 0px\">Label de sécurité: Créneau accessible par l'ensemble des professionnels de santé (Détails : code TRE_R314-TypeCreneau PRO = 'Créneau accessible par l'ensemble des professionnels de santé')</p></div><p><b>serviceType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v3-ActCode AMB}\">ambulatory</span>, <span title=\"Codes :\">Visite urgente</span></p><p><b>specialty</b>: <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale SM54}\">Médecine générale (SM)</span></p><p><b>appointmentType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v2-0276 WALKIN}\">A previously unscheduled walk-in visit</span></p><p><b>schedule</b>: <a href=\"Schedule-ExampleSchedule2.html\">Schedule</a></p><p><b>status</b>: Free</p><p><b>start</b>: 2021-11-05 11:00:00+0000</p><p><b>end</b>: 2021-11-05 11:30:00+0000</p></div>"
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
      },
      "search" : {
        "mode" : "match"
      }
    },
    {
      "fullUrl" : "https://exemple.com/ans-sas/Schedule/ExampleSchedule2",
      "resource" : {
        "resourceType" : "Schedule",
        "id" : "ExampleSchedule2",
        "meta" : {
          "profile" : [
            "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Schedule_ExampleSchedule2\"> </a><p class=\"res-header-id\"><b>Narratif généré : Schedule ExampleSchedule2</b></p><a name=\"ExampleSchedule2\"> </a><a name=\"hcExampleSchedule2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrScheduleAgregateur.html\">FrScheduleAgregateur</a></p></div><p><b>actor</b>: </p><ul><li><a href=\"Practitioner-ExamplePractitioner2.html\">Practitioner Sébastien THOMAS </a></li><li><a href=\"PractitionerRole-ExamplePractitionerRoleAgregateur3.html\">PractitionerRole</a></li></ul></div>"
        },
        "actor" : [
          {
            "reference" : "Practitioner/ExamplePractitioner2"
          },
          {
            "reference" : "PractitionerRole/ExamplePractitionerRoleAgregateur3"
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://exemple.com/ans-sas/PractitionerRole/ExamplePractitionerRoleAgregateur3",
      "resource" : {
        "resourceType" : "PractitionerRole",
        "id" : "ExamplePractitionerRoleAgregateur3",
        "meta" : {
          "profile" : [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_ExamplePractitionerRoleAgregateur3\"> </a><p class=\"res-header-id\"><b>Narratif généré : PractitionerRole ExamplePractitionerRoleAgregateur3</b></p><a name=\"ExamplePractitionerRoleAgregateur3\"> </a><a name=\"hcExamplePractitionerRoleAgregateur3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrPractitionerRoleExerciceAgregateur.html\">FrPractitionerRoleExerciceAgregateur</a></p></div><p><b>practitioner</b>: <a href=\"Practitioner-ExamplePractitioner2.html\">Practitioner Sébastien THOMAS </a></p><p><b>organization</b>: Identifier: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS/1810004956</p><p><b>location</b>: <a href=\"#hcExamplePractitionerRoleAgregateur3/ExampleLocation2\">Location : identifier = Identifiant interne</a></p><hr/><blockquote><p class=\"res-header-id\"><b>Narratif généré : Localisation #ExampleLocation2</b></p><a name=\"ExamplePractitionerRoleAgregateur3/ExampleLocation2\"> </a><a name=\"hcExamplePractitionerRoleAgregateur3/ExampleLocation2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrLocationAgregateur.html\">FrLocationAgregateur</a></p></div><p><b>identifier</b>: Identifiant interne/2</p><p><b>address</b>: 30 rue Mme DELMAS AGEN 47000 </p></blockquote></div>"
        },
        "contained" : [
          {
            "resourceType" : "Location",
            "id" : "ExampleLocation2",
            "meta" : {
              "profile" : [
                "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur"
              ]
            },
            "identifier" : [
              {
                "type" : {
                  "coding" : [
                    {
                      "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
                      "code" : "INTRN"
                    }
                  ]
                },
                "system" : "urn:oid:1.1.111.1.111.1.1.1",
                "value" : "2"
              }
            ],
            "address" : {
              "line" : ["30 rue Mme DELMAS"],
              "city" : "AGEN",
              "postalCode" : "47000"
            }
          }
        ],
        "practitioner" : {
          "reference" : "Practitioner/ExamplePractitioner2"
        },
        "organization" : {
          "identifier" : {
            "type" : {
              "coding" : [
                {
                  "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                  "code" : "IDNST"
                }
              ]
            },
            "system" : "urn:oid:1.2.250.1.71.4.2.2",
            "value" : "1810004956"
          }
        },
        "location" : [
          {
            "reference" : "#ExampleLocation2"
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv3",
      "resource" : {
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Slot_ExampleSlotPSIndiv3\"> </a><p class=\"res-header-id\"><b>Narratif généré : Slot ExampleSlotPSIndiv3</b></p><a name=\"ExampleSlotPSIndiv3\"> </a><a name=\"hcExampleSlotPSIndiv3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrSlotAgregateur.html\">FrSlotAgregateur</a></p><p style=\"margin-bottom: 0px\">Label de sécurités: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public'), Créneau accessible par l'ensemble des professionnels de santé (Détails : code TRE_R314-TypeCreneau PRO = 'Créneau accessible par l'ensemble des professionnels de santé')</p></div><p><b>serviceType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v3-ActCode VR}\">virtual</span>, <span title=\"Codes :\">Visite de contrôle</span>, <span title=\"Codes :\">Consultation de suivi pneumologie</span></p><p><b>specialty</b>: <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale SM41}\">Pneumologie (SM)</span></p><p><b>appointmentType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v2-0276 ROUTINE}\">Routine appointment - default if not valued</span></p><p><b>schedule</b>: <a href=\"Schedule-ExampleSchedule3.html\">Schedule</a></p><p><b>status</b>: Free</p><p><b>start</b>: 2021-11-04 14:20:00+0000</p><p><b>end</b>: 2021-11-04 14:40:00+0000</p><p><b>comment</b>: https://exemple.com/rdv/com/</p></div>"
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
      },
      "search" : {
        "mode" : "match"
      }
    },
    {
      "fullUrl" : "https://exemple.com/ans-sas/Schedule/ExampleSchedule3",
      "resource" : {
        "resourceType" : "Schedule",
        "id" : "ExampleSchedule3",
        "meta" : {
          "profile" : [
            "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Schedule_ExampleSchedule3\"> </a><p class=\"res-header-id\"><b>Narratif généré : Schedule ExampleSchedule3</b></p><a name=\"ExampleSchedule3\"> </a><a name=\"hcExampleSchedule3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrScheduleAgregateur.html\">FrScheduleAgregateur</a></p></div><p><b>actor</b>: </p><ul><li><a href=\"Practitioner-ExamplePractitioner3.html\">Practitioner Guillaume MARCEL </a></li><li><a href=\"PractitionerRole-ExamplePractitionerRoleAgregateur4.html\">PractitionerRole : telecom = ph: +33658913859</a></li></ul></div>"
        },
        "actor" : [
          {
            "reference" : "Practitioner/ExamplePractitioner3"
          },
          {
            "reference" : "PractitionerRole/ExamplePractitionerRoleAgregateur4"
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://exemple.com/ans-sas/Practitioner/ExamplePractitioner3",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "ExamplePractitioner3",
        "meta" : {
          "profile" : [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_ExamplePractitioner3\"> </a><p class=\"res-header-id\"><b>Narratif généré : Praticien ExamplePractitioner3</b></p><a name=\"ExamplePractitioner3\"> </a><a name=\"hcExamplePractitioner3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrPractitionerAgregateur.html\">FrPractitionerAgregateur</a></p></div><p><b>identifier</b>: Identifiant National de Professionnel de Santé/810002673899</p><p><b>name</b>: Guillaume MARCEL </p></div>"
        },
        "identifier" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                  "code" : "IDNPS"
                }
              ]
            },
            "system" : "urn:oid:1.2.250.1.71.4.2.1",
            "value" : "810002673899"
          }
        ],
        "name" : [
          {
            "family" : "MARCEL",
            "given" : ["Guillaume"]
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://exemple.com/ans-sas/PractitionerRole/ExamplePractitionerRoleAgregateur4",
      "resource" : {
        "resourceType" : "PractitionerRole",
        "id" : "ExamplePractitionerRoleAgregateur4",
        "meta" : {
          "profile" : [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_ExamplePractitionerRoleAgregateur4\"> </a><p class=\"res-header-id\"><b>Narratif généré : PractitionerRole ExamplePractitionerRoleAgregateur4</b></p><a name=\"ExamplePractitionerRoleAgregateur4\"> </a><a name=\"hcExamplePractitionerRoleAgregateur4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrPractitionerRoleExerciceAgregateur.html\">FrPractitionerRoleExerciceAgregateur</a></p></div><p><b>practitioner</b>: <a href=\"Practitioner-ExamplePractitioner3.html\">Practitioner Guillaume MARCEL </a></p><p><b>organization</b>: Identifier: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS/1810004421</p><p><b>location</b>: <a href=\"#hcExamplePractitionerRoleAgregateur4/ExampleLocation3\">Location : identifier = Identifiant interne</a></p><p><b>telecom</b>: <a href=\"tel:+33658913859\">+33658913859</a></p><hr/><blockquote><p class=\"res-header-id\"><b>Narratif généré : Localisation #ExampleLocation3</b></p><a name=\"ExamplePractitionerRoleAgregateur4/ExampleLocation3\"> </a><a name=\"hcExamplePractitionerRoleAgregateur4/ExampleLocation3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrLocationAgregateur.html\">FrLocationAgregateur</a></p></div><p><b>identifier</b>: Identifiant interne/1</p><p><b>address</b>: 1 rue Mme DELMAS AGEN 47000 </p></blockquote></div>"
        },
        "contained" : [
          {
            "resourceType" : "Location",
            "id" : "ExampleLocation3",
            "meta" : {
              "profile" : [
                "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur"
              ]
            },
            "identifier" : [
              {
                "type" : {
                  "coding" : [
                    {
                      "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
                      "code" : "INTRN"
                    }
                  ]
                },
                "system" : "urn:oid:1.1.111.1.111.1.1.1",
                "value" : "1"
              }
            ],
            "address" : {
              "line" : ["1 rue Mme DELMAS"],
              "city" : "AGEN",
              "postalCode" : "47000"
            }
          }
        ],
        "practitioner" : {
          "reference" : "Practitioner/ExamplePractitioner3"
        },
        "organization" : {
          "identifier" : {
            "type" : {
              "coding" : [
                {
                  "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                  "code" : "IDNST"
                }
              ]
            },
            "system" : "urn:oid:1.2.250.1.71.4.2.2",
            "value" : "1810004421"
          }
        },
        "location" : [
          {
            "reference" : "#ExampleLocation3"
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+33658913859"
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv4",
      "resource" : {
        "resourceType" : "Slot",
        "id" : "ExampleSlotPSIndiv4",
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Slot_ExampleSlotPSIndiv4\"> </a><p class=\"res-header-id\"><b>Narratif généré : Slot ExampleSlotPSIndiv4</b></p><a name=\"ExampleSlotPSIndiv4\"> </a><a name=\"hcExampleSlotPSIndiv4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrSlotAgregateur.html\">FrSlotAgregateur</a></p><p style=\"margin-bottom: 0px\">Label de sécurités: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public'), Créneau accessible par l'ensemble des professionnels de santé (Détails : code TRE_R314-TypeCreneau PRO = 'Créneau accessible par l'ensemble des professionnels de santé')</p></div><p><b>serviceType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v3-ActCode HH}\">home health</span>, <span title=\"Codes :\">Visite de contrôle</span>, <span title=\"Codes :\">Consultation de suivi pneumologique</span></p><p><b>specialty</b>: <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale SM41}\">Pneumologie (SM)</span>, <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale SM54}\">Médecine générale (SM)</span></p><p><b>appointmentType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v2-0276 ROUTINE}\">Routine appointment - default if not valued</span></p><p><b>schedule</b>: <a href=\"Schedule-ExampleSchedule3.html\">Schedule</a></p><p><b>status</b>: Free</p><p><b>start</b>: 2021-11-04 14:40:00+0000</p><p><b>end</b>: 2021-11-04 15:00:00+0000</p><p><b>comment</b>: https://exemple.com/rdv/com/</p></div>"
        },
        "serviceType" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                "code" : "HH"
              }
            ]
          },
          {
            "text" : "Visite de contrôle"
          },
          {
            "text" : "Consultation de suivi pneumologique"
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
          },
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
          "reference" : "Schedule/ExampleSchedule3"
        },
        "status" : "free",
        "start" : "2021-11-04T14:40:00.000+00:00",
        "end" : "2021-11-04T15:00:00.000+00:00",
        "comment" : "https://exemple.com/rdv/com/"
      },
      "search" : {
        "mode" : "match"
      }
    }
  ]
}

```
