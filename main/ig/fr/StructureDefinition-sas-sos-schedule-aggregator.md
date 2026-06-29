# FrScheduleAgregateurSOS - Service d'Accès aux Soins v1.2.0

## Profil de ressource: FrScheduleAgregateurSOS 

 
Profil de Schedule, dérivé de FrSchedule, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Utilisations:**

* Utilise ce/t/te Profil: [BundleAgregateurSOS](StructureDefinition-sas-sos-bundle-aggregator.md)
* Référence ce Profil: [FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md)
* Exemples pour ce/t/te Profil: [Schedule/ExampleScheduleSOS1](Schedule-ExampleScheduleSOS1.md), [Schedule/ExampleScheduleSOS2](Schedule-ExampleScheduleSOS2.md) and [Schedule/ExampleScheduleSOS3](Schedule-ExampleScheduleSOS3.md)
* CapabilityStatements utilisant ce Profil: [Profil SAS consommateur de créneaux SOS](CapabilityStatement-SAS-Consommateur-SOS.md) and [Profil SAS gestionnaire d'agenda SOS](CapabilityStatement-SAS-GestionnaireAgenda-SOS.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-sos-schedule-aggregator)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrSchedule](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrSchedule) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrSchedule](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrSchedule) 

** Résumé **

Obligatoire : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FrLocation (http://interopsante.org/fhir/StructureDefinition/FrLocation)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrLocation)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FrSchedule](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrSchedule) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrSchedule](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrSchedule) 

** Résumé **

Obligatoire : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FrLocation (http://interopsante.org/fhir/StructureDefinition/FrLocation)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrLocation)

 

Autres représentations du profil : [CSV](../StructureDefinition-sas-sos-schedule-aggregator.csv), [Excel](../StructureDefinition-sas-sos-schedule-aggregator.xlsx), [Schematron](../StructureDefinition-sas-sos-schedule-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-schedule-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator",
  "version" : "1.2.0",
  "name" : "FrScheduleAgregateurSOS",
  "status" : "active",
  "date" : "2026-06-29T13:29:33+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de Schedule, dérivé de FrSchedule, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins",
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
        "targetProfile" : ["http://interopsante.org/fhir/StructureDefinition/FrLocation"]
      }]
    },
    {
      "id" : "Schedule.actor.reference",
      "path" : "Schedule.actor.reference",
      "min" : 1
    }]
  }
}

```
