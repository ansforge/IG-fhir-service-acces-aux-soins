# FrSlotAgregateurCPTS - Service d'Accès aux Soins v1.2.0

## Profil de ressource: FrSlotAgregateurCPTS 

 
Profil de Slot, dérivé de FrSlot, pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS 

**Utilisations:**

* Utilise ce/t/te Profil: [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Exemples pour ce/t/te Profil: [Slot/ExampleSlotCPTS1](Slot-ExampleSlotCPTS1.md) and [Slot/ExampleSlotCPTS2](Slot-ExampleSlotCPTS2.md)
* CapabilityStatements utilisant ce Profil: [Profil SAS consommateur de créneaux CPTS](CapabilityStatement-SAS-Consommateur-CPTS.md) and [Profil SAS gestionnaire d'agenda CPTS](CapabilityStatement-SAS-GestionnaireAgenda-CPTS.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-cpts-slot-aggregator)

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

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FrHealthcareServiceAgregateurCPTS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator)](StructureDefinition-sas-cpts-healthcareservice-aggregator.md)
* [FrScheduleAgregateur (http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur)](StructureDefinition-FrScheduleAgregateur.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType](StructureDefinition-sas-cpts-slot-servicetype-aggregator.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Slot.serviceType

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

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FrHealthcareServiceAgregateurCPTS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator)](StructureDefinition-sas-cpts-healthcareservice-aggregator.md)
* [FrScheduleAgregateur (http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur)](StructureDefinition-FrScheduleAgregateur.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType](StructureDefinition-sas-cpts-slot-servicetype-aggregator.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Slot.serviceType

 

Autres représentations du profil : [CSV](../StructureDefinition-sas-cpts-slot-aggregator.csv), [Excel](../StructureDefinition-sas-cpts-slot-aggregator.xlsx), [Schematron](../StructureDefinition-sas-cpts-slot-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-cpts-slot-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-slot-aggregator",
  "version" : "1.2.0",
  "name" : "FrSlotAgregateurCPTS",
  "status" : "active",
  "date" : "2026-06-12T12:31:55+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de Slot, dérivé de FrSlot, pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS",
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
      "short" : "type de créneau : public, pro, SNP, CPTS",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-cpts-valueset-typecreneau"
      }
    },
    {
      "id" : "Slot.serviceType",
      "path" : "Slot.serviceType",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Slot.serviceType.extension:sas-servicetype-r5",
      "path" : "Slot.serviceType.extension",
      "sliceName" : "sas-servicetype-r5",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType"]
      }]
    },
    {
      "id" : "Slot.serviceType:TypeConsultation",
      "path" : "Slot.serviceType",
      "sliceName" : "TypeConsultation",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
      }
    },
    {
      "id" : "Slot.serviceType:TypeConsultation.extension:sas-servicetype-r5",
      "path" : "Slot.serviceType.extension",
      "sliceName" : "sas-servicetype-r5",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType"]
      }]
    },
    {
      "id" : "Slot.serviceType:TypeConsultation.coding.system",
      "path" : "Slot.serviceType.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v3-ActCode"
    },
    {
      "id" : "Slot.serviceType:referencecpts",
      "path" : "Slot.serviceType",
      "sliceName" : "referencecpts",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-categorieetablissement"
      }
    },
    {
      "id" : "Slot.serviceType:referencecpts.extension",
      "path" : "Slot.serviceType.extension",
      "min" : 1
    },
    {
      "id" : "Slot.serviceType:referencecpts.extension:sas-servicetype-r5",
      "path" : "Slot.serviceType.extension",
      "sliceName" : "sas-servicetype-r5",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType"]
      }]
    },
    {
      "id" : "Slot.serviceType:referencecpts.extension:sas-servicetype-r5.value[x]",
      "path" : "Slot.serviceType.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator"]
      }]
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
        "targetProfile" : ["http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"]
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
