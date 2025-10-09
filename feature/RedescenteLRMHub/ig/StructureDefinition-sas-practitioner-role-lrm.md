# SASPractitionerRoleLRM - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SASPractitionerRoleLRM**

## Resource Profile: SASPractitionerRoleLRM 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-role-lrm | *Version*:1.1.0 |
| Active as of 2025-10-09 | *Computable Name*:SASPractitionerRoleLRM |

 
Profil dérivé de FrPractitionerRole dérivé de FrAppointment, pour le cas d'usage d'envoi des RDV consolidés de la PTF aux logiciels de LRM 

**Usages:**

* Use this Profile: [SASBundleAppointmentLRM](StructureDefinition-sas-bundle-appointment-lrm.md)
* Examples for this Profile: [PractitionerRole/ExamplePractitionerRoleAppointment1](PractitionerRole-ExamplePractitionerRoleAppointment1.md) and [PractitionerRole/ExamplePractitionerRoleAppointment2](PractitionerRole-ExamplePractitionerRoleAppointment2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-practitioner-role-lrm)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-practitioner-role-lrm.csv), [Excel](StructureDefinition-sas-practitioner-role-lrm.xlsx), [Schematron](StructureDefinition-sas-practitioner-role-lrm.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-practitioner-role-lrm",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-role-lrm",
  "version" : "1.1.0",
  "name" : "SASPractitionerRoleLRM",
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
  "description" : "Profil dérivé de FrPractitionerRole dérivé de FrAppointment, pour le cas d'usage d'envoi des RDV consolidés de la PTF aux logiciels de LRM",
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
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole.meta.profile:sas-practitioner-role-lrm",
        "path" : "PractitionerRole.meta.profile",
        "sliceName" : "sas-practitioner-role-lrm",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-role-lrm"
      },
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-lrm"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-organization-lrm"
            ]
          }
        ]
      }
    ]
  }
}

```
