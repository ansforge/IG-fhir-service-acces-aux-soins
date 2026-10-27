# ExampleScheduleSOS2 - Service d'Accès aux Soins v1.2.0

## Exemple Schedule: ExampleScheduleSOS2

-------

**French**

-------

Profil: [FrScheduleAgregateurSOS](StructureDefinition-sas-sos-schedule-aggregator.md)

**actor**: [Centre de consultation Rennes Cleunay (Identifiant interne: 2222222222)](Location-2222222222.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleScheduleSOS2",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator"]
  },
  "actor" : [{
    "reference" : "Location/2222222222"
  }]
}

```
