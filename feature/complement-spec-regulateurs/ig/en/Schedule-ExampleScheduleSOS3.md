# ExampleScheduleSOS3 - Service d'Accès aux Soins v1.2.0

## Example Schedule: ExampleScheduleSOS3

-------

**English**

-------

Profile: [FrScheduleAgregateurSOS](StructureDefinition-sas-sos-schedule-aggregator.md)

**actor**: [Centre de consultation Lorient (Identifiant interne: 3333333333)](Location-3333333333.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleScheduleSOS3",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator"]
  },
  "actor" : [{
    "reference" : "Location/3333333333"
  }]
}

```
