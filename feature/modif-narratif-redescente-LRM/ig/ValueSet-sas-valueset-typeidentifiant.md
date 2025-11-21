# Type identifiant SAS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type identifiant SAS**

## ValueSet: Type identifiant SAS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-typeidentifiant | *Version*:1.1.0 |
| Active as of 2025-11-21 | *Computable Name*:TypeIdentifiantSAS |

 
Type d'identifiant SAS 

 **References** 

* [FrAppointmentSASSOS](StructureDefinition-sas-sos-appointment.md)

### Logical Definition (CLD)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`http://interopsante.org/fhir/CodeSystem/fr-v2-0203`](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/CodeSystem/fr-v2-0203)version 📦1.0.1

 

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
  "id" : "sas-valueset-typeidentifiant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-typeidentifiant",
  "version" : "1.1.0",
  "name" : "TypeIdentifiantSAS",
  "title" : "Type identifiant SAS",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-21T13:13:12+00:00",
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
  "description" : "Type d'identifiant SAS",
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
        "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
        "concept" : [
          {
            "code" : "IDNPS",
            "display" : "Identifiant National de Professionnel de Santé"
          },
          {
            "code" : "INTRN",
            "display" : "Identifiant interne"
          }
        ]
      }
    ]
  }
}

```
