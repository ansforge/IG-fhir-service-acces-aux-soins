# ExampleOrgaSOS2 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleOrgaSOS2**

## Example Organization: ExampleOrgaSOS2

Profil: [FrOrganizationAgregateurSOS](StructureDefinition-sas-sos-organization-aggregator.md)

**identifier**: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS/392080466300010

**name**: SOS Médecins Lorient et agglomération



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ExampleOrgaSOS2",
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
      "value" : "392080466300010"
    }
  ],
  "name" : "SOS Médecins Lorient et agglomération"
}

```
