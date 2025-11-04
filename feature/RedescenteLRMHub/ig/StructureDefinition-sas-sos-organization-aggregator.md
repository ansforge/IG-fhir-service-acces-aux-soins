# FrOrganizationAgregateurSOS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrOrganizationAgregateurSOS**

## Resource Profile: FrOrganizationAgregateurSOS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator | *Version*:1.1.0 |
| Active as of 2025-11-04 | *Computable Name*:FrOrganizationAgregateurSOS |

 
Profil d'Organization, dérivé de FrOrganization, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Usages:**

* Use this Profile: [BundleAgregateurSOS](StructureDefinition-sas-sos-bundle-aggregator.md)
* Refer to this Profile: [FrLocationAgregateurSOS](StructureDefinition-sas-sos-location-aggregator.md)
* Examples for this Profile: [SOS Médecins de Rennes](Organization-ExampleOrgaSOS1.md) and [SOS Médecins Lorient et agglomération](Organization-ExampleOrgaSOS2.md)
* CapabilityStatements using this Profile: [Profil SAS consommateur de créneaux SOS](CapabilityStatement-SAS-Consommateur-SOS.md) and [Profil SAS gestionnaire d'agenda SOS](CapabilityStatement-SAS-GestionnaireAgenda-SOS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-sos-organization-aggregator)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-sos-organization-aggregator.csv), [Excel](StructureDefinition-sas-sos-organization-aggregator.xlsx), [Schematron](StructureDefinition-sas-sos-organization-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-organization-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator",
  "version" : "1.1.0",
  "name" : "FrOrganizationAgregateurSOS",
  "status" : "active",
  "date" : "2025-11-04T09:53:58+00:00",
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
  "description" : "Profil d'Organization, dérivé de FrOrganization, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins",
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
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrOrganization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
        "min" : 1,
        "max" : "1",
        "constraint" : [
          {
            "key" : "SIRET-invariant",
            "severity" : "error",
            "human" : "Le numéro SIRET doit être préfixé par 3 suivi de 14 caractères numériques",
            "expression" : "value.matches('^3[0-9]{14}$')",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator"
          }
        ]
      },
      {
        "id" : "Organization.identifier.type",
        "path" : "Organization.identifier.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
              "code" : "IDNST"
            }
          ]
        }
      },
      {
        "id" : "Organization.identifier.system",
        "path" : "Organization.identifier.system",
        "patternUri" : "urn:oid:1.2.250.1.71.4.2.2"
      }
    ]
  }
}

```
