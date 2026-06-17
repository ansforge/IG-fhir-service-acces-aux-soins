# Appointment reason SAS - Service d'Accès aux Soins v1.2.0

## ValueSet: Appointment reason SAS 

 
Appointment reason SAS 

 **References** 

* [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md)
* [FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "sas-valueset-appointmentreason",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-appointmentreason",
  "version" : "1.2.0",
  "name" : "AppointmentReasonSAS",
  "title" : "Appointment reason SAS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-17T07:51:28+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Appointment reason SAS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
      "concept" : [{
        "code" : "ROUTINE",
        "display" : "Créneau avec prise de RDV possible"
      },
      {
        "code" : "WALKIN",
        "display" : "Créneau sans prise de RDV possible à domicile"
      }]
    }]
  }
}

```
