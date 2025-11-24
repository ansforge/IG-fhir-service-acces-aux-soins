# Catégorie établissement SAS - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Catégorie établissement SAS**

## ValueSet: Catégorie établissement SAS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-categorieetablissement | *Version*:1.2.0 |
| Active as of 2025-11-24 | *Computable Name*:CategorieEtablissementSAS |

 
Catégorie d'établissement utilisée dans contexte SAS - CPTS dans un premier temps 

 **References** 

* [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)

### Logical Definition (CLD)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement`](https://interop.esante.gouv.fr/ig/nos/1.3.0/CodeSystem-TRE-R66-CategorieEtablissement.html)version 📦1.3.0

 

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
  "id" : "sas-valueset-categorieetablissement",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-categorieetablissement",
  "version" : "1.2.0",
  "name" : "CategorieEtablissementSAS",
  "title" : "Catégorie établissement SAS",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-24T09:10:21+00:00",
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
  "description" : "Catégorie d'établissement utilisée dans contexte SAS - CPTS dans un premier temps",
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement",
        "concept" : [
          {
            "code" : "604",
            "display" : "CPTS"
          }
        ]
      }
    ]
  }
}

```
