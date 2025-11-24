# Profil SAS consommateur de créneaux SOS - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profil SAS consommateur de créneaux SOS**

## CapabilityStatement: Profil SAS consommateur de créneaux SOS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-Consommateur-SOS | *Version*:1.2.0 |
| Draft as of 2024-10-01 | *Computable Name*:SAS_consommateur_SOS |

 
Un consommateur consulte les créneaux SOS mis à disposition par un gestionnaire d’agenda. La platefome numérique SAS joue le rôle de consommateur et affiche les créneaux récupérés 

 [Raw OpenAPI-Swagger Definition file](SAS-Consommateur-SOS.openapi.json) | [Download](SAS-Consommateur-SOS.openapi.json) 

## Profil SAS consommateur de créneaux SOS

* Version du guide dimplémentation : {0} 
* Version de FHIR : 4.0.1 
* Formats supportés : `application/fhir+json`
* Publié sur : 2024-10-01 00:00:00+0100 
* Publié par : ANS 

> **Note aux implémenteurs : capacités FHIR**Toute capacité FHIR peut être 'autorisée' par le système sauf si elle est explicitement marquée comme 'SHALL NOT'. Quelques éléments sont marqués comme MAY dans le guide dimplémentation pour souligner leur pertinence potentielle pour le cas dusage.

### DOIT prendre en charge les guides d’implémentation suivants.

* https://interop.esante.gouv.fr/ig/fhir/sas

## Capacités RESTful FHIR

### Mode: client

Consultation de créneaux SOS

**Security**

> 

L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)


### Capacités par ressource/profil

#### Résumé

Le tableau récapitulatif liste les ressources faisant partie de cette configuration, et pour chaque ressource, il liste :

* Les profils pertinents (le cas échéant)
* Les interactions supportées par chaque ressource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**les types sont seulement présents si au moins une des ressources les prend en charge.
* Les paramètres de recherche (SearchParameters) requis, recommandés, optionnels (le cas échéant).
* Les ressources liées activées pour `_include`
* Les autres ressources activées pour `_revinclude`
* Les opérations sur la ressource (le cas échéant)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Schedule](#Schedule1-1) | [https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator](StructureDefinition-sas-sos-schedule-aggregator.md) | y | y |  |  | _has, SearchSchedule-actor | `Schedule:actor:Location`,`Location:organization` | `Slot:schedule` |  |
| [Slot](#Slot1-2) | [https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator](StructureDefinition-sas-sos-slot-aggregator.md) | y | y |  |  | SPDateDebutSlot |  |  |  |
| [Location](#Location1-3) | [https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator](StructureDefinition-sas-sos-location-aggregator.md) | y | y |  |  | Location-organization |  |  |  |
| [Organization](#Organization1-4) | [https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator](StructureDefinition-sas-sos-organization-aggregator.md) | y | y |  |  | Organization-identifier |  |  |  |

-------

#### Conformité de la ressource : supported Schedule

Profil système de base

[FrScheduleAgregateurSOS](StructureDefinition-sas-sos-schedule-aggregator.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported Slot

Profil système de base

[FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported Location

Profil système de base

[FrLocationAgregateurSOS](StructureDefinition-sas-sos-location-aggregator.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported Organization

Profil système de base

[FrOrganizationAgregateurSOS](StructureDefinition-sas-sos-organization-aggregator.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `read`, `search-type`.

Paramètres de recherche


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "SAS-Consommateur-SOS",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-Consommateur-SOS",
  "version" : "1.2.0",
  "name" : "SAS_consommateur_SOS",
  "title" : "Profil SAS consommateur de créneaux SOS",
  "status" : "draft",
  "experimental" : false,
  "date" : "2024-10-01T00:00:00+01:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Un consommateur consulte les créneaux SOS mis à disposition par un gestionnaire d’agenda. La platefome numérique SAS joue le rôle de consommateur et affiche les créneaux récupérés",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+json"],
  "implementationGuide" : ["https://interop.esante.gouv.fr/ig/fhir/sas"],
  "rest" : [
    {
      "mode" : "client",
      "documentation" : "Consultation de créneaux SOS",
      "security" : {
        "cors" : false,
        "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
      },
      "resource" : [
        {
          "type" : "Schedule",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator",
          "interaction" : [
            {
              "code" : "read"
            },
            {
              "code" : "search-type"
            }
          ],
          "searchInclude" : ["Schedule:actor:Location", "Location:organization"],
          "searchRevInclude" : ["Slot:schedule"],
          "searchParam" : [
            {
              "name" : "_has",
              "type" : "special",
              "documentation" : "Permet la sélection des ressources en fonction des propriétés des ressources qui y font référence (reverse chaining)"
            },
            {
              "name" : "SearchSchedule-actor",
              "definition" : "http://hl7.org/fhir/SearchParameter/Schedule-actor",
              "type" : "reference",
              "documentation" : "Permet de rechercher un agenda par acteur - lieu dans ce cas"
            }
          ]
        },
        {
          "type" : "Slot",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator",
          "interaction" : [
            {
              "code" : "read"
            },
            {
              "code" : "search-type"
            }
          ],
          "searchParam" : [
            {
              "name" : "SPDateDebutSlot",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/sas/SearchParameter/slot-sp-start",
              "type" : "date",
              "documentation" : "Recherche d'une disponibilité sur la date et l'heure de début de disponibilité souhaité"
            }
          ]
        },
        {
          "type" : "Location",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator",
          "interaction" : [
            {
              "code" : "read"
            },
            {
              "code" : "search-type"
            }
          ],
          "searchParam" : [
            {
              "name" : "Location-organization",
              "definition" : "http://hl7.org/fhir/SearchParameter/Location-organization",
              "type" : "reference",
              "documentation" : "Recherche d'un lieu selon la structure rattachée"
            }
          ]
        },
        {
          "type" : "Organization",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator",
          "interaction" : [
            {
              "code" : "read"
            },
            {
              "code" : "search-type"
            }
          ],
          "searchParam" : [
            {
              "name" : "Organization-identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier",
              "type" : "token",
              "documentation" : "Recherche d'une structure par identifiant - SIRET dans ce cas"
            }
          ]
        }
      ]
    }
  ]
}

```
