# Type créneaux SAS CPTS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type créneaux SAS CPTS**

## ValueSet: Type créneaux SAS CPTS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-cpts-valueset-typecreneau | *Version*:1.1.0 |
| Active as of 2025-10-14 | *Computable Name*:TypeCreneauSASCPTS |

 
Type de Créneaux SAS CPTS 

 **References** 

* [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)

### Logical Definition (CLD)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau`](https://interop.esante.gouv.fr/ig/nos/1.3.0/CodeSystem-TRE-R314-TypeCreneau.html)version 📦1.3.0

 

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
  "id" : "sas-cpts-valueset-typecreneau",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-cpts-valueset-typecreneau",
  "version" : "1.1.0",
  "name" : "TypeCreneauSASCPTS",
  "title" : "Type créneaux SAS CPTS",
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
  "description" : "Type de Créneaux SAS CPTS",
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
        "concept" : [
          {
            "code" : "PUBLIC",
            "display" : "Créneau accessible par le grand public"
          },
          {
            "code" : "SNP",
            "display" : "Créneau accessible par les Régulateurs et Organisateurs de Soins Non Programmés"
          },
          {
            "code" : "PRO",
            "display" : "Créneau accessible par les professionnels de santé"
          },
          {
            "code" : "CPTS",
            "display" : "Créneau accessible par les CPTS"
          }
        ]
      }
    ]
  }
}

```
