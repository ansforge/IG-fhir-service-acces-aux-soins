# Value set catégorie orientation SAS - Service d'Accès aux Soins v1.2.0

## ValueSet: Value set catégorie orientation SAS 

 
Valueset permettant de définir la catégorie d'orientation SAS. Il regroupe des codes de la TRE-R66 et du codesystem catégorie orientation SAS 

 **References** 

* [CategorieOrientation](StructureDefinition-sas-categorie-orientation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-06-15T13:11:53+00:00",
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
        "code" : "604"
      },
      {
        "code" : "603"
      },
      {
        "code" : "124"
      }]
    }]
  }
}

```
