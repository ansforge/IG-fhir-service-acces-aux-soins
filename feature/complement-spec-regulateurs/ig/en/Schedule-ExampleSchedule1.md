# ExampleSchedule1 - Service d'Accès aux Soins v1.2.0

## Example Schedule: ExampleSchedule1

-------

**English**

-------

Profile: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**: 

* [Practitioner Sébastien THOMAS ](Practitioner-ExamplePractitioner2.md)
* [PractitionerRole](PractitionerRole-ExamplePractitionerRoleAgregateur2.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleSchedule1",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"]
  },
  "actor" : [{
    "reference" : "Practitioner/ExamplePractitioner2"
  },
  {
    "reference" : "PractitionerRole/ExamplePractitionerRoleAgregateur2"
  }]
}

```
