# Appointment reason SAS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Appointment reason SAS**

## ValueSet: Appointment reason SAS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-appointmentreason | *Version*:1.1.0 |
| Active as of 2025-11-14 | *Computable Name*:AppointmentReasonSAS |

 
Appointment reason SAS 

 **References** 

* [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)
* [FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md)

### Logical Definition (CLD)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`http://terminology.hl7.org/CodeSystem/v2-0276`](http://terminology.hl7.org/6.5.0/CodeSystem-v2-0276.html)version 📦2.0.0

 

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
  "id" : "sas-valueset-appointmentreason",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-appointmentreason",
  "version" : "1.1.0",
  "name" : "AppointmentReasonSAS",
  "title" : "Appointment reason SAS",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-14T17:06:33+00:00",
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
  "description" : "Appointment reason SAS",
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
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
        "concept" : [
          {
            "code" : "ROUTINE",
            "display" : "Créneau avec prise de RDV possible"
          },
          {
            "code" : "WALKIN",
            "display" : "Créneau sans prise de RDV possible à domicile"
          }
        ]
      }
    ]
  }
}

```
