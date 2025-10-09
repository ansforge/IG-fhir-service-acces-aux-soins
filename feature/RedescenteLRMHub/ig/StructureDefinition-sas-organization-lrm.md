# SASOrganizationLRM - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SASOrganizationLRM**

## Resource Profile: SASOrganizationLRM 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-organization-lrm | *Version*:1.1.0 |
| Active as of 2025-10-09 | *Computable Name*:SASOrganizationLRM |

 
Profil dérivé de FrOrganization dans le cadre de l'usage des flux du SAS 

**Usages:**

* Use this Profile: [SASBundleAppointmentLRM](StructureDefinition-sas-bundle-appointment-lrm.md)
* Refer to this Profile: [SASHealthcareServiceLRM](StructureDefinition-sas-healthcareservice-lrm.md) and [SASPractitionerRoleLRM](StructureDefinition-sas-practitioner-role-lrm.md)
* Examples for this Profile: [SOS Médecins de Rennes](Organization-ExampleSasOrganization1.md), [CDS DENTAIRE](Organization-ExampleSasOrganization2.md) and [CPTS DU HAUT BUGEY](Organization-ExampleSasOrganization3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-organization-lrm)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-organization-lrm.csv), [Excel](StructureDefinition-sas-organization-lrm.xlsx), [Schematron](StructureDefinition-sas-organization-lrm.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-organization-lrm",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-organization-lrm",
  "version" : "1.1.0",
  "name" : "SASOrganizationLRM",
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
  "description" : "Profil dérivé de FrOrganization dans le cadre de l'usage des flux du SAS",
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
  "type" : "Organization",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization.meta.profile:sas-organization-lrm",
        "path" : "Organization.meta.profile",
        "sliceName" : "sas-organization-lrm",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-organization-lrm"
      },
      {
        "id" : "Organization.name",
        "path" : "Organization.name",
        "min" : 1
      }
    ]
  }
}

```
