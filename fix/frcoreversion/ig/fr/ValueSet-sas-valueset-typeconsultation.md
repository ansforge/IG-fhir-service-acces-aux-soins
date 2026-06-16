# Type consultation SAS - Service d'Accès aux Soins v1.2.0

## ValueSet: Type consultation SAS 

 
Type de consultations SAS 

 **References** 

* [FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "sas-valueset-typeconsultation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-typeconsultation",
  "version" : "1.2.0",
  "name" : "TypeConsultationSAS",
  "title" : "Type consultation SAS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-16T14:59:49+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Type de consultations SAS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "concept" : [{
        "code" : "AMB",
        "display" : "Consultation au cabinet"
      },
      {
        "code" : "HH",
        "display" : "Consultation à domicile"
      },
      {
        "code" : "VR",
        "display" : "Téléconsultation"
      }]
    }]
  }
}

```
