# ExamplePractitionerRegul2 - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExamplePractitionerRegul2**

## Example Practitioner: ExamplePractitionerRegul2

Information Source: [urn:oid:1.2.250.1.213.3.6](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=urn:oid:1.2.250.1.213.3.6)

Profil: [FrPractitionerRegul](StructureDefinition-FrPractitionerRegul.md)

**identifier**: Identifiant National de Professionnel de Santé/810002673899

**active**: true

**name**: Jules MARIUS 

**telecom**: [jules.marius@test.com](mailto:jules.marius@test.com)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ExamplePractitionerRegul2",
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
            "code" : "IDNPS"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.71.4.2.1",
      "value" : "810002673899"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "MARIUS",
      "given" : ["Jules"]
    }
  ],
  "telecom" : [
    {
      "system" : "email",
      "value" : "jules.marius@test.com"
    }
  ]
}

```
