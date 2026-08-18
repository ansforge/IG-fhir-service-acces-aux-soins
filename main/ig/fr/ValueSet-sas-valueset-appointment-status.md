# Statut RDV SAS - Service d'Accès aux Soins v1.2.0

## ValueSet: Statut RDV SAS 

 
Etat du RDV SAS 

 **References** 

* [FrAppointmentSAS](StructureDefinition-FrAppointmentSAS.md)
* [FrAppointmentSASSOS](StructureDefinition-sas-sos-appointment.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "sas-valueset-appointment-status",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-appointment-status",
  "version" : "1.2.0",
  "name" : "AppointmentStatusSAS",
  "title" : "Statut RDV SAS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T14:54:32+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Etat du RDV SAS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/appointmentstatus",
      "concept" : [{
        "code" : "booked"
      },
      {
        "code" : "cancelled"
      },
      {
        "code" : "noshow"
      },
      {
        "code" : "fulfilled"
      },
      {
        "code" : "pending"
      }]
    }]
  }
}

```
