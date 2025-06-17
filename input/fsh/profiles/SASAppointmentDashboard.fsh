Profile: SASAppointmentDashboard
Parent: fr-core-appointment
Id: sas-appointment-dashboard
Description: "Profil de Appointment, dérivé de FrAppointment, pour le cas d'usage d'affichage dans un dashboard des RDV consolidés de la PTF"

* meta.profile contains sas-appointment-ds 0..1
* meta.profile[sas-appointment-ds] = Canonical(sas-appointment-ds)

// Extension appointmentOperator provenant de FrAppointment. Régulateur toujours présent dans ds mais non envoyé
* extension[appointmentOperator] 1..
* extension[appointmentOperator].value[x] 1..
* extension[appointmentOperator].value[x] only Reference(AsPractitionerProfile)

* identifier 1..1
//A ajouter dans fichier des OID
* identifier.system = "urn:oid:1.2.250.1.213.3.6.2"
* identifier.value 1..
// 1 ou n ?
* specialty MS
* start 1..
* end 1..
* created MS
* participant.actor only Reference(FrPractitionerAgregateur or SASOrganization)
* participant.actor MS
// le statut est obligatoire - transmettre booked systématiquement pour un RDV SAS
* participant.status MS