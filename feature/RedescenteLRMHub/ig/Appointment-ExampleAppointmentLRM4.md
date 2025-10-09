# ExampleAppointmentLRM4 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleAppointmentLRM4**

## Example Appointment: ExampleAppointmentLRM4

Profil: [SASAppointmentLRM](StructureDefinition-sas-appointment-lrm.md)

**CategorieOrientation**: SOS

**identifier**: 12345

**status**: Pending

**start**: 2025-06-17 14:00:00+0100

**end**: 2025-06-17 14:20:00+0100

**created**: 2025-06-17 10:15:56+0100

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Status** |
| * | admitter | Needs Action |



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "ExampleAppointmentLRM4",
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
            "code" : "003"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "value" : "12345"
    }
  ],
  "status" : "pending",
  "start" : "2025-06-17T14:00:00+01:00",
  "end" : "2025-06-17T14:20:00+01:00",
  "created" : "2025-06-17T10:15:56+01:00",
  "participant" : [
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "ADM"
            }
          ]
        }
      ],
      "status" : "needs-action"
    }
  ]
}

```
