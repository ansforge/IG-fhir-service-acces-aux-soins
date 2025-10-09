# ExampleBundleAppointmentLRM3 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleBundleAppointmentLRM3**

## Example Bundle: ExampleBundleAppointmentLRM3

Profil: [SASBundleAppointmentLRM](StructureDefinition-sas-bundle-appointment-lrm.md)

Bundle ExampleBundleAppointmentLRM3 de type transaction

-------

Entry 1 - fullUrl = https://<base_URl>/Appointment/ExampleAppointmentLRM3

Ressource Appointment :

> 

Profil: [SASAppointmentLRM](StructureDefinition-sas-appointment-lrm.md)

**CategorieOrientation**:SOS**identifier**: 12345**status**: Fulfilled**start**: 2025-06-17 14:00:00+0100**end**: 2025-06-17 14:20:00+0100**created**: 2025-06-17 10:15:56+0100

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Actor** | **Status** |
| * | [Practitioner Jean Dupont](Practitioner-ExamplePractitionerLRM.md) | Accepted |


Requête :

```
PUT Appointment/ExampleAppointmentLRM1

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ExampleBundleAppointmentLRM3",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-bundle-appointment-lrm"
    ]
  },
  "type" : "transaction",
  "entry" : [
    {
      "fullUrl" : "https://<base_URl>/Appointment/ExampleAppointmentLRM3",
      "resource" : {
        "resourceType" : "Appointment",
        "id" : "ExampleAppointmentLRM3",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-appointment-lrm"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Appointment_ExampleAppointmentLRM3\"> </a><p class=\"res-header-id\"><b>Narratif généré : RendezVous ExampleAppointmentLRM3</b></p><a name=\"ExampleAppointmentLRM3\"> </a><a name=\"hcExampleAppointmentLRM3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-appointment-lrm.html\">SASAppointmentLRM</a></p></div><p><b>CategorieOrientation</b>: <span title=\"Codes:{https://interop.esante.gouv.fr/ig/fhir/sas/CodeSystem/categorie-orientation-sas-codesystem 003}\">SOS</span></p><p><b>identifier</b>: 12345</p><p><b>status</b>: Fulfilled</p><p><b>start</b>: 2025-06-17 14:00:00+0100</p><p><b>end</b>: 2025-06-17 14:20:00+0100</p><p><b>created</b>: 2025-06-17 10:15:56+0100</p><h3>Participants</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td><td><b>Status</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-ExamplePractitionerLRM.html\">Practitioner Jean Dupont </a></td><td>Accepted</td></tr></table></div>"
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
        "status" : "fulfilled",
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
        "url" : "Appointment/ExampleAppointmentLRM1"
      }
    }
  ]
}

```
