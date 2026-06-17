# Type identifiant SAS - Service d'Accès aux Soins v1.2.0

## ValueSet: Type identifiant SAS 

 
Type d'identifiant SAS 

 **References** 

* [FrAppointmentSASSOS](StructureDefinition-sas-sos-appointment.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "sas-valueset-typeidentifiant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-typeidentifiant",
  "version" : "1.2.0",
  "name" : "TypeIdentifiantSAS",
  "title" : "Type identifiant SAS",
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
  "description" : "Type d'identifiant SAS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
      "concept" : [{
        "code" : "IDNPS",
        "display" : "Identifiant National de Professionnel de Santé"
      },
      {
        "code" : "INTRN",
        "display" : "Identifiant interne"
      }]
    }]
  }
}

```
