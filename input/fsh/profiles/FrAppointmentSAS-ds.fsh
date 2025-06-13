Profile: FrAppointmentSASDashBoard
Parent: fr-core-appointment
Id: sas-appointment-ds
Description: "Profil de Appointment, dérivé de FrAppointment, pour le cas d'usage d'affichage dans un dashboard des RDV consolidés de la PTF"

* meta.profile contains sas-appointment-ds 0..1
* meta.profile[sas-appointment-ds] = Canonical(sas-appointment-ds)

// Extension appointmentOperator provenant de FrAppointment
* extension[appointmentOperator] 1..
* extension[appointmentOperator].value[x] 1..
* extension[appointmentOperator].value[x] only Reference(AsPractitionerProfile)

* identifier 1..1
* identifier.system 1..
* identifier.value 1..
* start 1..
* end 1..
* created MS
* participant.actor only Reference(FrPractitionerAgregateur)
// le statut est obligatoire - transmettre booked systématiquement pour un RDV SAS
* participant.status MS