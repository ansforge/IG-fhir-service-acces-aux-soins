# FrOrganizationAgregateurCPTS - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrOrganizationAgregateurCPTS**

## Resource Profile: FrOrganizationAgregateurCPTS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator | *Version*:1.2.0 |
| Active as of 2025-11-24 | *Computable Name*:FrOrganizationAgregateurCPTS |

 
Profil dérivé de FrOrganization pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS 

**Usages:**

* Use this Profile: [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md)
* Refer to this Profile: [FrHealthcareServiceAgregateurCPTS](StructureDefinition-sas-cpts-healthcareservice-aggregator.md)
* Examples for this Profile: [CPTS AXE MAJEUR](Organization-ExampleOrgaCPTS1.md) and [CPTS VAL D OISE CENTRE](Organization-ExampleOrgaCPTS2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-cpts-organization-aggregator)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-cpts-organization-aggregator.csv), [Excel](StructureDefinition-sas-cpts-organization-aggregator.xlsx), [Schematron](StructureDefinition-sas-cpts-organization-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-cpts-organization-aggregator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator",
  "version" : "1.2.0",
  "name" : "FrOrganizationAgregateurCPTS",
  "status" : "active",
  "date" : "2025-11-24T13:41:23+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Profil dérivé de FrOrganization pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrOrganization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
        "min" : 1,
        "max" : "1",
        "constraint" : [
          {
            "key" : "FINESS-invariant",
            "severity" : "error",
            "human" : "Le numéro FINESS doit être préfixé par 1 suivi de 9 caractères numériques",
            "expression" : "value.matches('^1[0-9]{9}$')",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator"
          }
        ]
      },
      {
        "id" : "Organization.identifier.type",
        "path" : "Organization.identifier.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
              "code" : "IDNST"
            }
          ]
        }
      },
      {
        "id" : "Organization.identifier.system",
        "path" : "Organization.identifier.system",
        "patternUri" : "urn:oid:1.2.250.1.71.4.2.2"
      },
      {
        "id" : "Organization.name",
        "path" : "Organization.name",
        "mustSupport" : true
      },
      {
        "id" : "Organization.telecom",
        "path" : "Organization.telecom",
        "mustSupport" : true
      }
    ]
  }
}

```
