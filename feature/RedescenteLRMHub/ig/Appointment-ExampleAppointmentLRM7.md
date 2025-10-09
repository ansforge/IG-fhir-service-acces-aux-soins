# ExampleAppointmentLRM7 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleAppointmentLRM7**

## Example Appointment: ExampleAppointmentLRM7

Profil: [SASAppointmentLRM](StructureDefinition-sas-appointment-lrm.md)

**CategorieOrientation**: Communauté Professionnelle Territoriale de Santé (CPTS)

**identifier**: 12349

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
  "id" : "ExampleAppointmentLRM7",
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
            "code" : "604"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "value" : "12349"
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
