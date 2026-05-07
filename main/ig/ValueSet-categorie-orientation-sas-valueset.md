# Value set catégorie orientation SAS - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Value set catégorie orientation SAS**

## ValueSet: Value set catégorie orientation SAS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/categorie-orientation-sas-valueset | *Version*:1.2.0 |
| Active as of 2026-05-07 | *Computable Name*:CategorieOrientationSASValueSet |

 
Valueset permettant de définir la catégorie d'orientation SAS. Il regroupe des codes de la TRE-R66 et du codesystem catégorie orientation SAS 

 **References** 

* [CategorieOrientation](StructureDefinition-sas-categorie-orientation.md)

### Définition logique (CLD)

 

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
  "id" : "categorie-orientation-sas-valueset",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/categorie-orientation-sas-valueset",
  "version" : "1.2.0",
  "name" : "CategorieOrientationSASValueSet",
  "title" : "Value set catégorie orientation SAS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-07T11:54:31+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Valueset permettant de définir la catégorie d'orientation SAS. Il regroupe des codes de la TRE-R66 et du codesystem catégorie orientation SAS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/sas/CodeSystem/categorie-orientation-sas-codesystem"
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement",
      "concept" : [{
        "code" : "604",
        "display" : "CPTS"
      },
      {
        "code" : "603",
        "display" : "MSP"
      },
      {
        "code" : "124",
        "display" : "CDS"
      }]
    }]
  }
}

```
