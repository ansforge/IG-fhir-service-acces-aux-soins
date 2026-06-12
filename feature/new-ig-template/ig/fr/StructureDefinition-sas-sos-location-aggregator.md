# FrLocationAgregateurSOS - Service d'Accès aux Soins v1.2.0

## Profil de ressource: FrLocationAgregateurSOS 

 
Profil de Location, dérivé de FrLocation, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Utilisations:**

* Utilise ce/t/te Profil: [BundleAgregateurSOS](StructureDefinition-sas-sos-bundle-aggregator.md)
* Exemples pour ce/t/te Profil: [Centre de consultation Rennes Nord](Location-1111111111.md), [Centre de consultation Rennes Cleunay](Location-2222222222.md) and [Centre de consultation Lorient](Location-3333333333.md)
* CapabilityStatements utilisant ce Profil: [Profil SAS consommateur de créneaux SOS](CapabilityStatement-SAS-Consommateur-SOS.md) and [Profil SAS gestionnaire d'agenda SOS](CapabilityStatement-SAS-GestionnaireAgenda-SOS.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-sos-location-aggregator)

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

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrLocation](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrLocation) 

** Résumé **

Obligatoire : 7 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FrOrganizationAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator)](StructureDefinition-sas-sos-organization-aggregator.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FrLocation](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrLocation) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrLocation](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrLocation) 

** Résumé **

Obligatoire : 7 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FrOrganizationAgregateurSOS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator)](StructureDefinition-sas-sos-organization-aggregator.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-sas-sos-location-aggregator.csv), [Excel](../StructureDefinition-sas-sos-location-aggregator.xlsx), [Schematron](../StructureDefinition-sas-sos-location-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-location-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator",
  "version" : "1.2.0",
  "name" : "FrLocationAgregateurSOS",
  "status" : "active",
  "date" : "2026-06-12T14:51:06+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de Location, dérivé de FrLocation, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins",
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
      "id" : "Location.identifier.type",
      "path" : "Location.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
          "code" : "INTRN"
        }]
      }
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "min" : 1
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
      "max" : "1"
    },
    {
      "id" : "Location.address.city",
      "path" : "Location.address.city",
      "min" : 1
    },
    {
      "id" : "Location.address.postalCode",
      "path" : "Location.address.postalCode",
      "min" : 1,
      "maxLength" : 5
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator"]
      }]
    },
    {
      "id" : "Location.managingOrganization.reference",
      "path" : "Location.managingOrganization.reference",
      "min" : 1
    }]
  }
}

```
