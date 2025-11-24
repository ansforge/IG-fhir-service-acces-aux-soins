# ExampleSchedule - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleSchedule**

## Example Schedule: ExampleSchedule

Profil: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**: 

* [Practitioner Pierre Foret](Practitioner-ExamplePractitioner.md)
* [PractitionerRole : telecom = ph: +33561855977](PractitionerRole-ExamplePractitionerRoleAgregateur.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleSchedule",
  "meta" : {
    "profile" : [
      "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
    ]
  },
  "actor" : [
    {
      "reference" : "Practitioner/ExamplePractitioner"
    },
    {
      "reference" : "PractitionerRole/ExamplePractitionerRoleAgregateur"
    }
  ]
}

```
