# Statut participant RDV SAS - Service d'Accès aux Soins v1.2.0

## ValueSet: Statut participant RDV SAS 

 
Statut du participant RDV SAS 

 **References** 

* [FrAppointmentSAS](StructureDefinition-FrAppointmentSAS.md)
* [FrAppointmentSASSOS](StructureDefinition-sas-sos-appointment.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "sas-valueset-participant-status",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-participant-status",
  "version" : "1.2.0",
  "name" : "ParticipantStatusSAS",
  "title" : "Statut participant RDV SAS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-17T07:26:55+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Statut du participant RDV SAS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/participationstatus",
      "concept" : [{
        "code" : "accepted",
        "display" : "RDV accepté par le PS effecteur de soins"
      },
      {
        "code" : "needs-action",
        "display" : "RDV en attente de confirmation par le PS effecteur de soins"
      }]
    }]
  }
}

```
