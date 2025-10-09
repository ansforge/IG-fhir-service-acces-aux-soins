# CategorieOrientation - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CategorieOrientation**

## Extension: CategorieOrientation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-categorie-orientation | *Version*:1.1.0 |
| Active as of 2025-10-09 | *Computable Name*:CategorieOrientation |

Extension créée afin d'ajouter la catégorie d'orientation dans un RDV

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [SASAppointmentLRM](StructureDefinition-sas-appointment-lrm.md)
* Examples for this Extension: [Appointment/ExampleAppointmentLRM1](Appointment-ExampleAppointmentLRM1.md), [Appointment/ExampleAppointmentLRM2](Appointment-ExampleAppointmentLRM2.md), [Appointment/ExampleAppointmentLRM3](Appointment-ExampleAppointmentLRM3.md), [Appointment/ExampleAppointmentLRM4](Appointment-ExampleAppointmentLRM4.md)...Show 13 more,[Appointment/ExampleAppointmentLRM5](Appointment-ExampleAppointmentLRM5.md),[Appointment/ExampleAppointmentLRM6](Appointment-ExampleAppointmentLRM6.md),[Appointment/ExampleAppointmentLRM7](Appointment-ExampleAppointmentLRM7.md),[Appointment/ExampleAppointmentLRM8](Appointment-ExampleAppointmentLRM8.md),[Bundle/ExampleBundleAppointmentLRM1](Bundle-ExampleBundleAppointmentLRM1.md),[Bundle/ExampleBundleAppointmentLRM2](Bundle-ExampleBundleAppointmentLRM2.md),[Bundle/ExampleBundleAppointmentLRM3](Bundle-ExampleBundleAppointmentLRM3.md),[Bundle/ExampleBundleAppointmentLRM4](Bundle-ExampleBundleAppointmentLRM4.md),[Bundle/ExampleBundleAppointmentLRM5](Bundle-ExampleBundleAppointmentLRM5.md),[Bundle/ExampleBundleAppointmentLRM6](Bundle-ExampleBundleAppointmentLRM6.md),[Bundle/ExampleBundleAppointmentLRM7](Bundle-ExampleBundleAppointmentLRM7.md),[Bundle/ExampleBundleAppointmentLRM8](Bundle-ExampleBundleAppointmentLRM8.md)and[Bundle/ExampleBundleAppointmentLRM9](Bundle-ExampleBundleAppointmentLRM9.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-categorie-orientation)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sas-categorie-orientation.csv), [Excel](StructureDefinition-sas-categorie-orientation.xlsx), [Schematron](StructureDefinition-sas-categorie-orientation.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-categorie-orientation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-categorie-orientation",
  "version" : "1.1.0",
  "name" : "CategorieOrientation",
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
  "description" : "Extension créée afin d'ajouter la catégorie d'orientation dans un RDV",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Appointment"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "definition" : "Extension créée afin d'ajouter la catégorie d'orientation dans un RDV"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-categorie-orientation"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/categorie-orientation-sas-valueset"
        }
      }
    ]
  }
}

```
