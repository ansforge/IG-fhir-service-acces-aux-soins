# ExampleSchedule1 - Service d'Accès aux Soins v1.2.0

## Exemple Schedule: ExampleSchedule1

-------

**French**

-------

Profil: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

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
