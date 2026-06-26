# slot-sp-start - Service d'Accès aux Soins v1.2.0

## SearchParameter: slot-sp-start 

 
Paramètre de recherche date de début d'un créneau (date de début supérieure ou égale à  et inférieure ou égale à ) 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "slot-sp-start",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/SearchParameter/slot-sp-start",
  "version" : "1.2.0",
  "name" : "SPDateDebutSlot",
  "status" : "active",
  "date" : "2026-06-26T14:40:16+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche date de début d'un créneau (date de début supérieure ou égale à <date1> et inférieure ou égale à <date2>)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "start",
  "base" : ["Slot"],
  "type" : "date",
  "expression" : "Slot.start",
  "xpathUsage" : "normal",
  "multipleOr" : false,
  "multipleAnd" : true,
  "comparator" : ["ge", "le"]
}

```
