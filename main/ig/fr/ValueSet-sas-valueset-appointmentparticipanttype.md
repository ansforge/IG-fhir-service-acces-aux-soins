# Appointment Participant Type SAS - Service d'Accès aux Soins v1.2.0

## ValueSet: Appointment Participant Type SAS 

 
Type de participant du RDV SAS 

 **References** 

Ce jeu de valeurs n'est pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-06-15T12:59:24+00:00",
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
        "code" : "ADM"
      }]
    }]
  }
}

```
