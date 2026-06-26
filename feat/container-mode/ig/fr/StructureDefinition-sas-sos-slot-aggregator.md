# FrSlotAgregateurSOS - Service d'Accès aux Soins v1.2.0

## Profil de ressource: FrSlotAgregateurSOS 

 
Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Utilisations:**

* Utilise ce/t/te Profil: [BundleAgregateurSOS](StructureDefinition-sas-sos-bundle-aggregator.md)
* Exemples pour ce/t/te Profil: [Slot/ExampleSlotSOS1](Slot-ExampleSlotSOS1.md), [Slot/ExampleSlotSOS2](Slot-ExampleSlotSOS2.md), [Slot/ExampleSlotSOS3](Slot-ExampleSlotSOS3.md) and [Slot/ExampleSlotSOS4](Slot-ExampleSlotSOS4.md)
* CapabilityStatements utilisant ce Profil: [Profil SAS consommateur de créneaux SOS](CapabilityStatement-SAS-Consommateur-SOS.md) and [Profil SAS gestionnaire d'agenda SOS](CapabilityStatement-SAS-GestionnaireAgenda-SOS.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-sos-slot-aggregator)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrSlot](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrSlot) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrSlot](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrSlot) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FrScheduleAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator)](StructureDefinition-sas-sos-schedule-aggregator.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FrSlot](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrSlot) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrSlot](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrSlot) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FrScheduleAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator)](StructureDefinition-sas-sos-schedule-aggregator.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-sas-sos-slot-aggregator.csv), [Excel](../StructureDefinition-sas-sos-slot-aggregator.xlsx), [Schematron](../StructureDefinition-sas-sos-slot-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-slot-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator",
  "version" : "1.2.0",
  "name" : "FrSlotAgregateurSOS",
  "status" : "active",
  "date" : "2026-06-26T12:12:04+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins",
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
  "type" : "Slot",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrSlot",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Slot.meta.security",
      "path" : "Slot.meta.security",
      "binding" : {
        "strength" : "required",
        "description" : "type de créneau : public, SNP",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-sos-valueset-typecreneau"
      }
    },
    {
      "id" : "Slot.serviceType.coding",
      "path" : "Slot.serviceType.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-typeconsultation"
      }
    },
    {
      "id" : "Slot.appointmentType.coding",
      "path" : "Slot.appointmentType.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-appointmentreason"
      }
    },
    {
      "id" : "Slot.schedule",
      "path" : "Slot.schedule",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator"]
      }]
    },
    {
      "id" : "Slot.status",
      "path" : "Slot.status",
      "patternCode" : "free"
    }]
  }
}

```
