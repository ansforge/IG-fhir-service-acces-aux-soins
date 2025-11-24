# ExampleSchedule2 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleSchedule2**

## Example Schedule: ExampleSchedule2

Profil: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**: 

* [Practitioner Sébastien THOMAS](Practitioner-ExamplePractitioner2.md)
* [PractitionerRole](PractitionerRole-ExamplePractitionerRoleAgregateur3.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleSchedule2",
  "meta" : {
    "profile" : [
      "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
    ]
  },
  "actor" : [
    {
      "reference" : "Practitioner/ExamplePractitioner2"
    },
    {
      "reference" : "PractitionerRole/ExamplePractitionerRoleAgregateur3"
    }
  ]
}

```
