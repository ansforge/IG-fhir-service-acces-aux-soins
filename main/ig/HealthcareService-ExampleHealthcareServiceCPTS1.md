# ExampleHealthcareServiceCPTS1 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleHealthcareServiceCPTS1**

## Example HealthcareService: ExampleHealthcareServiceCPTS1

Profil: [FrHealthcareServiceAgregateurCPTS](StructureDefinition-sas-cpts-healthcareservice-aggregator.md)

**providedBy**: [Organization CPTS AXE MAJEUR](Organization-ExampleOrgaCPTS1.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "ExampleHealthcareServiceCPTS1",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator"
    ]
  },
  "providedBy" : {
    "reference" : "Organization/ExampleOrgaCPTS1"
  }
}

```
