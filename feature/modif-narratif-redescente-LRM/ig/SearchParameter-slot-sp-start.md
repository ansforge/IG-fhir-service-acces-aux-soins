# slot-sp-start - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **slot-sp-start**

## SearchParameter: slot-sp-start 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/SearchParameter/slot-sp-start | *Version*:1.1.0 |
| Active as of 2025-11-21 | *Computable Name*:SPDateDebutSlot |

 
Paramètre de recherche date de début d'un créneau (date de début supérieure ou égale àet inférieure ou égale à) 

## SPDateDebutSlot

Paramètre `start`:`date`

Paramètre de recherche date de début d'un créneau (date de début supérieure ou égale à <date1> et inférieure ou égale à <date2>)

| | |
| :--- | :--- |
| Ressource | [Slot](http://hl7.org/fhir/R4/slot.html) |
| Expression | `Slot.start` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may only have one value (no comma separators)
 |
| Comparateurs | Allowed: ge, le |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "slot-sp-start",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/SearchParameter/slot-sp-start",
  "version" : "1.1.0",
  "name" : "SPDateDebutSlot",
  "status" : "active",
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
  "description" : "Paramètre de recherche date de début d'un créneau (date de début supérieure ou égale à <date1> et inférieure ou égale à <date2>)",
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
