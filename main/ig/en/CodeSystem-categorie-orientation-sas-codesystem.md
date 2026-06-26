# Code système catégorie orientation SAS - Service d'Accès aux Soins v1.2.0

## CodeSystem: Code système catégorie orientation SAS (Experimental) 

 
Code système permettant de définir la catégorie d'orientation SAS spécifique qui n'est pas considéré comme un établissement de soins et qui permet de catégoriser l'orientation de soins 

This Code system is referenced in the definition of the following value sets:

* [CategorieOrientationSASValueSet](ValueSet-categorie-orientation-sas-valueset.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "categorie-orientation-sas-codesystem",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/CodeSystem/categorie-orientation-sas-codesystem",
  "version" : "1.2.0",
  "name" : "CategorieOrientationSASCodeSystem",
  "title" : "Code système catégorie orientation SAS",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-06-26T14:40:16+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Code système permettant de définir la catégorie d'orientation SAS spécifique qui n'est pas considéré comme un établissement de soins et qui permet de catégoriser l'orientation de soins",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
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
  }]
}

```
