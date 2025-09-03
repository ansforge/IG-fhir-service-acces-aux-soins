Profile: SASAppointmentLRM
Parent: fr-core-appointment
Id: sas-appointment-lrm
Description: "Profil de Appointment, dérivé de FrAppointment, pour le cas d'usage d'envoi des RDV consolidés de la PTF aux logiciels de LRM"

* meta.profile contains sas-appointment-ds 0..1
* meta.profile[sas-appointment-ds] = Canonical(sas-appointment-lrm)

* identifier 1..1
//A ajouter dans fichier des OID
* identifier.system = "urn:oid:1.2.250.1.213.3.6.2"
* identifier.value 1..
// 1 ou n ?
* specialty MS
* start 1..1
* end 1..1
* created 1..1
* statut ^short = "Statuts exploités par la PTF SAS : PENDING, BOOKED, NOSHOW, CANCELLED"
* participant.actor only Reference(SASPractitionerLRM or SASHealthcareServiceLRM)
* participant.actor MS
* participant.status MS
* participant.status ^short = "Statuts exploités par la PTF SAS : ACCEPTED, NEEDS-ACTION"