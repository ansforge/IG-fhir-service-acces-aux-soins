# FrPractitionerRoleExerciceAgregateur - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrPractitionerRoleExerciceAgregateur**

## Resource Profile: FrPractitionerRoleExerciceAgregateur 

| | |
| :--- | :--- |
| *Official URL*:http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur | *Version*:1.2.0 |
| Active as of 2025-11-25 | *Computable Name*:FrPractitionerRoleExerciceAgregateur |

 
Profil de PractitionerRole, dérivé de FrPractitionerRoleExercice, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Usages:**

* Use this Profile: [BundleAgregateur](StructureDefinition-BundleAgregateur.md) and [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Examples for this Profile: [PractitionerRole/ExamplePractitionerRoleAgregateur](PractitionerRole-ExamplePractitionerRoleAgregateur.md), [PractitionerRole/ExamplePractitionerRoleAgregateur2](PractitionerRole-ExamplePractitionerRoleAgregateur2.md), [PractitionerRole/ExamplePractitionerRoleAgregateur3](PractitionerRole-ExamplePractitionerRoleAgregateur3.md) and [PractitionerRole/ExamplePractitionerRoleAgregateur4](PractitionerRole-ExamplePractitionerRoleAgregateur4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrPractitionerRoleExerciceAgregateur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrPractitionerRoleExerciceAgregateur.csv), [Excel](StructureDefinition-FrPractitionerRoleExerciceAgregateur.xlsx), [Schematron](StructureDefinition-FrPractitionerRoleExerciceAgregateur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPractitionerRoleExerciceAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur",
  "version" : "1.2.0",
  "name" : "FrPractitionerRoleExerciceAgregateur",
  "status" : "active",
  "date" : "2025-11-25T08:03:17+00:00",
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
  "description" : "Profil de PractitionerRole, dérivé de FrPractitionerRoleExercice, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrPractitionerRoleExercice",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole.contained",
        "path" : "PractitionerRole.contained",
        "min" : 1
      },
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"
            ],
            "aggregation" : ["referenced", "bundled"]
          }
        ]
      },
      {
        "id" : "PractitionerRole.organization.identifier",
        "path" : "PractitionerRole.organization.identifier",
        "short" : "Identifiant national de la structure",
        "definition" : "Identifiant national de la structure (FINESS, SIRET ou RPPS Rang uniquement)"
      },
      {
        "id" : "PractitionerRole.organization.identifier.type",
        "path" : "PractitionerRole.organization.identifier.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
              "code" : "IDNST"
            }
          ]
        }
      },
      {
        "id" : "PractitionerRole.organization.identifier.system",
        "path" : "PractitionerRole.organization.identifier.system",
        "patternUri" : "urn:oid:1.2.250.1.71.4.2.2"
      },
      {
        "id" : "PractitionerRole.location",
        "path" : "PractitionerRole.location",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur"
            ],
            "aggregation" : ["contained"]
          }
        ]
      }
    ]
  }
}

```
