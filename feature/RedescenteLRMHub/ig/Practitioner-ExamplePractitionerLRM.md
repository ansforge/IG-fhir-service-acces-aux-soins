# ExamplePractitionerLRM - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExamplePractitionerLRM**

## Example Practitioner: ExamplePractitionerLRM

Profil: [SASPractitionerLRM](StructureDefinition-sas-practitioner-lrm.md)

**FR Core Practitioner Specialty Extension**: [TRE_R38-SpecialiteOrdinale SM54](https://interop.esante.gouv.fr/ig/nos/1.3.0/CodeSystem-TRE-R38-SpecialiteOrdinale.html#TRE-R38-SpecialiteOrdinale-SM54): Médecine générale (SM)

**identifier**: Identifiant National de Professionnel de Santé/810002909371

**name**: Jean Dupont 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ExamplePractitionerLRM",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-lrm"
    ]
  },
  "extension" : [
    {
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-specialty",
      "valueCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
        "code" : "SM54"
      }
    }
  ],
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "IDNPS"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.71.4.2.1",
      "value" : "810002909371"
    }
  ],
  "name" : [
    {
      "family" : "Dupont",
      "given" : ["Jean"]
    }
  ]
}

```
