Profile: FrAppointmentSASSOS
Parent: FrAppointment
Id: sas-sos-appointment
Description: "Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins"

* extension ..1
* extension[appointmentOperator] 1..
* extension[appointmentOperator].value[x] only Reference
* extension[appointmentOperator].valueReference.identifier.type 1..
* extension[appointmentOperator].valueReference.identifier.type.coding 1..1
* extension[appointmentOperator].valueReference.identifier.type.coding from sas-valueset-typeidentifiant  (required)
* extension[appointmentOperator].valueReference.identifier.type.coding.code 1..
* extension[appointmentOperator].valueReference.identifier.system 1..
* extension[appointmentOperator].valueReference.identifier.value 1..
* identifier 1..1
* identifier.system 1..
* identifier.value 1..
* start 1..
* end 1..
* participant.status from sas-sos-valueset-participant-status (required)
