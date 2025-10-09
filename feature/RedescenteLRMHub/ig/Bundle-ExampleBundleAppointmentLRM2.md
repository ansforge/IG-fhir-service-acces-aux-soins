# ExampleBundleAppointmentLRM2 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleBundleAppointmentLRM2**

## Example Bundle: ExampleBundleAppointmentLRM2

Profil: [SASBundleAppointmentLRM](StructureDefinition-sas-bundle-appointment-lrm.md)

Bundle ExampleBundleAppointmentLRM2 de type transaction

-------

Entry 1 - fullUrl = https://<base_URl>/Appointment/ExampleAppointmentLRM2

Ressource Appointment :

> 

Profil: [SASAppointmentLRM](StructureDefinition-sas-appointment-lrm.md)

**CategorieOrientation**:Centre de Santé**identifier**: 12346**status**: Booked**start**: 2025-06-17 14:00:00+0100**end**: 2025-06-17 14:20:00+0100**created**: 2025-06-17 10:15:56+0100

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Actor** | **Status** |
| * | [HealthcareService](HealthcareService-ExampleHealthcareService2.md) | Accepted |


Requête :

```
POST Appointment

```

-------

Entry 2 - fullUrl = https://<base_URl>/Organization/ExampleSasOrganization2

Ressource Organization :

> 

Profil: [SASOrganizationLRM](StructureDefinition-sas-organization-lrm.md)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/050005917**name**: CDS DENTAIRE

Requête :

```
POST Organization

```

-------

Entry 3 - fullUrl = https://<base_URl>/HealthcareService/ExampleHealthcareService1

Ressource HealthcareService :

> 

Profil: [SASHealthcareServiceLRM](StructureDefinition-sas-healthcareservice-lrm.md)

**providedBy**:[Organization CDS DENTAIRE](Organization-ExampleSasOrganization2.md)

Requête :

```
POST HealthcareService

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ExampleBundleAppointmentLRM2",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-bundle-appointment-lrm"
    ]
  },
  "type" : "transaction",
  "entry" : [
    {
      "fullUrl" : "https://<base_URl>/Appointment/ExampleAppointmentLRM2",
      "resource" : {
        "resourceType" : "Appointment",
        "id" : "ExampleAppointmentLRM2",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-appointment-lrm"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Appointment_ExampleAppointmentLRM2\"> </a><p class=\"res-header-id\"><b>Narratif généré : RendezVous ExampleAppointmentLRM2</b></p><a name=\"ExampleAppointmentLRM2\"> </a><a name=\"hcExampleAppointmentLRM2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-appointment-lrm.html\">SASAppointmentLRM</a></p></div><p><b>CategorieOrientation</b>: <span title=\"Codes:{https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement 124}\">Centre de Santé</span></p><p><b>identifier</b>: 12346</p><p><b>status</b>: Booked</p><p><b>start</b>: 2025-06-17 14:00:00+0100</p><p><b>end</b>: 2025-06-17 14:20:00+0100</p><p><b>created</b>: 2025-06-17 10:15:56+0100</p><h3>Participants</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td><td><b>Status</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"HealthcareService-ExampleHealthcareService2.html\">HealthcareService</a></td><td>Accepted</td></tr></table></div>"
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
            "value" : "12346"
          }
        ],
        "status" : "booked",
        "start" : "2025-06-17T14:00:00+01:00",
        "end" : "2025-06-17T14:20:00+01:00",
        "created" : "2025-06-17T10:15:56+01:00",
        "participant" : [
          {
            "actor" : {
              "reference" : "HealthcareService/ExampleHealthcareService2"
            },
            "status" : "accepted"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Appointment"
      }
    },
    {
      "fullUrl" : "https://<base_URl>/Organization/ExampleSasOrganization2",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "ExampleSasOrganization2",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-organization-lrm"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_ExampleSasOrganization2\"> </a><p class=\"res-header-id\"><b>Narratif généré : Organisation ExampleSasOrganization2</b></p><a name=\"ExampleSasOrganization2\"> </a><a name=\"hcExampleSasOrganization2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-organization-lrm.html\">SASOrganizationLRM</a></p></div><p><b>identifier</b>: Identification nationale de structure définie par l’ANS dans le CI_SIS/050005917</p><p><b>name</b>: CDS DENTAIRE</p></div>"
        },
        "identifier" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
                  "code" : "IDNST"
                }
              ]
            },
            "system" : "urn:oid:1.2.250.1.71.4.2.2",
            "value" : "050005917"
          }
        ],
        "name" : "CDS DENTAIRE"
      },
      "request" : {
        "method" : "POST",
        "url" : "Organization"
      }
    },
    {
      "fullUrl" : "https://<base_URl>/HealthcareService/ExampleHealthcareService1",
      "resource" : {
        "resourceType" : "HealthcareService",
        "id" : "ExampleHealthcareService1",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-healthcareservice-lrm"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"HealthcareService_ExampleHealthcareService1\"> </a><p class=\"res-header-id\"><b>Narratif généré : ServiceDeSanté ExampleHealthcareService1</b></p><a name=\"ExampleHealthcareService1\"> </a><a name=\"hcExampleHealthcareService1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-healthcareservice-lrm.html\">SASHealthcareServiceLRM</a></p></div><p><b>providedBy</b>: <a href=\"Organization-ExampleSasOrganization2.html\">Organization CDS DENTAIRE</a></p></div>"
        },
        "providedBy" : {
          "reference" : "Organization/ExampleSasOrganization2"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "HealthcareService"
      }
    }
  ]
}

```
