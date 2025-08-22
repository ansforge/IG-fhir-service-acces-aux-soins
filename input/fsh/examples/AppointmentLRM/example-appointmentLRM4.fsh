Instance: ExampleAppointmentLRM4
InstanceOf: SASAppointmentLRM
Description: "Exemple RDV LRM 4"
Usage: #example

* identifier.value = "12345"
* status = #pending
* start = "2025-06-17T14:00:00+01:00"
* end = "2025-06-17T14:20:00+01:00"
* created = "2025-06-17T10:15:56+01:00"
* participant.type = #ADM
* participant.status = #needs-action
* extension[categorieOrientation].valueCodeableConcept = https://interop.esante.gouv.fr/ig/fhir/sas/CodeSystem/categorie-orientation-sas-codesystem#SOS
