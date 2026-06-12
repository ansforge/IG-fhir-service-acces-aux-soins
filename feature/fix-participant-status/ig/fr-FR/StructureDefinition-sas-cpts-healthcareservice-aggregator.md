# FrHealthcareServiceAgregateurCPTS - Service d'Accès aux Soins v1.2.0

## : FrHealthcareServiceAgregateurCPTS 

 
Profil dérivé de FrHealthcareService pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS 

**Utilisations:**

* Utilise ce/t/te Profil: [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Référence ce Profil: [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)
* Exemples pour ce/t/te Profil: [HealthcareService/ExampleHealthcareServiceCPTS1](HealthcareService-ExampleHealthcareServiceCPTS1.md) and [HealthcareService/ExampleHealthcareServiceCPTS2](HealthcareService-ExampleHealthcareServiceCPTS2.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-cpts-healthcareservice-aggregator)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 2 éléments
 Must-Support : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FrOrganizationAgregateurCPTS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator)](StructureDefinition-sas-cpts-organization-aggregator.md)

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 2 éléments
 Must-Support : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FrOrganizationAgregateurCPTS (https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator)](StructureDefinition-sas-cpts-organization-aggregator.md)

 

 ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-cpts-healthcareservice-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator",
  "version" : "1.2.0",
  "name" : "FrHealthcareServiceAgregateurCPTS",
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
  "description" : "Profil dérivé de FrHealthcareService pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS",
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
  "type" : "HealthcareService",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrHealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService.id",
      "path" : "HealthcareService.id",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.providedBy",
      "path" : "HealthcareService.providedBy",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator"]
      }],
      "mustSupport" : true
    }]
  }
}

```
