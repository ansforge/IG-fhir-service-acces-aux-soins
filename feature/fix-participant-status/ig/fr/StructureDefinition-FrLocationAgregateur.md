# FrLocationAgregateur - Service d'Accès aux Soins v1.2.0

## Profil de ressource: FrLocationAgregateur 

 
Profil de Location, dérivé de FrLocation, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Utilisations:**

* Référence ce Profil: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrLocationAgregateur)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrLocation](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrLocation) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrLocation](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrLocation) 

** Résumé **

Obligatoire : 4 éléments

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FrLocation](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrLocation) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrLocation](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrLocation) 

** Résumé **

Obligatoire : 4 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-FrLocationAgregateur.csv), [Excel](../StructureDefinition-FrLocationAgregateur.xlsx), [Schematron](../StructureDefinition-FrLocationAgregateur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrLocationAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur",
  "version" : "1.2.0",
  "name" : "FrLocationAgregateur",
  "status" : "active",
  "date" : "2026-06-15T13:11:53+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de Location, dérivé de FrLocation, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
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
  "type" : "Location",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrLocation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
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
    }]
  }
}

```
