# Statut participant SAS SOS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statut participant SAS SOS**

## ValueSet: Statut participant SAS SOS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-sos-valueset-participant-status | *Version*:1.1.0 |
| Active as of 2025-11-21 | *Computable Name*:ParticipantStatusSASSOS |

 
Statut du participant RDV SAS SOS 

 **References** 

* [FrAppointmentSASSOS](StructureDefinition-sas-sos-appointment.md)

### Logical Definition (CLD)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`http://hl7.org/fhir/participationstatus`](http://hl7.org/fhir/R4/codesystem-participationstatus.html)version 📦4.0.1

 

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
  "id" : "sas-sos-valueset-participant-status",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-sos-valueset-participant-status",
  "version" : "1.1.0",
  "name" : "ParticipantStatusSASSOS",
  "title" : "Statut participant SAS SOS",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-21T13:35:41+00:00",
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
  "description" : "Statut du participant RDV SAS SOS",
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
        "system" : "http://hl7.org/fhir/participationstatus",
        "concept" : [
          {
            "code" : "accepted",
            "display" : "RDV accepté par le PS effecteur de soins"
          },
          {
            "code" : "needs-action",
            "display" : "RDV en attente de confirmation par le PS effecteur de soins"
          }
        ]
      }
    ]
  }
}

```
