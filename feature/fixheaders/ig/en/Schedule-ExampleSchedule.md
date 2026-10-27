# ExampleSchedule - Service d'Accès aux Soins v1.2.0

## Example Schedule: ExampleSchedule

-------

**English**

-------

Profile: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**: 

* [Pierre Foret (Identifiant National de Professionnel de Santé: 810002909371)](Practitioner-ExamplePractitioner.md)
* [Pierre Foret (Identifiant National de Professionnel de Santé: 810002909371) at id: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS: 412345678912345](PractitionerRole-ExamplePractitionerRoleAgregateur.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleSchedule",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"]
  },
  "actor" : [{
    "reference" : "Practitioner/ExamplePractitioner"
  },
  {
    "reference" : "PractitionerRole/ExamplePractitionerRoleAgregateur"
  }]
}

```
