# SASBundleAppointmentLRM - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SASBundleAppointmentLRM**

## Resource Profile: SASBundleAppointmentLRM 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-bundle-appointment-lrm | *Version*:1.1.0 |
| Active as of 2025-10-09 | *Computable Name*:SASBundleAppointmentLRM |

 
Profil de Bundle qui représente les données de RDV à envoyer de la plateforme numérique du SAS vers les éditeurs de LRM 

**Usages:**

* Examples for this Profile: [Bundle/ExampleBundleAppointmentLRM1](Bundle-ExampleBundleAppointmentLRM1.md), [Bundle/ExampleBundleAppointmentLRM2](Bundle-ExampleBundleAppointmentLRM2.md), [Bundle/ExampleBundleAppointmentLRM3](Bundle-ExampleBundleAppointmentLRM3.md), [Bundle/ExampleBundleAppointmentLRM4](Bundle-ExampleBundleAppointmentLRM4.md)...Show 5 more,[Bundle/ExampleBundleAppointmentLRM5](Bundle-ExampleBundleAppointmentLRM5.md),[Bundle/ExampleBundleAppointmentLRM6](Bundle-ExampleBundleAppointmentLRM6.md),[Bundle/ExampleBundleAppointmentLRM7](Bundle-ExampleBundleAppointmentLRM7.md),[Bundle/ExampleBundleAppointmentLRM8](Bundle-ExampleBundleAppointmentLRM8.md)and[Bundle/ExampleBundleAppointmentLRM9](Bundle-ExampleBundleAppointmentLRM9.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-bundle-appointment-lrm)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-bundle-appointment-lrm.csv), [Excel](StructureDefinition-sas-bundle-appointment-lrm.xlsx), [Schematron](StructureDefinition-sas-bundle-appointment-lrm.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-bundle-appointment-lrm",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-bundle-appointment-lrm",
  "version" : "1.1.0",
  "name" : "SASBundleAppointmentLRM",
  "status" : "active",
  "date" : "2025-10-09T08:55:21+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Profil de Bundle qui représente les données de RDV à envoyer de la plateforme numérique du SAS vers les éditeurs de LRM",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.meta.profile",
        "path" : "Bundle.meta.profile",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-bundle-appointment-lrm"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "transaction"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:appointmententry",
        "path" : "Bundle.entry",
        "sliceName" : "appointmententry",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:appointmententry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:appointmententry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Appointment",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-appointment-lrm"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:practitionerentry",
        "path" : "Bundle.entry",
        "sliceName" : "practitionerentry",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:practitionerentry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:practitionerentry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-lrm"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:organizationentry",
        "path" : "Bundle.entry",
        "sliceName" : "organizationentry",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:organizationentry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:organizationentry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-organization-lrm"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:practitionerRoleentry",
        "path" : "Bundle.entry",
        "sliceName" : "practitionerRoleentry",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:practitionerRoleentry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:practitionerRoleentry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-role-lrm"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:healthcareserviceentry",
        "path" : "Bundle.entry",
        "sliceName" : "healthcareserviceentry",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:healthcareserviceentry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:healthcareserviceentry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "HealthcareService",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-healthcareservice-lrm"
            ]
          }
        ]
      }
    ]
  }
}

```
