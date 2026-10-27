# ExampleHealthcareServiceCPTS2 - Service d'Accès aux Soins v1.2.0

## Example HealthcareService: ExampleHealthcareServiceCPTS2

-------

**English**

-------

Profile: [FrHealthcareServiceAgregateurCPTS](StructureDefinition-sas-cpts-healthcareservice-aggregator.md)

Unnamed Healthcare Service by CPTS VAL D OISE CENTRE (IDNST: 1950046227)

-------

| | |
| :--- | :--- |
| Provided By: | [CPTS VAL D OISE CENTRE (IDNST: 1950046227)](Organization-ExampleOrgaCPTS2.md) |



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "ExampleHealthcareServiceCPTS2",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator"]
  },
  "providedBy" : {
    "reference" : "Organization/ExampleOrgaCPTS2"
  }
}

```
