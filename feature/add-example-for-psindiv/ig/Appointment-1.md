# ExampleAppointmentBooked - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleAppointmentBooked**

## Example Appointment: ExampleAppointmentBooked

Profil: [FrAppointmentSAS](StructureDefinition-FrAppointmentSAS.md)

**FrAppointmentOperator**: Identifier: Identifiant National de Professionnel de Santé/3456780581/11242343

**identifier**: `urn:oid:1.1.111.1.11.1.1.1`/b6e39355-8a61-4556-b340-36f7b95fec6a

**status**: Booked

**start**: 2022-09-04 14:00:00+0100

**end**: 2022-09-04 14:15:00+0100

**created**: 2022-09-04 10:00:00+0100

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Actor** | **Status** |
| * | Identifier: Identifiant National de Professionnel de Santé/810100050075 | Accepted |



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "1",
  "meta" : {
    "profile" : ["http://sas.fr/fhir/StructureDefinition/FrAppointmentSAS"]
  },
  "extension" : [
    {
      "url" : "http://interopsante.org/fhir/StructureDefinition/FrAppointmentOperator",
      "valueReference" : {
        "identifier" : {
          "type" : {
            "coding" : [
              {
                "system" : "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                "code" : "IDNPS"
              }
            ]
          },
          "system" : "urn:oid:1.2.250.1.71.4.2.1",
          "value" : "3456780581/11242343"
        }
      }
    }
  ],
  "identifier" : [
    {
      "system" : "urn:oid:1.1.111.1.11.1.1.1",
      "value" : "b6e39355-8a61-4556-b340-36f7b95fec6a"
    }
  ],
  "status" : "booked",
  "start" : "2022-09-04T14:00:00+01:00",
  "end" : "2022-09-04T14:15:00+01:00",
  "created" : "2022-09-04T10:00:00+01:00",
  "participant" : [
    {
      "actor" : {
        "identifier" : {
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
      },
      "status" : "accepted"
    }
  ]
}

```
