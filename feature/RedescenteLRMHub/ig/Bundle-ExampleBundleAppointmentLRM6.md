# ExampleBundleAppointmentLRM6 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleBundleAppointmentLRM6**

## Example Bundle: ExampleBundleAppointmentLRM6

Profil: [SASBundleAppointmentLRM](StructureDefinition-sas-bundle-appointment-lrm.md)

Bundle ExampleBundleAppointmentLRM6 de type transaction

-------

Entry 1 - fullUrl = https://<base_URl>/Appointment/ExampleAppointmentLRM6

Ressource Appointment :

> 

Profil: [SASAppointmentLRM](StructureDefinition-sas-appointment-lrm.md)

**CategorieOrientation**:PS**identifier**: 12348**status**: Booked**start**: 2025-06-17 14:00:00+0100**end**: 2025-06-17 14:20:00+0100**created**: 2025-06-17 10:15:56+0100

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Actor** | **Status** |
| * | [Practitioner Jean Dupont](Practitioner-ExamplePractitionerLRM.md) | Accepted |


Requête :

```
PUT Appointment/ExampleAppointmentLRM4

```

-------

Entry 2 - fullUrl = https://<base_URl>/Practitioner/ExamplePractitionerLRM

Ressource Practitioner :

> 

Profil: [SASPractitionerLRM](StructureDefinition-sas-practitioner-lrm.md)

**FR Core Practitioner Specialty Extension**:[TRE_R38-SpecialiteOrdinale SM54](https://interop.esante.gouv.fr/ig/nos/1.3.0/CodeSystem-TRE-R38-SpecialiteOrdinale.html#TRE-R38-SpecialiteOrdinale-SM54): Médecine générale (SM)**identifier**: Identifiant National de Professionnel de Santé/810002909371**name**: Jean Dupont

Requête :

```
POST Practitioner

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ExampleBundleAppointmentLRM6",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-bundle-appointment-lrm"
    ]
  },
  "type" : "transaction",
  "entry" : [
    {
      "fullUrl" : "https://<base_URl>/Appointment/ExampleAppointmentLRM6",
      "resource" : {
        "resourceType" : "Appointment",
        "id" : "ExampleAppointmentLRM6",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-appointment-lrm"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Appointment_ExampleAppointmentLRM6\"> </a><p class=\"res-header-id\"><b>Narratif généré : RendezVous ExampleAppointmentLRM6</b></p><a name=\"ExampleAppointmentLRM6\"> </a><a name=\"hcExampleAppointmentLRM6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-appointment-lrm.html\">SASAppointmentLRM</a></p></div><p><b>CategorieOrientation</b>: <span title=\"Codes:{https://interop.esante.gouv.fr/ig/fhir/sas/CodeSystem/categorie-orientation-sas-codesystem 001}\">PS</span></p><p><b>identifier</b>: 12348</p><p><b>status</b>: Booked</p><p><b>start</b>: 2025-06-17 14:00:00+0100</p><p><b>end</b>: 2025-06-17 14:20:00+0100</p><p><b>created</b>: 2025-06-17 10:15:56+0100</p><h3>Participants</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td><td><b>Status</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-ExamplePractitionerLRM.html\">Practitioner Jean Dupont </a></td><td>Accepted</td></tr></table></div>"
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
      },
      "request" : {
        "method" : "PUT",
        "url" : "Appointment/ExampleAppointmentLRM4"
      }
    },
    {
      "fullUrl" : "https://<base_URl>/Practitioner/ExamplePractitionerLRM",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "ExamplePractitionerLRM",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-lrm"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_ExamplePractitionerLRM\"> </a><p class=\"res-header-id\"><b>Narratif généré : Praticien ExamplePractitionerLRM</b></p><a name=\"ExamplePractitionerLRM\"> </a><a name=\"hcExamplePractitionerLRM\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-practitioner-lrm.html\">SASPractitionerLRM</a></p></div><p><b>FR Core Practitioner Specialty Extension</b>: <a href=\"https://interop.esante.gouv.fr/ig/nos/1.3.0/CodeSystem-TRE-R38-SpecialiteOrdinale.html#TRE-R38-SpecialiteOrdinale-SM54\">TRE_R38-SpecialiteOrdinale SM54</a>: Médecine générale (SM)</p><p><b>identifier</b>: Identifiant National de Professionnel de Santé/810002909371</p><p><b>name</b>: Jean Dupont </p></div>"
        },
        "extension" : [
          {
            "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-specialty",
            "valueCoding" : {
              "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
              "code" : "SM54"
            }
          }
        ],
        "identifier" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
                  "code" : "IDNPS"
                }
              ]
            },
            "system" : "urn:oid:1.2.250.1.71.4.2.1",
            "value" : "810002909371"
          }
        ],
        "name" : [
          {
            "family" : "Dupont",
            "given" : ["Jean"]
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Practitioner"
      }
    }
  ]
}

```
