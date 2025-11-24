# ExampleBundleCPTS2 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleBundleCPTS2**

## Example Bundle: ExampleBundleCPTS2

Profil: [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)

Bundle ExampleBundleCPTS2 de type searchset

-------

Entrée 1 - fullUrl = https://<base_URl>/Slot/ExampleSlotCPTS2

Recherche :Mode = match

Ressource Slot :

> 

Profil: [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)

Label de sécurités: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public'), Créneau accessible par les communautés professionnelles territoriales de santé (Détails : code TRE_R314-TypeCreneau CPTS = 'Créneau accessible par les communautés professionnelles territoriales de santé')

**serviceType**: Pas daffichage pour {0} (concept : ambulatory), Pas daffichage pour {0} (concept : Communauté Professionnelle Territoriale de Santé (CPTS)), Pas daffichage pour {0} (concept : Communauté Professionnelle Territoriale de Santé (CPTS))**specialty**:Médecine générale (SM)**appointmentType**:Routine appointment - default if not valued**schedule**:[Schedule](Schedule-ExampleSchedule.md)**status**: Free**start**: 2024-06-12 16:40:00+0200**end**: 2024-06-12 17:00:00+0200**comment**: https://exemple.com/rdv/com/

-------

Entrée 2 - fullUrl = https://<base_URl>/Schedule/ExampleSchedule

Recherche :Mode = include

Ressource Schedule :

> 

Profil: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**:
* [Practitioner Pierre Foret](Practitioner-ExamplePractitioner.md)
* [PractitionerRole : telecom = ph: +33561855977](PractitionerRole-ExamplePractitionerRoleAgregateur.md)

-------

Entrée 3 - fullUrl = https://<base_URl>/Practitioner/ExamplePractitioner

Recherche :Mode = include

Ressource Practitioner :

> 

Profil: [FrPractitionerAgregateur](StructureDefinition-FrPractitionerAgregateur.md)

**identifier**: Identifiant National de Professionnel de Santé/810002909371**name**: Pierre Foret

-------

Entrée 4 - fullUrl = https://<base_URl>/PractitionerRole/ExamplePractitionerRoleAgregateur

Recherche :Mode = include

Ressource PractitionerRole :

> 

Profil: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

**practitioner**:[Practitioner Pierre Foret](Practitioner-ExamplePractitioner.md)**organization**: Identifier: 412345678912345**location**:[Location : identifier = Identifiant interne](#hcExampleBundleCPTS2/ExamplePractitionerRoleAgregateur/ExampleLocation)
-------

> 

Profil: [FrLocationAgregateur](StructureDefinition-FrLocationAgregateur.md)

**identifier**: Identifiant interne/123456789**address**: 25 CHEMIN DE MOUNESTIE Aussonne 31840

-------

Entrée 5 - fullUrl = https://<base_URl>/HealthcareService/ExampleHealthcareServiceCPTS1

Recherche :Mode = include

Ressource HealthcareService :

> 

Profil: [FrHealthcareServiceAgregateurCPTS](StructureDefinition-sas-cpts-healthcareservice-aggregator.md)

**providedBy**:[Organization CPTS AXE MAJEUR](Organization-ExampleOrgaCPTS1.md)

-------

Entrée 6 - fullUrl = https://<base_URl>/Organization/ExampleOrgaCPTS1

Recherche :Mode = include

Ressource Organization :

> 

Profil: [FrOrganizationAgregateurCPTS](StructureDefinition-sas-cpts-organization-aggregator.md)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/1950047225**name**: CPTS AXE MAJEUR

### Contacts

| | |
| :--- | :--- |
| - | **Telecom** |
| * | [+33102030405](tel:+33102030405) |


-------

Entrée 7 - fullUrl = https://<base_URl>/HealthcareService/ExampleHealthcareServiceCPTS2

Recherche :Mode = include

Ressource HealthcareService :

> 

Profil: [FrHealthcareServiceAgregateurCPTS](StructureDefinition-sas-cpts-healthcareservice-aggregator.md)

**providedBy**:[Organization CPTS VAL D OISE CENTRE](Organization-ExampleOrgaCPTS2.md)

-------

Entrée 8 - fullUrl = https://<base_URl>/Organization/ExampleOrgaCPTS2

Recherche :Mode = include

Ressource Organization :

> 

Profil: [FrOrganizationAgregateurCPTS](StructureDefinition-sas-cpts-organization-aggregator.md)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/1950046227**name**: CPTS VAL D OISE CENTRE

### Contacts

| | |
| :--- | :--- |
| - | **Telecom** |
| * | [+33139599280](tel:+33139599280) |




## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ExampleBundleCPTS2",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-bundle-aggregator"
    ]
  },
  "type" : "searchset",
  "total" : 1,
  "link" : [
    {
      "relation" : "self",
      "url" : "http://hapi.fhir.org/baseR4/Slot?_include=Slot:schedule&_include:iterate=Schedule:actor&start=ge2024-06-12T16:20:00.000+02:00&start=le2024-06-12T17:20:00.000+02:00&schedule.actor:Practitioner.identifier=urn:oid:1.2.250.1.71.4.2.1|810002909371&status=free&_include=Slot:service-type-reference"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "https://<base_URl>/Slot/ExampleSlotCPTS2",
      "resource" : {
        "resourceType" : "Slot",
        "id" : "ExampleSlotCPTS2",
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Slot_ExampleSlotCPTS2\"> </a><p class=\"res-header-id\"><b>Narratif généré : Slot ExampleSlotCPTS2</b></p><a name=\"ExampleSlotCPTS2\"> </a><a name=\"hcExampleSlotCPTS2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-cpts-slot-aggregator.html\">FrSlotAgregateurCPTS</a></p><p style=\"margin-bottom: 0px\">Label de sécurités: Créneau accessible par le grand public (Détails : code TRE_R314-TypeCreneau PUBLIC = 'Créneau accessible par le grand public'), Créneau accessible par les communautés professionnelles territoriales de santé (Détails : code TRE_R314-TypeCreneau CPTS = 'Créneau accessible par les communautés professionnelles territoriales de santé')</p></div><p><b>serviceType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v3-ActCode AMB}\">Visite de contrôle</span>, <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement 604}\">Communauté Professionnelle Territoriale de Santé (CPTS)</span>, <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement 604}\">Communauté Professionnelle Territoriale de Santé (CPTS)</span></p><p><b>specialty</b>: <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale SM54}\">Médecine générale (SM)</span></p><p><b>appointmentType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v2-0276 ROUTINE}\">Routine appointment - default if not valued</span></p><p><b>schedule</b>: <a href=\"Schedule-ExampleSchedule.html\">Schedule</a></p><p><b>status</b>: Free</p><p><b>start</b>: 2024-06-12 16:40:00+0200</p><p><b>end</b>: 2024-06-12 17:00:00+0200</p><p><b>comment</b>: https://exemple.com/rdv/com/</p></div>"
        },
        "serviceType" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                "code" : "AMB"
              }
            ],
            "text" : "Visite de contrôle"
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
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType",
                "valueReference" : {
                  "reference" : "HealthcareService/ExampleHealthcareServiceCPTS2"
                }
              }
            ],
            "coding" : [
              {
                "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement",
                "code" : "604"
              }
            ]
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
      },
      "search" : {
        "mode" : "match"
      }
    },
    {
      "fullUrl" : "https://<base_URl>/Schedule/ExampleSchedule",
      "resource" : {
        "resourceType" : "Schedule",
        "id" : "ExampleSchedule",
        "meta" : {
          "profile" : [
            "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Schedule_ExampleSchedule\"> </a><p class=\"res-header-id\"><b>Narratif généré : Schedule ExampleSchedule</b></p><a name=\"ExampleSchedule\"> </a><a name=\"hcExampleSchedule\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrScheduleAgregateur.html\">FrScheduleAgregateur</a></p></div><p><b>actor</b>: </p><ul><li><a href=\"Practitioner-ExamplePractitioner.html\">Practitioner Pierre Foret </a></li><li><a href=\"PractitionerRole-ExamplePractitionerRoleAgregateur.html\">PractitionerRole : telecom = ph: +33561855977</a></li></ul></div>"
        },
        "actor" : [
          {
            "reference" : "Practitioner/ExamplePractitioner"
          },
          {
            "reference" : "PractitionerRole/ExamplePractitionerRoleAgregateur"
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://<base_URl>/Practitioner/ExamplePractitioner",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "ExamplePractitioner",
        "meta" : {
          "profile" : [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_ExamplePractitioner\"> </a><p class=\"res-header-id\"><b>Narratif généré : Praticien ExamplePractitioner</b></p><a name=\"ExamplePractitioner\"> </a><a name=\"hcExamplePractitioner\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrPractitionerAgregateur.html\">FrPractitionerAgregateur</a></p></div><p><b>identifier</b>: Identifiant National de Professionnel de Santé/810002909371</p><p><b>name</b>: Pierre Foret </p></div>"
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
            "value" : "810002909371"
          }
        ],
        "name" : [
          {
            "family" : "Foret",
            "given" : ["Pierre"]
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://<base_URl>/PractitionerRole/ExamplePractitionerRoleAgregateur",
      "resource" : {
        "resourceType" : "PractitionerRole",
        "id" : "ExamplePractitionerRoleAgregateur",
        "meta" : {
          "profile" : [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_ExamplePractitionerRoleAgregateur\"> </a><p class=\"res-header-id\"><b>Narratif généré : PractitionerRole ExamplePractitionerRoleAgregateur</b></p><a name=\"ExamplePractitionerRoleAgregateur\"> </a><a name=\"hcExamplePractitionerRoleAgregateur\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrPractitionerRoleExerciceAgregateur.html\">FrPractitionerRoleExerciceAgregateur</a></p></div><p><b>practitioner</b>: <a href=\"Practitioner-ExamplePractitioner.html\">Practitioner Pierre Foret </a></p><p><b>organization</b>: Identifier: 412345678912345</p><p><b>location</b>: <a href=\"#hcExamplePractitionerRoleAgregateur/ExampleLocation\">Location : identifier = Identifiant interne</a></p><p><b>telecom</b>: <a href=\"tel:+33561855977\">+33561855977</a></p><hr/><blockquote><p class=\"res-header-id\"><b>Narratif généré : Localisation #ExampleLocation</b></p><a name=\"ExamplePractitionerRoleAgregateur/ExampleLocation\"> </a><a name=\"hcExamplePractitionerRoleAgregateur/ExampleLocation\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-FrLocationAgregateur.html\">FrLocationAgregateur</a></p></div><p><b>identifier</b>: Identifiant interne/123456789</p><p><b>address</b>: 25 CHEMIN DE MOUNESTIE Aussonne 31840 </p></blockquote></div>"
        },
        "contained" : [
          {
            "resourceType" : "Location",
            "id" : "ExampleLocation",
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
                "system" : "https://editeur.com",
                "value" : "123456789"
              }
            ],
            "address" : {
              "line" : ["25 CHEMIN DE MOUNESTIE"],
              "city" : "Aussonne",
              "postalCode" : "31840"
            }
          }
        ],
        "practitioner" : {
          "reference" : "Practitioner/ExamplePractitioner"
        },
        "organization" : {
          "identifier" : {
            "value" : "412345678912345"
          }
        },
        "location" : [
          {
            "reference" : "#ExampleLocation"
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+33561855977"
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://<base_URl>/HealthcareService/ExampleHealthcareServiceCPTS1",
      "resource" : {
        "resourceType" : "HealthcareService",
        "id" : "ExampleHealthcareServiceCPTS1",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"HealthcareService_ExampleHealthcareServiceCPTS1\"> </a><p class=\"res-header-id\"><b>Narratif généré : ServiceDeSanté ExampleHealthcareServiceCPTS1</b></p><a name=\"ExampleHealthcareServiceCPTS1\"> </a><a name=\"hcExampleHealthcareServiceCPTS1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-cpts-healthcareservice-aggregator.html\">FrHealthcareServiceAgregateurCPTS</a></p></div><p><b>providedBy</b>: <a href=\"Organization-ExampleOrgaCPTS1.html\">Organization CPTS AXE MAJEUR</a></p></div>"
        },
        "providedBy" : {
          "reference" : "Organization/ExampleOrgaCPTS1"
        }
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://<base_URl>/Organization/ExampleOrgaCPTS1",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "ExampleOrgaCPTS1",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_ExampleOrgaCPTS1\"> </a><p class=\"res-header-id\"><b>Narratif généré : Organisation ExampleOrgaCPTS1</b></p><a name=\"ExampleOrgaCPTS1\"> </a><a name=\"hcExampleOrgaCPTS1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-cpts-organization-aggregator.html\">FrOrganizationAgregateurCPTS</a></p></div><p><b>identifier</b>: Identification nationale de structure définie par l’ANS dans le CI_SIS/1950047225</p><p><b>name</b>: CPTS AXE MAJEUR</p><p><b>telecom</b>: <a href=\"tel:+33102030405\">+33102030405</a></p></div>"
        },
        "identifier" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
                  "code" : "IDNST"
                }
              ]
            },
            "system" : "urn:oid:1.2.250.1.71.4.2.2",
            "value" : "1950047225"
          }
        ],
        "name" : "CPTS AXE MAJEUR",
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+33102030405"
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://<base_URl>/HealthcareService/ExampleHealthcareServiceCPTS2",
      "resource" : {
        "resourceType" : "HealthcareService",
        "id" : "ExampleHealthcareServiceCPTS2",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"HealthcareService_ExampleHealthcareServiceCPTS2\"> </a><p class=\"res-header-id\"><b>Narratif généré : ServiceDeSanté ExampleHealthcareServiceCPTS2</b></p><a name=\"ExampleHealthcareServiceCPTS2\"> </a><a name=\"hcExampleHealthcareServiceCPTS2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-cpts-healthcareservice-aggregator.html\">FrHealthcareServiceAgregateurCPTS</a></p></div><p><b>providedBy</b>: <a href=\"Organization-ExampleOrgaCPTS2.html\">Organization CPTS VAL D OISE CENTRE</a></p></div>"
        },
        "providedBy" : {
          "reference" : "Organization/ExampleOrgaCPTS2"
        }
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "https://<base_URl>/Organization/ExampleOrgaCPTS2",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "ExampleOrgaCPTS2",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_ExampleOrgaCPTS2\"> </a><p class=\"res-header-id\"><b>Narratif généré : Organisation ExampleOrgaCPTS2</b></p><a name=\"ExampleOrgaCPTS2\"> </a><a name=\"hcExampleOrgaCPTS2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-cpts-organization-aggregator.html\">FrOrganizationAgregateurCPTS</a></p></div><p><b>identifier</b>: Identification nationale de structure définie par l’ANS dans le CI_SIS/1950046227</p><p><b>name</b>: CPTS VAL D OISE CENTRE</p><p><b>telecom</b>: <a href=\"tel:+33139599280\">+33139599280</a></p></div>"
        },
        "identifier" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
                  "code" : "IDNST"
                }
              ]
            },
            "system" : "urn:oid:1.2.250.1.71.4.2.2",
            "value" : "1950046227"
          }
        ],
        "name" : "CPTS VAL D OISE CENTRE",
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+33139599280"
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    }
  ]
}

```
