# Statut participant SAS SOS - Service d'Accès aux Soins v1.2.0

## ValueSet: Statut participant SAS SOS 

 
Statut du participant RDV SAS SOS 

 **References** 

* [FrAppointmentSASSOS](StructureDefinition-sas-sos-appointment.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "sas-sos-valueset-participant-status",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-sos-valueset-participant-status",
  "version" : "1.2.0",
  "name" : "ParticipantStatusSASSOS",
  "title" : "Statut participant SAS SOS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-15T12:26:42+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Statut du participant RDV SAS SOS",
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
