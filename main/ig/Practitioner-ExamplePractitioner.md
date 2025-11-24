# ExamplePractitioner - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExamplePractitioner**

## Example Practitioner: ExamplePractitioner

Profil: [FrPractitionerAgregateur](StructureDefinition-FrPractitionerAgregateur.md)

**identifier**: Identifiant National de Professionnel de Santé/810002909371

**name**: Pierre Foret 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ExamplePractitioner",
  "meta" : {
    "profile" : [
      "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"
    ]
  },
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
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
      "family" : "Foret",
      "given" : ["Pierre"]
    }
  ]
}

```
