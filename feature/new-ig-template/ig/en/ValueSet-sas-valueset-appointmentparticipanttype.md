# Appointment Participant Type SAS - Service d'Accès aux Soins v1.2.0

## ValueSet: Appointment Participant Type SAS 

 
Type de participant du RDV SAS 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "sas-valueset-appointmentparticipanttype",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-appointmentparticipanttype",
  "version" : "1.2.0",
  "name" : "AppointmentParticipantTypeSAS",
  "title" : "Appointment Participant Type SAS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T12:31:55+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Type de participant du RDV SAS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
      "concept" : [{
        "code" : "ADM",
        "display" : "The practitioner who is responsible for admitting a patient to a patient encounter."
      }]
    }]
  }
}

```
