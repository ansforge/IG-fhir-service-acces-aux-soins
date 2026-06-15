# SASServiceTypeR5 - Service d'Accès aux Soins v1.2.0

## Extension: 

Extension créée afin de permettre la reference à la ressource HealthcareService. Cette extension implemente l'élément serviceType de R5 https://hl7.org/fhir/slot-definitions.html#Slot.serviceType

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)
* Examples for this Extension: [Bundle/ExampleBundleCPTS1](Bundle-ExampleBundleCPTS1.md), [Bundle/ExampleBundleCPTS2](Bundle-ExampleBundleCPTS2.md), [Slot/ExampleSlotCPTS1](Slot-ExampleSlotCPTS1.md) and [Slot/ExampleSlotCPTS2](Slot-ExampleSlotCPTS2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.sas|current/StructureDefinition/StructureDefinition-sas-cpts-slot-servicetype-aggregator.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-sas-cpts-slot-servicetype-aggregator.csv), [Excel](../StructureDefinition-sas-cpts-slot-servicetype-aggregator.xlsx), [Schematron](../StructureDefinition-sas-cpts-slot-servicetype-aggregator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-cpts-slot-servicetype-aggregator",
  "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType",
  "version" : "1.2.0",
  "name" : "SASServiceTypeR5",
  "status" : "active",
  "date" : "2026-06-15T12:59:24+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée afin de permettre la reference à la ressource HealthcareService. Cette extension implemente l'élément serviceType de R5 https://hl7.org/fhir/slot-definitions.html#Slot.serviceType",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Slot.serviceType"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée afin de permettre la reference à la ressource HealthcareService. Cette extension implemente l'élément serviceType de R5 https://hl7.org/fhir/slot-definitions.html#Slot.serviceType"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/HealthcareService"]
      }]
    }]
  }
}

```
