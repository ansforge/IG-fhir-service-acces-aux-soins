# Profil SAS gestionnaire d'agenda CPTS - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profil SAS gestionnaire d'agenda CPTS**

## CapabilityStatement: Profil SAS gestionnaire d'agenda CPTS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-GestionnaireAgenda-CPTS | *Version*:1.2.0 |
| Draft as of 2024-10-01 | *Computable Name*:SAS_gestionnaireAgenda_CPTS |

 
Un gestionnaire d'agenda met à disposition d'un consommateur des créneaux de disponibilité. Cas d'usage CPTS 

 [Raw OpenAPI-Swagger Definition file](SAS-GestionnaireAgenda-CPTS.openapi.json) | [Download](SAS-GestionnaireAgenda-CPTS.openapi.json) 

## Profil SAS gestionnaire d'agenda CPTS

* Version du guide dimplémentation : {0} 
* Version de FHIR : 4.0.1 
* Formats supportés : `application/fhir+json`
* Publié sur : 2024-10-01 00:00:00+0100 
* Publié par : ANS 

> **Note aux implémenteurs : capacités FHIR**Toute capacité FHIR peut être 'autorisée' par le système sauf si elle est explicitement marquée comme 'SHALL NOT'. Quelques éléments sont marqués comme MAY dans le guide dimplémentation pour souligner leur pertinence potentielle pour le cas dusage.

### DOIT prendre en charge les guides d’implémentation suivants.

* https://interop.esante.gouv.fr/ig/fhir/sas

## Capacités RESTful FHIR

### Mode: server

Mise à disposition de créneaux de disponibilité CPTS

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
| [Slot](#Slot1-1) | [https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-slot-aggregator](StructureDefinition-sas-cpts-slot-aggregator.md) | y | y |  |  | SPDateDebutSlot | `Slot:schedule`,`Schedule:actor`,`Slot:service-type-reference`,`HealthcareService:organization` |  |  |
| [Schedule](#Schedule1-2) | [http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md) | y | y |  |  | SearchSchedule-actor |  |  |  |
| [Practitioner](#Practitioner1-3) | [http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur](StructureDefinition-FrPractitionerAgregateur.md) | y | y |  |  | Practitioner-identifier |  |  |  |

-------

#### Conformité de la ressource : supported Slot

Profil système de base

[FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported Schedule

Profil système de base

[FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported Practitioner

Profil système de base

[FrPractitionerAgregateur](StructureDefinition-FrPractitionerAgregateur.md)

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
  "id" : "SAS-GestionnaireAgenda-CPTS",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-GestionnaireAgenda-CPTS",
  "version" : "1.2.0",
  "name" : "SAS_gestionnaireAgenda_CPTS",
  "title" : "Profil SAS gestionnaire d'agenda CPTS",
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
  "description" : "Un gestionnaire d'agenda met à disposition d'un consommateur des créneaux de disponibilité. Cas d'usage CPTS",
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
      "mode" : "server",
      "documentation" : "Mise à disposition de créneaux de disponibilité CPTS",
      "security" : {
        "cors" : false,
        "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
      },
      "resource" : [
        {
          "type" : "Slot",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-slot-aggregator",
          "interaction" : [
            {
              "code" : "read"
            },
            {
              "code" : "search-type"
            }
          ],
          "searchInclude" : [
            "Slot:schedule",
            "Schedule:actor",
            "Slot:service-type-reference",
            "HealthcareService:organization"
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
          "type" : "Schedule",
          "profile" : "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur",
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
              "name" : "SearchSchedule-actor",
              "definition" : "http://hl7.org/fhir/SearchParameter/Schedule-actor",
              "type" : "reference",
              "documentation" : "Permet de rechercher un agenda par acteur - praticien dans ce cas"
            }
          ]
        },
        {
          "type" : "Practitioner",
          "profile" : "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur",
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
              "name" : "Practitioner-identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier",
              "type" : "token",
              "documentation" : "Permet de rechercher un praticien par identifiant - RPPS dans ce cas"
            }
          ]
        }
      ]
    }
  ]
}

```
