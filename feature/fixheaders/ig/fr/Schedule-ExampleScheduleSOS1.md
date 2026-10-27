# ExampleScheduleSOS1 - Service d'Accès aux Soins v1.2.0

## Exemple Schedule: ExampleScheduleSOS1

-------

**French**

-------

Profil: [FrScheduleAgregateurSOS](StructureDefinition-sas-sos-schedule-aggregator.md)

**actor**: [Centre de consultation Rennes Nord (Identifiant interne: 1111111111)](Location-1111111111.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleScheduleSOS1",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator"]
  },
  "actor" : [{
    "reference" : "Location/1111111111"
  }]
}

```
