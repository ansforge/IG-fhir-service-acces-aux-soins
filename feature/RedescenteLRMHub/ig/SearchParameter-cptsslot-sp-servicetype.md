# cptsslot-sp-servicetype - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cptsslot-sp-servicetype**

## SearchParameter: cptsslot-sp-servicetype 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/SearchParameter/cptsslot-sp-servicetype | *Version*:1.1.0 |
| Active as of 2025-10-28 | *Computable Name*:SPServiceTypeCPTS |

 
Paramètre de recherche sur le service type qui mime le paramètre R5. Permet de rechercher ou d'inclure la ressource reférencée HealthCare Service 

## SPServiceTypeCPTS

Paramètre `service-type-reference`:`reference`

Paramètre de recherche sur le service type qui mime le paramètre R5. Permet de rechercher ou d'inclure la ressource reférencée HealthCare Service

| | |
| :--- | :--- |
| Ressource | [Slot](http://hl7.org/fhir/R4/slot.html) |
| Expression | `serviceType.extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType').value` |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cptsslot-sp-servicetype",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/SearchParameter/cptsslot-sp-servicetype",
  "version" : "1.1.0",
  "name" : "SPServiceTypeCPTS",
  "status" : "active",
  "date" : "2025-10-28T16:18:27+00:00",
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
  "description" : "Paramètre de recherche sur le service type qui mime le paramètre R5. Permet de rechercher ou d'inclure la ressource reférencée HealthCare Service",
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
  "code" : "service-type-reference",
  "base" : ["Slot"],
  "type" : "reference",
  "expression" : "serviceType.extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType').value"
}

```
