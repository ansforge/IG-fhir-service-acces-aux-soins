# ExampleScheduleSOS1 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleScheduleSOS1**

## Example Schedule: ExampleScheduleSOS1

Profil: [FrScheduleAgregateurSOS](StructureDefinition-sas-sos-schedule-aggregator.md)

**actor**: [Location Centre de consultation Rennes Nord](Location-1111111111.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleScheduleSOS1",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator"
    ]
  },
  "actor" : [
    {
      "reference" : "Location/1111111111"
    }
  ]
}

```
