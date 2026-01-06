# ExampleOrgaCPTS2 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleOrgaCPTS2**

## Example Organization: ExampleOrgaCPTS2

Profil: [FrOrganizationAgregateurCPTS](StructureDefinition-sas-cpts-organization-aggregator.md)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/1950046227

**name**: CPTS VAL D OISE CENTRE

**telecom**: [+33139599280](tel:+33139599280)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ExampleOrgaCPTS2",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-organization-aggregator"
    ]
  },
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "IDNST"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.71.4.2.2",
      "value" : "1950046227"
    }
  ],
  "name" : "CPTS VAL D OISE CENTRE",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+33139599280"
    }
  ]
}

```
