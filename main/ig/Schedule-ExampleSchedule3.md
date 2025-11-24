# ExampleSchedule3 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleSchedule3**

## Example Schedule: ExampleSchedule3

Profil: [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md)

**actor**: 

* [Practitioner Guillaume MARCEL](Practitioner-ExamplePractitioner3.md)
* [PractitionerRole : telecom = ph: +33658913859](PractitionerRole-ExamplePractitionerRoleAgregateur4.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "ExampleSchedule3",
  "meta" : {
    "profile" : [
      "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
    ]
  },
  "actor" : [
    {
      "reference" : "Practitioner/ExamplePractitioner3"
    },
    {
      "reference" : "PractitionerRole/ExamplePractitionerRoleAgregateur4"
    }
  ]
}

```
