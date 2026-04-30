# Type créneaux SAS SOS - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type créneaux SAS SOS**

## ValueSet: Type créneaux SAS SOS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-sos-valueset-typecreneau | *Version*:1.2.0 |
| Active as of 2026-04-30 | *Computable Name*:TypeCreneauSASSOS |

 
Type de Créneaux SAS SOS 

 **References** 

* [FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



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
  "date" : "2026-04-30T13:33:12+00:00",
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
      "display" : "FRANCE"
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
