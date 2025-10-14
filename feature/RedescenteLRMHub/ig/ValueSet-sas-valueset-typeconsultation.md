# Type consultation SAS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type consultation SAS**

## ValueSet: Type consultation SAS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-typeconsultation | *Version*:1.1.0 |
| Active as of 2025-10-14 | *Computable Name*:TypeConsultationSAS |

 
Type de consultations SAS 

 **References** 

* [FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md)

### Logical Definition (CLD)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`http://terminology.hl7.org/CodeSystem/v3-ActCode`](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ActCode.html)version 📦9.0.0

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "sas-valueset-typeconsultation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-typeconsultation",
  "version" : "1.1.0",
  "name" : "TypeConsultationSAS",
  "title" : "Type consultation SAS",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-14T07:25:19+00:00",
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
  "description" : "Type de consultations SAS",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "concept" : [
          {
            "code" : "AMB",
            "display" : "Consultation au cabinet"
          },
          {
            "code" : "HH",
            "display" : "Consultation à domicile"
          },
          {
            "code" : "VR",
            "display" : "Téléconsultation"
          }
        ]
      }
    ]
  }
}

```
