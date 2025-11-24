# Profil SAS gestionnaire d'agenda RDV SOS - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profil SAS gestionnaire d'agenda RDV SOS**

## CapabilityStatement: Profil SAS gestionnaire d'agenda RDV SOS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-GestionnaireAgenda-RDVSOS | *Version*:1.2.0 |
| Draft as of 2024-10-01 | *Computable Name*:SAS_gestionnaireAgenda_RDVSOS |

 
Un gestionnaire d'agenda reçoit des rendez-vous SOS envoyés par un déclarant de rendez-vous. La platefome numérique SAS joue le rôle de gestionnaire d'agenda et stocke les rendez-vous récupérés 

 [Raw OpenAPI-Swagger Definition file](SAS-GestionnaireAgenda-RDVSOS.openapi.json) | [Download](SAS-GestionnaireAgenda-RDVSOS.openapi.json) 

## Profil SAS gestionnaire d'agenda RDV SOS

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

Réception des création et mises à jour de RDV SOS

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
| [Appointment](#Appointment1-1) | [https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-appointment](StructureDefinition-sas-sos-appointment.md) |  |  | y | y | identifier |  |  |  |

-------

#### Conformité de la ressource : supported Appointment

Profil système de base

[FrAppointmentSASSOS](StructureDefinition-sas-sos-appointment.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`.

Paramètres de recherche


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "SAS-GestionnaireAgenda-RDVSOS",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/CapabilityStatement/SAS-GestionnaireAgenda-RDVSOS",
  "version" : "1.2.0",
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
