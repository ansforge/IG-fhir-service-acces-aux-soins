# Code système catégorie orientation SAS - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Code système catégorie orientation SAS**

## CodeSystem: Code système catégorie orientation SAS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/CodeSystem/categorie-orientation-sas-codesystem | *Version*:1.1.0 |
| Active as of 2025-10-29 | *Computable Name*:CategorieOrientationSASCodeSystem |

 
Code système permettant de définir la catégorie d'orientation SAS spécifique qui n'est pas considéré comme un établissement de soins et qui permet de catégoriser l'orientation de soins 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [CategorieOrientationSASValueSet](ValueSet-categorie-orientation-sas-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "categorie-orientation-sas-codesystem",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/CodeSystem/categorie-orientation-sas-codesystem",
  "version" : "1.1.0",
  "name" : "CategorieOrientationSASCodeSystem",
  "title" : "Code système catégorie orientation SAS",
  "status" : "active",
  "experimental" : true,
  "date" : "2025-10-29T14:06:34+00:00",
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
  "description" : "Code système permettant de définir la catégorie d'orientation SAS spécifique qui n'est pas considéré comme un établissement de soins et qui permet de catégoriser l'orientation de soins",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "001",
      "display" : "PS",
      "definition" : "Catégorie PS à titre individuel"
    },
    {
      "code" : "002",
      "display" : "PDM",
      "definition" : "Catégorie Place de marché"
    },
    {
      "code" : "003",
      "display" : "SOS",
      "definition" : "Catégorie SOS Médecins"
    }
  ]
}

```
