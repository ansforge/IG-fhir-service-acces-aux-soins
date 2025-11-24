# ExamplePractitionerRegul4 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExamplePractitionerRegul4**

## Example Practitioner: ExamplePractitionerRegul4

Information Source: [urn:oid:1.2.250.1.213.3.6](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=urn:oid:1.2.250.1.213.3.6)

Profil: [FrPractitionerRegul](StructureDefinition-FrPractitionerRegul.md)

**identifier**: Identifiant interne/1ef1c748-01a3-6180-b098-73283ce4e5b1

**active**: true

**name**: Sébastien Loridon 

**telecom**: [sebastien.loridon@test.com](mailto:sebastien.loridon@test.com)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ExamplePractitionerRegul4",
  "meta" : {
    "source" : "urn:oid:1.2.250.1.213.3.6",
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/FrPractitionerRegul"
    ]
  },
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
            "code" : "INTRN"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.213.3.6",
      "value" : "1ef1c748-01a3-6180-b098-73283ce4e5b1"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Loridon",
      "given" : ["Sébastien"]
    }
  ],
  "telecom" : [
    {
      "system" : "email",
      "value" : "sebastien.loridon@test.com"
    }
  ]
}

```
