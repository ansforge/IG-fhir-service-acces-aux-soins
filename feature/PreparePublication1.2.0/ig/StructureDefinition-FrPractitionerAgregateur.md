# FrPractitionerAgregateur - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrPractitionerAgregateur**

## Resource Profile: FrPractitionerAgregateur 

| | |
| :--- | :--- |
| *Official URL*:http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur | *Version*:1.2.0 |
| Active as of 2025-11-24 | *Computable Name*:FrPractitionerAgregateur |

 
Profil de Practitioner, dérivé de FrPractitioner, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Usages:**

* Use this Profile: [BundleAgregateur](StructureDefinition-BundleAgregateur.md) and [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Refer to this Profile: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)
* Examples for this Profile: [Practitioner/ExamplePractitioner](Practitioner-ExamplePractitioner.md), [Practitioner/ExamplePractitioner2](Practitioner-ExamplePractitioner2.md) and [Practitioner/ExamplePractitioner3](Practitioner-ExamplePractitioner3.md)
* CapabilityStatements using this Profile: [Profil SAS consommateur de créneaux CPTS](CapabilityStatement-SAS-Consommateur-CPTS.md), [Profil SAS consommateur de créneaux](CapabilityStatement-SAS-Consommateur-psindiv.md), [Profil SAS gestionnaire d'agenda CPTS](CapabilityStatement-SAS-GestionnaireAgenda-CPTS.md) and [Profil SAS gestionnaire d'agenda PS Indiv](CapabilityStatement-SAS-GestionnaireAgenda-PsIndiv.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrPractitionerAgregateur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrPractitionerAgregateur.csv), [Excel](StructureDefinition-FrPractitionerAgregateur.xlsx), [Schematron](StructureDefinition-FrPractitionerAgregateur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPractitionerAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur",
  "version" : "1.2.0",
  "name" : "FrPractitionerAgregateur",
  "status" : "active",
  "date" : "2025-11-24T09:10:21+00:00",
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
  "description" : "Profil de Practitioner, dérivé de FrPractitioner, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrPractitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier.type",
        "path" : "Practitioner.identifier.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
              "code" : "IDNPS"
            }
          ]
        }
      },
      {
        "id" : "Practitioner.identifier.type.coding",
        "path" : "Practitioner.identifier.type.coding",
        "max" : "1"
      },
      {
        "id" : "Practitioner.identifier.system",
        "path" : "Practitioner.identifier.system",
        "patternUri" : "urn:oid:1.2.250.1.71.4.2.1"
      },
      {
        "id" : "Practitioner.name.family",
        "path" : "Practitioner.name.family",
        "binding" : {
          "strength" : "preferred",
          "description" : "Nom d'exercice"
        }
      },
      {
        "id" : "Practitioner.name.given",
        "path" : "Practitioner.name.given",
        "binding" : {
          "strength" : "preferred",
          "description" : "Prénom"
        }
      }
    ]
  }
}

```
