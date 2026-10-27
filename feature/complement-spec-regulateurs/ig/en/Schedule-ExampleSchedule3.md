# ExampleSchedule3 - Service d'Accès aux Soins v1.2.0

## Example Schedule: ExampleSchedule3

-------

**English**

-------

Profile: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**: 

* [Guillaume MARCEL (Identifiant National de Professionnel de Santé: 810002673899)](Practitioner-ExamplePractitioner3.md)
* [Guillaume MARCEL (Identifiant National de Professionnel de Santé: 810002673899) at id: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS: 1810004421](PractitionerRole-ExamplePractitionerRoleAgregateur4.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleSchedule3",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"]
  },
  "actor" : [{
    "reference" : "Practitioner/ExamplePractitioner3"
  },
  {
    "reference" : "PractitionerRole/ExamplePractitionerRoleAgregateur4"
  }]
}

```
