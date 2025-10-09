# ExampleSasOrganization2 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleSasOrganization2**

## Example Organization: ExampleSasOrganization2

Profil: [SASOrganizationLRM](StructureDefinition-sas-organization-lrm.md)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/050005917

**name**: CDS DENTAIRE



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ExampleSasOrganization2",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-organization-lrm"
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
      "value" : "050005917"
    }
  ],
  "name" : "CDS DENTAIRE"
}

```
