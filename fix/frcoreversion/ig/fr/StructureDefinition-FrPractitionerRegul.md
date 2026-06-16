# FrPractitionerRegul - Service d'Accès aux Soins v1.2.0

## Profil de ressource: FrPractitionerRegul 

 
Profil de Practitioner, dérivé de FrPractitioner, pour la gestion des comptes régulateurs de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Practitioner/ExamplePractitionerRegul1](Practitioner-ExamplePractitionerRegul1.md), [Practitioner/ExamplePractitionerRegul2](Practitioner-ExamplePractitionerRegul2.md), [Practitioner/ExamplePractitionerRegul3](Practitioner-ExamplePractitionerRegul3.md) and [Practitioner/ExamplePractitionerRegul4](Practitioner-ExamplePractitionerRegul4.md)
* CapabilityStatements utilisant ce Profil: [Profil SAS gestionnaire de structure](CapabilityStatement-SAS-GestionnaireStructure.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrPractitionerRegul)

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

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrPractitioner](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner) 

** Résumé **

Obligatoire : 2 éléments(2 éléments obligatoire(s) imbriqué(s))

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Practitioner.identifier

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FrPractitioner](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrPractitioner](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner) 

** Résumé **

Obligatoire : 2 éléments(2 éléments obligatoire(s) imbriqué(s))

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Practitioner.identifier

 

Autres représentations du profil : [CSV](../StructureDefinition-FrPractitionerRegul.csv), [Excel](../StructureDefinition-FrPractitionerRegul.xlsx), [Schematron](../StructureDefinition-FrPractitionerRegul.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPractitionerRegul",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/FrPractitionerRegul",
  "version" : "1.2.0",
  "name" : "FrPractitionerRegul",
  "status" : "active",
  "date" : "2026-06-16T14:59:49+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de Practitioner, dérivé de FrPractitioner, pour la gestion des comptes régulateurs de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
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
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.meta.source",
      "path" : "Practitioner.meta.source",
      "patternUri" : "urn:oid:1.2.250.1.213.3.6"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:IdentifiantNatPS",
      "path" : "Practitioner.identifier",
      "sliceName" : "IdentifiantNatPS",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:IdentifiantNatPS.type",
      "path" : "Practitioner.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
          "code" : "IDNPS"
        }]
      }
    },
    {
      "id" : "Practitioner.identifier:IdentifiantNatPS.system",
      "path" : "Practitioner.identifier.system",
      "patternUri" : "urn:oid:1.2.250.1.71.4.2.1"
    },
    {
      "id" : "Practitioner.identifier:IdentifiantInterne",
      "path" : "Practitioner.identifier",
      "sliceName" : "IdentifiantInterne",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:IdentifiantInterne.type",
      "path" : "Practitioner.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
          "code" : "INTRN"
        }]
      }
    },
    {
      "id" : "Practitioner.identifier:IdentifiantInterne.system",
      "path" : "Practitioner.identifier.system",
      "patternUri" : "urn:oid:1.2.250.1.213.3.6"
    },
    {
      "id" : "Practitioner.active",
      "path" : "Practitioner.active",
      "min" : 1
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "min" : 1
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.telecom.system",
      "path" : "Practitioner.telecom.system",
      "patternCode" : "email"
    }]
  }
}

```
