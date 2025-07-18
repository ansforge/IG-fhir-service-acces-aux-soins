Instance: ExampleAppointmentCancelled
InstanceOf: FrAppointmentSAS
Description: "Exemple RDV PS indiv cancelled"
Usage: #example

* id = "2"
* identifier.system = "urn:oid:1.1.111.1.11.1.1.1"
* identifier.value = "b6e39355-8a61-4556-b340-36f7b95fec6a"
* extension[appointmentOperator].valueReference.identifier.type.coding = http://interopsante.org/fhir/CodeSystem/fr-v2-0203#IDNPS
* extension[appointmentOperator].valueReference.identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* extension[appointmentOperator].valueReference.identifier.value = "3456780581/11242343"
* status = #cancelled
* start = "2022-09-04T14:00:00+01:00"
* end = "2022-09-04T14:15:00+01:00"
* created = "2022-09-04T10:00:00+01:00"
* participant.actor.identifier.value = "810100050075"
