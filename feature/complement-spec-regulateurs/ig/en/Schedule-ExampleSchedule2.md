# ExampleSchedule2 - Service d'Accès aux Soins v1.2.0

## Example Schedule: ExampleSchedule2

-------

**English**

-------

Profile: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**: 

* [Sébastien THOMAS (Identifiant National de Professionnel de Santé: 810100050075)](Practitioner-ExamplePractitioner2.md)
* [Sébastien THOMAS (Identifiant National de Professionnel de Santé: 810100050075) at id: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS: 1810004956](PractitionerRole-ExamplePractitionerRoleAgregateur3.md)



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
