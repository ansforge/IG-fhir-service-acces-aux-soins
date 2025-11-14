# FrPractitionerRegul - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrPractitionerRegul**

## Resource Profile: FrPractitionerRegul 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/FrPractitionerRegul | *Version*:1.1.0 |
| Active as of 2025-11-14 | *Computable Name*:FrPractitionerRegul |

 
Profil de Practitioner, dérivé de FrPractitioner, pour la gestion des comptes régulateurs de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS 

**Usages:**

* Examples for this Profile: [Practitioner/ExamplePractitionerRegul1](Practitioner-ExamplePractitionerRegul1.md), [Practitioner/ExamplePractitionerRegul2](Practitioner-ExamplePractitionerRegul2.md), [Practitioner/ExamplePractitionerRegul3](Practitioner-ExamplePractitionerRegul3.md) and [Practitioner/ExamplePractitionerRegul4](Practitioner-ExamplePractitionerRegul4.md)
* CapabilityStatements using this Profile: [Profil SAS gestionnaire de structure](CapabilityStatement-SAS-GestionnaireStructure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/FrPractitionerRegul)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrPractitionerRegul.csv), [Excel](StructureDefinition-FrPractitionerRegul.xlsx), [Schematron](StructureDefinition-FrPractitionerRegul.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPractitionerRegul",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/FrPractitionerRegul",
  "version" : "1.1.0",
  "name" : "FrPractitionerRegul",
  "status" : "active",
  "date" : "2025-11-14T16:44:58+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Profil de Practitioner, dérivé de FrPractitioner, pour la gestion des comptes régulateurs de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrPractitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner",
        "path" : "Practitioner"
      },
      {
        "id" : "Practitioner.meta.source",
        "path" : "Practitioner.meta.source",
        "patternUri" : "urn:oid:1.2.250.1.213.3.6"
      },
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:IdentifiantNatPS",
        "path" : "Practitioner.identifier",
        "sliceName" : "IdentifiantNatPS",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Practitioner.identifier:IdentifiantNatPS.type",
        "path" : "Practitioner.identifier.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
              "code" : "IDNPS"
            }
          ]
        }
      },
      {
        "id" : "Practitioner.identifier:IdentifiantNatPS.system",
        "path" : "Practitioner.identifier.system",
        "patternUri" : "urn:oid:1.2.250.1.71.4.2.1"
      },
      {
        "id" : "Practitioner.identifier:IdentifiantInterne",
        "path" : "Practitioner.identifier",
        "sliceName" : "IdentifiantInterne",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Practitioner.identifier:IdentifiantInterne.type",
        "path" : "Practitioner.identifier.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
              "code" : "INTRN"
            }
          ]
        }
      },
      {
        "id" : "Practitioner.identifier:IdentifiantInterne.system",
        "path" : "Practitioner.identifier.system",
        "patternUri" : "urn:oid:1.2.250.1.213.3.6"
      },
      {
        "id" : "Practitioner.active",
        "path" : "Practitioner.active",
        "min" : 1
      },
      {
        "id" : "Practitioner.name.family",
        "path" : "Practitioner.name.family",
        "min" : 1
      },
      {
        "id" : "Practitioner.name.given",
        "path" : "Practitioner.name.given",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Practitioner.telecom.system",
        "path" : "Practitioner.telecom.system",
        "patternCode" : "email"
      }
    ]
  }
}

```
