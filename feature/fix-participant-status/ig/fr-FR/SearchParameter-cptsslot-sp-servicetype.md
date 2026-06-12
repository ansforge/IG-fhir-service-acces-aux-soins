# cptsslot-sp-servicetype - Service d'Accès aux Soins v1.2.0

## SearchParameter: cptsslot-sp-servicetype 

 
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
  "date" : "2026-06-12T07:59:14+00:00",
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
      "display" : "France (la)"
    }]
  }],
  "code" : "service-type-reference",
  "base" : ["Slot"],
  "type" : "reference",
  "expression" : "serviceType.extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType').value"
}

```
