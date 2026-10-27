# ExampleSchedule1 - Service d'Accès aux Soins v1.2.0

## Exemple Schedule: ExampleSchedule1

-------

**French**

-------

Profil: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**: 

* [Sébastien THOMAS (Identifiant National de Professionnel de Santé: 810100050075)](Practitioner-ExamplePractitioner2.md)
* [Sébastien THOMAS (Identifiant National de Professionnel de Santé: 810100050075) at id: Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS: 1810004421](PractitionerRole-ExamplePractitionerRoleAgregateur2.md)



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
