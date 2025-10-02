Instance: ExampleAppointmentLRM6
InstanceOf: SASAppointmentLRM
Description: "Exemple RDV LRM 6 - PS indiv (interfacé ou non)"
Usage: #example

* identifier.value = "12348"
* status = #booked
* start = "2025-06-17T14:00:00+01:00"
* end = "2025-06-17T14:20:00+01:00"
* created = "2025-06-17T10:15:56+01:00"
* participant.actor = Reference(ExamplePractitionerLRM)
* participant.status = #accepted
* extension[categorieOrientation].valueCodeableConcept = https://interop.esante.gouv.fr/ig/fhir/sas/CodeSystem/categorie-orientation-sas-codesystem#001
