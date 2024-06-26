Profile: FrAppointmentSAS
Parent: FrAppointment
Id: FrAppointmentSAS
Description: "Profil de Appointment, dérivé de FrAppointment, pour le cas d'usage prise de RDV de la plateforme SAS (Service d'accès aux soins)"
* ^url = "http://sas.fr/fhir/StructureDefinition/FrAppointmentSAS"
* ^version = "1.0.0"


// Extension appointmentOperator provenant de FrAppointment
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension[appointmentOperator] 1..
* extension[appointmentOperator].value[x] 1..
* extension[appointmentOperator].value[x] only Reference
* extension[appointmentOperator].valueReference 1..
* extension[appointmentOperator].valueReference.identifier 1..
* extension[appointmentOperator].valueReference.identifier.type 1..
* extension[appointmentOperator].valueReference.identifier.type.coding 1..1
* extension[appointmentOperator].valueReference.identifier.type.coding.system 1..
* extension[appointmentOperator].valueReference.identifier.type.coding.system = "http://interopsante.org/fhir/CodeSystem/fr-v2-0203" (exactly)
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
* participant.actor.identifier.type.coding = $fr-v2-0203#IDNPS (exactly)
* participant.actor.identifier.system 1..
* participant.actor.identifier.system = "urn:oid:1.2.250.1.71.4.2.1" (exactly)
* participant.actor.identifier.value 1..
* participant.actor.identifier.value ^mustSupport = false
* participant.status = #accepted (exactly)