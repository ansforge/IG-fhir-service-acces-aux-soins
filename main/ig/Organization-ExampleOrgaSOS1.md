# ExampleOrgaSOS1 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleOrgaSOS1**

## Example Organization: ExampleOrgaSOS1

Profil: [FrOrganizationAgregateurSOS](StructureDefinition-sas-sos-organization-aggregator.md)

**identifier**: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS/334173748400020

**name**: SOS Médecins de Rennes



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ExampleOrgaSOS1",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator"
    ]
  },
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
            "code" : "IDNST"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.71.4.2.2",
      "value" : "334173748400020"
    }
  ],
  "name" : "SOS Médecins de Rennes"
}

```
