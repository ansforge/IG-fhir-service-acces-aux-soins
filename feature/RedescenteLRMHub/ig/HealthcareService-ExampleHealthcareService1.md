# ExampleHealthcareService1 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleHealthcareService1**

## Example HealthcareService: ExampleHealthcareService1

Profil: [SASHealthcareServiceLRM](StructureDefinition-sas-healthcareservice-lrm.md)

**providedBy**: [Organization CDS DENTAIRE](Organization-ExampleSasOrganization2.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "ExampleHealthcareService1",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-healthcareservice-lrm"
    ]
  },
  "providedBy" : {
    "reference" : "Organization/ExampleSasOrganization2"
  }
}

```
