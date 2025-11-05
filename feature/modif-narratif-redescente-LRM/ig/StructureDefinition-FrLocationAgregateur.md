# FrLocationAgregateur - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrLocationAgregateur**

## Resource Profile: FrLocationAgregateur 

| | |
| :--- | :--- |
| *Official URL*:http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur | *Version*:1.1.0 |
| Active as of 2025-11-05 | *Computable Name*:FrLocationAgregateur |

 
Profil de Location, dérivé de FrLocation, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Usages:**

* Refer to this Profile: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrLocationAgregateur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrLocationAgregateur.csv), [Excel](StructureDefinition-FrLocationAgregateur.xlsx), [Schematron](StructureDefinition-FrLocationAgregateur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrLocationAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur",
  "version" : "1.1.0",
  "name" : "FrLocationAgregateur",
  "status" : "active",
  "date" : "2025-11-05T08:44:55+00:00",
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
  "description" : "Profil de Location, dérivé de FrLocation, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
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
        "id" : "Location",
        "path" : "Location"
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
        "max" : "1",
        "binding" : {
          "strength" : "extensible",
          "description" : "Adresse de consultation – Voie"
        }
      },
      {
        "id" : "Location.address.city",
        "path" : "Location.address.city",
        "min" : 1,
        "binding" : {
          "strength" : "extensible",
          "description" : "Adresse de consultation – Ville"
        }
      },
      {
        "id" : "Location.address.postalCode",
        "path" : "Location.address.postalCode",
        "min" : 1,
        "binding" : {
          "strength" : "extensible",
          "description" : "Adresse de consultation – Code postal"
        }
      }
    ]
  }
}

```
