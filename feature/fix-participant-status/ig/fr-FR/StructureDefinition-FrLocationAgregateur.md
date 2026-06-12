# FrLocationAgregateur - Service d'Accès aux Soins v1.2.0

## : FrLocationAgregateur 

 
Profil de Location, dérivé de FrLocation, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Utilisations:**

* Référence ce Profil: [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrLocationAgregateur)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 4 éléments

#### Bindings terminologiques (différentiel)

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 4 éléments

 

 ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrLocationAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur",
  "version" : "1.2.0",
  "name" : "FrLocationAgregateur",
  "status" : "active",
  "date" : "2026-06-12T07:59:14+00:00",
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
