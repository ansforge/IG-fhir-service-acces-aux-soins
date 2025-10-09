# ExampleBundleAppointmentLRM9 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleBundleAppointmentLRM9**

## Example Bundle: ExampleBundleAppointmentLRM9

Profil: [SASBundleAppointmentLRM](StructureDefinition-sas-bundle-appointment-lrm.md)

Bundle ExampleBundleAppointmentLRM9 de type transaction

-------

Entry 1 - fullUrl = https://<base_URl>/Appointment/ExampleAppointmentLRM8

Ressource Appointment :

> 

Profil: [SASAppointmentLRM](StructureDefinition-sas-appointment-lrm.md)

**CategorieOrientation**:PS**identifier**: 12348**status**: Cancelled**start**: 2025-06-17 14:00:00+0100**end**: 2025-06-17 14:20:00+0100**created**: 2025-06-17 10:15:56+0100

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Actor** | **Status** |
| * | [Practitioner Jean Dupont](Practitioner-ExamplePractitionerLRM.md) | Accepted |


Requête :

```
PUT Appointment/ExampleAppointmentLRM4

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ExampleBundleAppointmentLRM9",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-bundle-appointment-lrm"
    ]
  },
  "type" : "transaction",
  "entry" : [
    {
      "fullUrl" : "https://<base_URl>/Appointment/ExampleAppointmentLRM8",
      "resource" : {
        "resourceType" : "Appointment",
        "id" : "ExampleAppointmentLRM8",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-appointment-lrm"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Appointment_ExampleAppointmentLRM8\"> </a><p class=\"res-header-id\"><b>Narratif généré : RendezVous ExampleAppointmentLRM8</b></p><a name=\"ExampleAppointmentLRM8\"> </a><a name=\"hcExampleAppointmentLRM8\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-appointment-lrm.html\">SASAppointmentLRM</a></p></div><p><b>CategorieOrientation</b>: <span title=\"Codes:{https://interop.esante.gouv.fr/ig/fhir/sas/CodeSystem/categorie-orientation-sas-codesystem 001}\">PS</span></p><p><b>identifier</b>: 12348</p><p><b>status</b>: Cancelled</p><p><b>start</b>: 2025-06-17 14:00:00+0100</p><p><b>end</b>: 2025-06-17 14:20:00+0100</p><p><b>created</b>: 2025-06-17 10:15:56+0100</p><h3>Participants</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td><td><b>Status</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-ExamplePractitionerLRM.html\">Practitioner Jean Dupont </a></td><td>Accepted</td></tr></table></div>"
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
        "status" : "cancelled",
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
      },
      "request" : {
        "method" : "PUT",
        "url" : "Appointment/ExampleAppointmentLRM4"
      }
    }
  ]
}

```
