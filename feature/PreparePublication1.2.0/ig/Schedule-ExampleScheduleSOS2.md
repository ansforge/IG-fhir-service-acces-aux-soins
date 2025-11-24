# ExampleScheduleSOS2 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleScheduleSOS2**

## Example Schedule: ExampleScheduleSOS2

Profil: [FrScheduleAgregateurSOS](StructureDefinition-sas-sos-schedule-aggregator.md)

**actor**: [Location Centre de consultation Rennes Cleunay](Location-2222222222.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleScheduleSOS2",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator"
    ]
  },
  "actor" : [
    {
      "reference" : "Location/2222222222"
    }
  ]
}

```
