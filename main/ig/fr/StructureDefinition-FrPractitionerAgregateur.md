# FrPractitionerAgregateur - Service d'Accès aux Soins v1.2.0

## Profil de ressource: FrPractitionerAgregateur 

 
Profil de Practitioner, dérivé de FrPractitioner, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Utilisations:**

* Utilise ce/t/te Profil: [BundleAgregateur](StructureDefinition-BundleAgregateur.md) and [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Référence ce Profil: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)
* Exemples pour ce/t/te Profil: [Practitioner/ExamplePractitioner](Practitioner-ExamplePractitioner.md), [Practitioner/ExamplePractitioner2](Practitioner-ExamplePractitioner2.md) and [Practitioner/ExamplePractitioner3](Practitioner-ExamplePractitioner3.md)
* CapabilityStatements utilisant ce Profil: [Profil SAS consommateur de créneaux CPTS](CapabilityStatement-SAS-Consommateur-CPTS.md), [Profil SAS consommateur de créneaux](CapabilityStatement-SAS-Consommateur-psindiv.md), [Profil SAS gestionnaire d'agenda CPTS](CapabilityStatement-SAS-GestionnaireAgenda-CPTS.md) and [Profil SAS gestionnaire d'agenda PS Indiv](CapabilityStatement-SAS-GestionnaireAgenda-PsIndiv.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrPractitionerAgregateur)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrPractitioner](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrPractitioner](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner) 

** Résumé **

Obligatoire : 1 élément

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FrPractitioner](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrPractitioner](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner) 

** Résumé **

Obligatoire : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-FrPractitionerAgregateur.csv), [Excel](../StructureDefinition-FrPractitionerAgregateur.xlsx), [Schematron](../StructureDefinition-FrPractitionerAgregateur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPractitionerAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur",
  "version" : "1.2.0",
  "name" : "FrPractitionerAgregateur",
  "status" : "active",
  "date" : "2026-06-15T12:59:24+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de Practitioner, dérivé de FrPractitioner, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrPractitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier.type",
      "path" : "Practitioner.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
          "code" : "IDNPS"
        }]
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
    }]
  }
}

```
