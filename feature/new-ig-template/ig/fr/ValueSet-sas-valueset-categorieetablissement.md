# Catégorie établissement SAS - Service d'Accès aux Soins v1.2.0

## ValueSet: Catégorie établissement SAS 

 
Catégorie d'établissement utilisée dans contexte SAS - CPTS dans un premier temps 

 **References** 

* [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-06-12T14:51:06+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Catégorie d'établissement utilisée dans contexte SAS - CPTS dans un premier temps",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement",
      "concept" : [{
        "code" : "604",
        "display" : "CPTS"
      }]
    }]
  }
}

```
