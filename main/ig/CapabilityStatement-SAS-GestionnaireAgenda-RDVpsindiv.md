# Profil SAS gestionnaire d'agenda RDV ps indiv - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profil SAS gestionnaire d'agenda RDV ps indiv**

## CapabilityStatement: Profil SAS gestionnaire d'agenda RDV ps indiv 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-GestionnaireAgenda-RDVpsindiv | *Version*:1.2.0 |
| Draft as of 2024-10-01 | *Computable Name*:SAS_gestionnaireAgenda_RDVpsindiv |

 
Un gestionnaire d'agenda reçoit des rendez-vous ps indiv envoyés par un déclarant de rendez-vous. La platefome numérique SAS joue le rôle de gestionnaire d'agenda et stocke les rendez-vous récupérés 

 [Raw OpenAPI-Swagger Definition file](SAS-GestionnaireAgenda-RDVpsindiv.openapi.json) | [Download](SAS-GestionnaireAgenda-RDVpsindiv.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "SAS-GestionnaireAgenda-RDVpsindiv",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-GestionnaireAgenda-RDVpsindiv",
  "version" : "1.2.0",
  "name" : "SAS_gestionnaireAgenda_RDVpsindiv",
  "title" : "Profil SAS gestionnaire d'agenda RDV ps indiv",
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
  "description" : "Un gestionnaire d'agenda reçoit des rendez-vous ps indiv envoyés par un déclarant de rendez-vous. La platefome numérique SAS joue le rôle de gestionnaire d'agenda et stocke les rendez-vous récupérés",
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
    "documentation" : "Réception des création et mises à jour de RDV ps indiv",
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
    },
    "resource" : [{
      "type" : "Appointment",
      "profile" : "http://sas.fr/fhir/StructureDefinition/FrAppointmentSAS",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "updateCreate" : true,
      "conditionalUpdate" : true,
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-identifier",
        "type" : "token",
        "documentation" : "Identifiant du rendez-vous"
      }]
    }]
  }]
}

```
