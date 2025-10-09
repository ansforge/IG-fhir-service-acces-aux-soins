# Profil SAS gestionnaire d'agenda RDV SOS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profil SAS gestionnaire d'agenda RDV SOS**

## CapabilityStatement: Profil SAS gestionnaire d'agenda RDV SOS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-GestionnaireAgenda-RDVSOS | *Version*:1.1.0 |
| Draft as of 2024-10-01 | *Computable Name*:SAS_gestionnaireAgenda_RDVSOS |

 
Un gestionnaire d'agenda reçoit des rendez-vous SOS envoyés par un déclarant de rendez-vous. La platefome numérique SAS joue le rôle de gestionnaire d'agenda et stocke les rendez-vous récupérés 

 [Raw OpenAPI-Swagger Definition file](SAS-GestionnaireAgenda-RDVSOS.openapi.json) | [Download](SAS-GestionnaireAgenda-RDVSOS.openapi.json) 

## Profil SAS gestionnaire d'agenda RDV SOS

* Version du guide dimplémentation : {0} 
* Version de FHIR : 4.0.1 
* Supported Formats: `application/fhir+json`
* Publié sur : 2024-10-01 00:00:00+0100 
* Publié par : ANS 

> **Note aux implémenteurs : capacités FHIR**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

### DOIT prendre en charge les guides d’implémentation suivants.

* https://interop.esante.gouv.fr/ig/fhir/sas

## FHIR RESTful Capabilities

### Mode: server

Réception des création et mises à jour de RDV SOS

**Security**

> 

L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)


### Capabilities by Resource/Profile

#### Résumé

Le tableau récapitulatif liste les ressources faisant partie de cette configuration, et pour chaque ressource, il liste :

* The relevant profiles (if any)
* Les interactions supportées par chaque ressource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**les types sont seulement présents si au moins une des ressources les prend en charge.
* Les paramètres de recherche (SearchParameters) requis, recommandés, optionnels (le cas échéant).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Appointment](#Appointment1-1) | [https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-appointment](StructureDefinition-sas-sos-appointment.md) |  |  | y | y | identifier |  |  |  |

-------

#### Resource Conformance: supported Appointment

Base System Profile

[FrAppointmentSASSOS](StructureDefinition-sas-sos-appointment.md)

Conformité au Profil

**SHALL**

Reference Policy

Résumé des interactions

* Supports `create`, `update`.

Paramètres de recherche


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "SAS-GestionnaireAgenda-RDVSOS",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-GestionnaireAgenda-RDVSOS",
  "version" : "1.1.0",
  "name" : "SAS_gestionnaireAgenda_RDVSOS",
  "title" : "Profil SAS gestionnaire d'agenda RDV SOS",
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
  "description" : "Un gestionnaire d'agenda reçoit des rendez-vous SOS envoyés par un déclarant de rendez-vous. La platefome numérique SAS joue le rôle de gestionnaire d'agenda et stocke les rendez-vous récupérés",
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
      "documentation" : "Réception des création et mises à jour de RDV SOS",
      "security" : {
        "cors" : false,
        "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
      },
      "resource" : [
        {
          "type" : "Appointment",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-appointment",
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            }
          ],
          "updateCreate" : true,
          "conditionalUpdate" : true,
          "searchParam" : [
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-identifier",
              "type" : "token",
              "documentation" : "Identifiant du rendez-vous"
            }
          ]
        }
      ]
    }
  ]
}

```
