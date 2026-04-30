# cptsslot-sp-servicetype - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cptsslot-sp-servicetype**

## SearchParameter: cptsslot-sp-servicetype 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/SearchParameter/cptsslot-sp-servicetype | *Version*:1.2.0 |
| Active as of 2026-04-30 | *Computable Name*:SPServiceTypeCPTS |

 
Paramètre de recherche sur le service type qui mime le paramètre R5. Permet de rechercher ou d'inclure la ressource reférencée HealthCare Service 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cptsslot-sp-servicetype",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/SearchParameter/cptsslot-sp-servicetype",
  "version" : "1.2.0",
  "name" : "SPServiceTypeCPTS",
  "status" : "active",
  "date" : "2026-04-30T13:33:12+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche sur le service type qui mime le paramètre R5. Permet de rechercher ou d'inclure la ressource reférencée HealthCare Service",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "code" : "service-type-reference",
  "base" : ["Slot"],
  "type" : "reference",
  "expression" : "serviceType.extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType').value"
}

```
