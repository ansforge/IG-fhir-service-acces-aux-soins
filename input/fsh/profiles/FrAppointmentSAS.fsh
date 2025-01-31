Profile: FrAppointmentSAS
Parent: fr-core-appointment
Id: sas-appointment
Description: "Profil de Appointment, dérivé de FrAppointment, pour le cas d'usage prise de RDV de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS"


// Extension appointmentOperator provenant de FrAppointment
* extension[appointmentOperator] 1..
* extension[appointmentOperator].value[x] 1..
* extension[appointmentOperator].value[x] only Reference
* extension[appointmentOperator].valueReference 1..
* extension[appointmentOperator].valueReference.identifier 1..
* extension[appointmentOperator].valueReference.identifier.type 1..
* extension[appointmentOperator].valueReference.identifier.type.coding 1..1
* extension[appointmentOperator].valueReference.identifier.type.coding.system = $fr-v2-0203
* extension[appointmentOperator].valueReference.identifier.type.coding.code 1..
* extension[appointmentOperator].valueReference.identifier.system 1..
* extension[appointmentOperator].valueReference.identifier.value 1..

* identifier 1..1
* identifier.system 1..
* identifier.value 1..
* start 1..
* end 1..
* participant.actor.identifier.type 1..
* participant.actor.identifier.type.coding 1..1
* participant.actor.identifier.type.coding = $fr-v2-0203#IDNPS
* participant.actor.identifier.system 1..
* participant.actor.identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* participant.actor.identifier.value 1..
* participant.status = #accepted