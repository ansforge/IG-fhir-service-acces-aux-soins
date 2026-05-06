# Profil SAS consommateur de créneaux CPTS - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profil SAS consommateur de créneaux CPTS**

## CapabilityStatement: Profil SAS consommateur de créneaux CPTS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-Consommateur-CPTS | *Version*:1.2.0 |
| Draft as of 2024-10-01 | *Computable Name*:SAS_consommateur_CPTS |

 
Un consommateur consulte les créneaux CPTS mis à disposition par un gestionnaire d’agenda. La platefome numérique SAS joue le rôle de consommateur et affiche les créneaux récupérés 

 [Raw OpenAPI-Swagger Definition file](SAS-Consommateur-CPTS.openapi.json) | [Download](SAS-Consommateur-CPTS.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "SAS-Consommateur-CPTS",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-Consommateur-CPTS",
  "version" : "1.2.0",
  "name" : "SAS_consommateur_CPTS",
  "title" : "Profil SAS consommateur de créneaux CPTS",
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
  "description" : "Un consommateur consulte les créneaux CPTS mis à disposition par un gestionnaire d’agenda. La platefome numérique SAS joue le rôle de consommateur et affiche les créneaux récupérés",
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
    "mode" : "client",
    "documentation" : "Consultation de créneaux CPTS",
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
    },
    "resource" : [{
      "type" : "Slot",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-slot-aggregator",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchInclude" : ["Slot:schedule",
      "Schedule:actor",
      "Slot:service-type-reference",
      "HealthcareService:organization"],
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
