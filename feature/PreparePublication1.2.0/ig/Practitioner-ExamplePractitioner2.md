# ExamplePractitioner2 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExamplePractitioner2**

## Example Practitioner: ExamplePractitioner2

Profil: [FrPractitionerAgregateur](StructureDefinition-FrPractitionerAgregateur.md)

**identifier**: Identifiant National de Professionnel de Santé/810100050075

**name**: Sébastien THOMAS 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ExamplePractitioner2",
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
      "value" : "810100050075"
    }
  ],
  "name" : [
    {
      "family" : "THOMAS",
      "given" : ["Sébastien"]
    }
  ]
}

```
