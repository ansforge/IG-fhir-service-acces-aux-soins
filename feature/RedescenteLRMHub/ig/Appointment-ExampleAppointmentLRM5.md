# ExampleAppointmentLRM5 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleAppointmentLRM5**

## Example Appointment: ExampleAppointmentLRM5

Profil: [SASAppointmentLRM](StructureDefinition-sas-appointment-lrm.md)

**CategorieOrientation**: Centre de Santé

**identifier**: 12347

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
  "id" : "ExampleAppointmentLRM5",
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
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement",
            "code" : "124"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "value" : "12347"
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
