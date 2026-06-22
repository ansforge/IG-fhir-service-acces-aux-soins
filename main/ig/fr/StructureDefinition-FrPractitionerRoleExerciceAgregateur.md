# FrPractitionerRoleExerciceAgregateur - Service d'Accès aux Soins v1.2.0

## Profil de ressource: FrPractitionerRoleExerciceAgregateur 

 
Profil de PractitionerRole, dérivé de FrPractitionerRoleExercice, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Utilisations:**

* Utilise ce/t/te Profil: [BundleAgregateur](StructureDefinition-BundleAgregateur.md) and [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Exemples pour ce/t/te Profil: [PractitionerRole/ExamplePractitionerRoleAgregateur](PractitionerRole-ExamplePractitionerRoleAgregateur.md), [PractitionerRole/ExamplePractitionerRoleAgregateur2](PractitionerRole-ExamplePractitionerRoleAgregateur2.md), [PractitionerRole/ExamplePractitionerRoleAgregateur3](PractitionerRole-ExamplePractitionerRoleAgregateur3.md) and [PractitionerRole/ExamplePractitionerRoleAgregateur4](PractitionerRole-ExamplePractitionerRoleAgregateur4.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrPractitionerRoleExerciceAgregateur)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Contraintes

Cette structure est dérivée de [FrPractitionerRoleExercice](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitionerRoleExercice) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrPractitionerRoleExercice](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitionerRoleExercice) 

** Résumé **

Obligatoire : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FrPractitionerAgregateur (http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur)](StructureDefinition-FrPractitionerAgregateur.md)
* [FrLocationAgregateur (http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur)](StructureDefinition-FrLocationAgregateur.md)

 **Vue des éléments clés** 

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FrPractitionerRoleExercice](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitionerRoleExercice) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrPractitionerRoleExercice](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitionerRoleExercice) 

** Résumé **

Obligatoire : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FrPractitionerAgregateur (http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur)](StructureDefinition-FrPractitionerAgregateur.md)
* [FrLocationAgregateur (http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur)](StructureDefinition-FrLocationAgregateur.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-FrPractitionerRoleExerciceAgregateur.csv), [Excel](../StructureDefinition-FrPractitionerRoleExerciceAgregateur.xlsx), [Schematron](../StructureDefinition-FrPractitionerRoleExerciceAgregateur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPractitionerRoleExerciceAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur",
  "version" : "1.2.0",
  "name" : "FrPractitionerRoleExerciceAgregateur",
  "status" : "active",
  "date" : "2026-06-22T16:38:09+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de PractitionerRole, dérivé de FrPractitionerRoleExercice, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrPractitionerRoleExercice",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole.contained",
      "path" : "PractitionerRole.contained",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"],
        "aggregation" : ["referenced", "bundled"]
      }]
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
        "coding" : [{
          "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
          "code" : "IDNST"
        }]
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur"],
        "aggregation" : ["contained"]
      }]
    }]
  }
}

```
