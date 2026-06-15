# FrOrganizationAgregateurSOS - Service d'Accès aux Soins v1.2.0

## Profil de ressource: FrOrganizationAgregateurSOS 

 
Profil d'Organization, dérivé de FrOrganization, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Utilisations:**

* Utilise ce/t/te Profil: [BundleAgregateurSOS](StructureDefinition-sas-sos-bundle-aggregator.md)
* Référence ce Profil: [FrLocationAgregateurSOS](StructureDefinition-sas-sos-location-aggregator.md)
* Exemples pour ce/t/te Profil: [SOS Médecins de Rennes](Organization-ExampleOrgaSOS1.md) and [SOS Médecins Lorient et agglomération](Organization-ExampleOrgaSOS2.md)
* CapabilityStatements utilisant ce Profil: [Profil SAS consommateur de créneaux SOS](CapabilityStatement-SAS-Consommateur-SOS.md) and [Profil SAS gestionnaire d'agenda SOS](CapabilityStatement-SAS-GestionnaireAgenda-SOS.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-sos-organization-aggregator)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrOrganization](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization) 

#### Contraintes

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrOrganization](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization) 

** Résumé **

Obligatoire : 1 élément

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FrOrganization](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization) 

#### Contraintes

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrOrganization](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization) 

** Résumé **

Obligatoire : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-sas-sos-organization-aggregator.csv), [Excel](../StructureDefinition-sas-sos-organization-aggregator.xlsx), [Schematron](../StructureDefinition-sas-sos-organization-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-organization-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator",
  "version" : "1.2.0",
  "name" : "FrOrganizationAgregateurSOS",
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
  "description" : "Profil d'Organization, dérivé de FrOrganization, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins",
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
  "type" : "Organization",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrOrganization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "min" : 1,
      "max" : "1",
      "constraint" : [{
        "key" : "SIRET-invariant",
        "severity" : "error",
        "human" : "Le numéro SIRET doit être préfixé par 3 suivi de 14 caractères numériques",
        "expression" : "value.matches('^3[0-9]{14}$')",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator"
      }]
    },
    {
      "id" : "Organization.identifier.type",
      "path" : "Organization.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
          "code" : "IDNST"
        }]
      }
    },
    {
      "id" : "Organization.identifier.system",
      "path" : "Organization.identifier.system",
      "patternUri" : "urn:oid:1.2.250.1.71.4.2.2"
    }]
  }
}

```
