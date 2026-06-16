# Type créneaux SAS SOS - Service d'Accès aux Soins v1.2.0

## ValueSet: Type créneaux SAS SOS 

 
Type de Créneaux SAS SOS 

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
  "id" : "sas-sos-valueset-typecreneau",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-sos-valueset-typecreneau",
  "version" : "1.2.0",
  "name" : "TypeCreneauSASSOS",
  "title" : "Type créneaux SAS SOS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-16T15:06:39+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Type de Créneaux SAS SOS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
      "concept" : [{
        "code" : "PUBLIC",
        "display" : "Créneau accessible par le grand public"
      },
      {
        "code" : "SNP",
        "display" : "Créneau accessible par les Régulateurs et Organisateurs de Soins Non Programmés"
      }]
    }]
  }
}

```
