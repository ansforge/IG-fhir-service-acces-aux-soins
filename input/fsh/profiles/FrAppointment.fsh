Profile: FrAppointment
Parent: Appointment
Id: FrAppointment
Description: "Profile of the Appointment resource for France | Profil de la ressource Appointment pour la France. This profile adds the operator who created/updated/canceled the appointment. It also allows to possibly reference an appointment canceled and a document associated with the appointment | Ce profil ajoute l'opérateur qui a créé/modifié/annulé le RDV. Il permet également de référencer éventuellement un RDV annulé et/ou un document lié au RDV."
* ^url = "http://interopsante.org/fhir/StructureDefinition/FrAppointment"
* ^status = #active
* ^date = "2022-03-03"
* ^publisher = "InteropSanté"
* ^contact.name = "InteropSanté"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@interopsante.org"
* ^contact.telecom.use = #work
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains FrAppointmentOperator named appointmentOperator 0..1
* extension[appointmentOperator].value[x] ^slicing.discriminator.type = #type
* extension[appointmentOperator].value[x] ^slicing.discriminator.path = "$this"
* extension[appointmentOperator].value[x] ^slicing.rules = #open
* status from AppointmentStatus (required)
* specialty from $fr-practitioner-specialty (required)
* slot only Reference(FrSlot)
* participant.actor only Reference(Device or PractitionerRole or FrRelatedPerson or FrHealthcareService or FrPractitioner or FrPatient or FrLocation)