# BundleAgregateur - Service d'Accès aux Soins v1.2.0

## : BundleAgregateur 

 
Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - Cas d'usage PS Indiv 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Bundle/ExampleBundlePSIndiv](Bundle-ExampleBundlePSIndiv.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/BundleAgregateur)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques

#### Contraintes

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FrSlotAgregateur (http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur)](StructureDefinition-FrSlotAgregateur.md)
* [FrScheduleAgregateur (http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur)](StructureDefinition-FrScheduleAgregateur.md)
* [FrPractitionerAgregateur (http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur)](StructureDefinition-FrPractitionerAgregateur.md)
* [FrPractitionerRoleExerciceAgregateur (http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur)](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Bundle.entry

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FrSlotAgregateur (http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur)](StructureDefinition-FrSlotAgregateur.md)
* [FrScheduleAgregateur (http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur)](StructureDefinition-FrScheduleAgregateur.md)
* [FrPractitionerAgregateur (http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur)](StructureDefinition-FrPractitionerAgregateur.md)
* [FrPractitionerRoleExerciceAgregateur (http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur)](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Bundle.entry

 

 ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/BundleAgregateur",
  "version" : "1.2.0",
  "name" : "BundleAgregateur",
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
  "description" : "Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - Cas d'usage PS Indiv",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "searchset"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Bundle.entry:FrSlotAgregateur",
      "path" : "Bundle.entry",
      "sliceName" : "FrSlotAgregateur",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:FrSlotAgregateur.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Slot",
        "profile" : ["http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur"]
      }]
    },
    {
      "id" : "Bundle.entry:FrScheduleAgregateur",
      "path" : "Bundle.entry",
      "sliceName" : "FrScheduleAgregateur",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:FrScheduleAgregateur.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Schedule",
        "profile" : ["http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"]
      }]
    },
    {
      "id" : "Bundle.entry:FrPractitionerAgregateur",
      "path" : "Bundle.entry",
      "sliceName" : "FrPractitionerAgregateur",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:FrPractitionerAgregateur.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"]
      }]
    },
    {
      "id" : "Bundle.entry:FrPractitionerRoleExerciceAgregateur",
      "path" : "Bundle.entry",
      "sliceName" : "FrPractitionerRoleExerciceAgregateur",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:FrPractitionerRoleExerciceAgregateur.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"]
      }]
    }]
  }
}

```
