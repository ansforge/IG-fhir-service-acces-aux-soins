Extension: FrAppointmentOperator
Id: FrAppointmentOperator
Description: "This extension adds the element appointmentOperator to the Appointment resource (operator of creation/update/cancel of the appointment | Cette extension ajoute l'élément appointmentOperator à la ressource Appointment (opérateur de création/modification/annulation du RDV)"
* ^url = "http://interopsante.org/fhir/StructureDefinition/FrAppointmentOperator"
* ^version = "4.0.0"
* ^date = "2019-07-10"
* ^publisher = "Interop'Santé"
* ^contact.name = "François Macary/Isabelle Gibaud"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "francois.macary@phast.fr"
* ^contact.telecom.use = #work
* ^context.type = #element
* ^context.expression = "Appointment"
* obeys ext-1
* . ^short = "Optional Extensions Element"
* . ^definition = "Optional Extension Element - found in all resources."
* valueReference only Reference(FrOrganization or FrPractitioner or FrPatient or RelatedPerson)
* valueReference ^sliceName = "valueReference"