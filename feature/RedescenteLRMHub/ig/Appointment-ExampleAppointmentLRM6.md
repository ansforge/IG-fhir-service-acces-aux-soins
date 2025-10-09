# ExampleAppointmentLRM6 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleAppointmentLRM6**

## Example Appointment: ExampleAppointmentLRM6

Profil: [SASAppointmentLRM](StructureDefinition-sas-appointment-lrm.md)

**CategorieOrientation**: PS

**identifier**: 12348

**status**: Booked

**start**: 2025-06-17 14:00:00+0100

**end**: 2025-06-17 14:20:00+0100

**created**: 2025-06-17 10:15:56+0100

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Actor** | **Status** |
| * | [Practitioner Jean Dupont](Practitioner-ExamplePractitionerLRM.md) | Accepted |



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "ExampleAppointmentLRM6",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-appointment-lrm"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-categorie-orientation",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/sas/CodeSystem/categorie-orientation-sas-codesystem",
            "code" : "001"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "value" : "12348"
    }
  ],
  "status" : "booked",
  "start" : "2025-06-17T14:00:00+01:00",
  "end" : "2025-06-17T14:20:00+01:00",
  "created" : "2025-06-17T10:15:56+01:00",
  "participant" : [
    {
      "actor" : {
        "reference" : "Practitioner/ExamplePractitionerLRM"
      },
      "status" : "accepted"
    }
  ]
}

```
