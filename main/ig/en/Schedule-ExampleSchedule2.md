# ExampleSchedule2 - Service d'Accès aux Soins v1.2.0

## Example Schedule: ExampleSchedule2

-------

**English**

-------

Profile: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**: 

* [Practitioner Sébastien THOMAS ](Practitioner-ExamplePractitioner2.md)
* [PractitionerRole](PractitionerRole-ExamplePractitionerRoleAgregateur3.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleSchedule2",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"]
  },
  "actor" : [{
    "reference" : "Practitioner/ExamplePractitioner2"
  },
  {
    "reference" : "PractitionerRole/ExamplePractitionerRoleAgregateur3"
  }]
}

```
