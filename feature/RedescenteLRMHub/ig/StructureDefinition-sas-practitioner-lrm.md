# SASPractitionerLRM - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SASPractitionerLRM**

## Resource Profile: SASPractitionerLRM 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-lrm | *Version*:1.1.0 |
| Active as of 2025-10-09 | *Computable Name*:SASPractitionerLRM |

 
Profil de Practitioner, dérivé de FrPractitioner, dans le cadre de l'usage des flux du SAS 

**Usages:**

* Use this Profile: [SASBundleAppointmentLRM](StructureDefinition-sas-bundle-appointment-lrm.md)
* Refer to this Profile: [SASAppointmentLRM](StructureDefinition-sas-appointment-lrm.md) and [SASPractitionerRoleLRM](StructureDefinition-sas-practitioner-role-lrm.md)
* Examples for this Profile: [Practitioner/ExamplePractitionerLRM](Practitioner-ExamplePractitionerLRM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-practitioner-lrm)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-practitioner-lrm.csv), [Excel](StructureDefinition-sas-practitioner-lrm.xlsx), [Schematron](StructureDefinition-sas-practitioner-lrm.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-practitioner-lrm",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-lrm",
  "version" : "1.1.0",
  "name" : "SASPractitionerLRM",
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
  "description" : "Profil de Practitioner, dérivé de FrPractitioner, dans le cadre de l'usage des flux du SAS",
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
  "type" : "Practitioner",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner.meta.profile:sas-practitioner-lrm",
        "path" : "Practitioner.meta.profile",
        "sliceName" : "sas-practitioner-lrm",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-lrm"
      },
      {
        "id" : "Practitioner.extension:specialty",
        "path" : "Practitioner.extension",
        "sliceName" : "specialty",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier.type.coding",
        "path" : "Practitioner.identifier.type.coding",
        "max" : "1"
      },
      {
        "id" : "Practitioner.identifier:idNatPs",
        "path" : "Practitioner.identifier",
        "sliceName" : "idNatPs",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:idNatPs.type",
        "path" : "Practitioner.identifier.type",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:idNatPs.system",
        "path" : "Practitioner.identifier.system",
        "min" : 1
      }
    ]
  }
}

```
