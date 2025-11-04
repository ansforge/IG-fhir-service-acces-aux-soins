# FrLocationAgregateurSOS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrLocationAgregateurSOS**

## Resource Profile: FrLocationAgregateurSOS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator | *Version*:1.1.0 |
| Active as of 2025-11-04 | *Computable Name*:FrLocationAgregateurSOS |

 
Profil de Location, dérivé de FrLocation, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Usages:**

* Use this Profile: [BundleAgregateurSOS](StructureDefinition-sas-sos-bundle-aggregator.md)
* Examples for this Profile: [Centre de consultation Rennes Nord](Location-1111111111.md), [Centre de consultation Rennes Cleunay](Location-2222222222.md) and [Centre de consultation Lorient](Location-3333333333.md)
* CapabilityStatements using this Profile: [Profil SAS consommateur de créneaux SOS](CapabilityStatement-SAS-Consommateur-SOS.md) and [Profil SAS gestionnaire d'agenda SOS](CapabilityStatement-SAS-GestionnaireAgenda-SOS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-sos-location-aggregator)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-sos-location-aggregator.csv), [Excel](StructureDefinition-sas-sos-location-aggregator.xlsx), [Schematron](StructureDefinition-sas-sos-location-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-location-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator",
  "version" : "1.1.0",
  "name" : "FrLocationAgregateurSOS",
  "status" : "active",
  "date" : "2025-11-04T10:15:26+00:00",
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
  "description" : "Profil de Location, dérivé de FrLocation, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins",
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
  "type" : "Location",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrLocation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location.identifier.type",
        "path" : "Location.identifier.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
              "code" : "INTRN"
            }
          ]
        }
      },
      {
        "id" : "Location.name",
        "path" : "Location.name",
        "min" : 1
      },
      {
        "id" : "Location.address",
        "path" : "Location.address",
        "min" : 1
      },
      {
        "id" : "Location.address.line",
        "path" : "Location.address.line",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Location.address.city",
        "path" : "Location.address.city",
        "min" : 1
      },
      {
        "id" : "Location.address.postalCode",
        "path" : "Location.address.postalCode",
        "min" : 1,
        "maxLength" : 5
      },
      {
        "id" : "Location.managingOrganization",
        "path" : "Location.managingOrganization",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator"
            ]
          }
        ]
      },
      {
        "id" : "Location.managingOrganization.reference",
        "path" : "Location.managingOrganization.reference",
        "min" : 1
      }
    ]
  }
}

```
