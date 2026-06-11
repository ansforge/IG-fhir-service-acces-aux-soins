# FrScheduleAgregateur - Service d'Accès aux Soins v1.2.0

## : FrScheduleAgregateur 

 
Profil de Schedule, dérivé de FrSchedule, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Utilisations:**

* Utilise ce/t/te Profil: [BundleAgregateur](StructureDefinition-BundleAgregateur.md) and [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Référence ce Profil: [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md) and [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)
* Exemples pour ce/t/te Profil: [Schedule/ExampleSchedule](Schedule-ExampleSchedule.md), [Schedule/ExampleSchedule1](Schedule-ExampleSchedule1.md), [Schedule/ExampleSchedule2](Schedule-ExampleSchedule2.md) and [Schedule/ExampleSchedule3](Schedule-ExampleSchedule3.md)
* CapabilityStatements utilisant ce Profil: [Profil SAS consommateur de créneaux CPTS](CapabilityStatement-SAS-Consommateur-CPTS.md), [Profil SAS consommateur de créneaux](CapabilityStatement-SAS-Consommateur-psindiv.md), [Profil SAS gestionnaire d'agenda CPTS](CapabilityStatement-SAS-GestionnaireAgenda-CPTS.md) and [Profil SAS gestionnaire d'agenda PS Indiv](CapabilityStatement-SAS-GestionnaireAgenda-PsIndiv.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrScheduleAgregateur)

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

* [FrRelatedPerson (http://interopsante.org/fhir/StructureDefinition/FrRelatedPerson)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrRelatedPerson)
* [FrHealthcareService (http://interopsante.org/fhir/StructureDefinition/FrHealthcareService)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrHealthcareService)
* [FrLocation (http://interopsante.org/fhir/StructureDefinition/FrLocation)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrLocation)
* [FrPatient (http://interopsante.org/fhir/StructureDefinition/FrPatient)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPatient)
* [FrPractitioner (http://interopsante.org/fhir/StructureDefinition/FrPractitioner)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner)

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FrRelatedPerson (http://interopsante.org/fhir/StructureDefinition/FrRelatedPerson)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrRelatedPerson)
* [FrHealthcareService (http://interopsante.org/fhir/StructureDefinition/FrHealthcareService)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrHealthcareService)
* [FrLocation (http://interopsante.org/fhir/StructureDefinition/FrLocation)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrLocation)
* [FrPatient (http://interopsante.org/fhir/StructureDefinition/FrPatient)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPatient)
* [FrPractitioner (http://interopsante.org/fhir/StructureDefinition/FrPractitioner)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner)

 

 ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrScheduleAgregateur",
  "url" : "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur",
  "version" : "1.2.0",
  "name" : "FrScheduleAgregateur",
  "status" : "active",
  "date" : "2026-06-11T07:56:33+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de Schedule, dérivé de FrSchedule, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
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
  "type" : "Schedule",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrSchedule",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Schedule.actor",
      "path" : "Schedule.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://interopsante.org/fhir/StructureDefinition/FrRelatedPerson",
        "http://interopsante.org/fhir/StructureDefinition/FrHealthcareService",
        "http://interopsante.org/fhir/StructureDefinition/FrLocation",
        "http://interopsante.org/fhir/StructureDefinition/FrPatient",
        "http://interopsante.org/fhir/StructureDefinition/FrPractitioner"],
        "aggregation" : ["referenced", "bundled"]
      }]
    }]
  }
}

```
