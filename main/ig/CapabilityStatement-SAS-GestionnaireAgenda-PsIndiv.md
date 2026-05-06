# Profil SAS gestionnaire d'agenda PS Indiv - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profil SAS gestionnaire d'agenda PS Indiv**

## CapabilityStatement: Profil SAS gestionnaire d'agenda PS Indiv 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-GestionnaireAgenda-PsIndiv | *Version*:1.2.0 |
| Draft as of 2024-10-01 | *Computable Name*:SAS_gestionnaireAgenda_Psindiv |

 
Un gestionnaire d'agenda met à disposition d'un consommateur des créneaux de disponibilité. Cas d'usage PS à titre individuel 

 [Raw OpenAPI-Swagger Definition file](SAS-GestionnaireAgenda-PsIndiv.openapi.json) | [Download](SAS-GestionnaireAgenda-PsIndiv.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "SAS-GestionnaireAgenda-PsIndiv",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-GestionnaireAgenda-PsIndiv",
  "version" : "1.2.0",
  "name" : "SAS_gestionnaireAgenda_Psindiv",
  "title" : "Profil SAS gestionnaire d'agenda PS Indiv",
  "status" : "draft",
  "experimental" : false,
  "date" : "2024-10-01T00:00:00+01:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Un gestionnaire d'agenda met à disposition d'un consommateur des créneaux de disponibilité. Cas d'usage PS à titre individuel",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+json"],
  "implementationGuide" : ["https://interop.esante.gouv.fr/ig/fhir/sas"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "Mise à disposition de créneaux de disponibilité PS. Indiv",
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
    },
    "resource" : [{
      "type" : "Slot",
      "profile" : "http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchInclude" : ["Slot:schedule", "Schedule:actor"],
      "searchParam" : [{
        "name" : "SPDateDebutSlot",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/sas/SearchParameter/slot-sp-start",
        "type" : "date",
        "documentation" : "Recherche d'une disponibilité sur la date et l'heure de début de disponibilité souhaité"
      }]
    },
    {
      "type" : "Schedule",
      "profile" : "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "SearchSchedule-actor",
        "definition" : "http://hl7.org/fhir/SearchParameter/Schedule-actor",
        "type" : "reference",
        "documentation" : "Permet de rechercher un agenda par acteur - praticien dans ce cas"
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "Practitioner-identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier",
        "type" : "token",
        "documentation" : "Permet de rechercher un praticien par identifiant - RPPS dans ce cas"
      }]
    }]
  }]
}

```
