Instance: ExampleAppointmentLRM1
InstanceOf: SASAppointmentLRM
Description: "Exemple RDV LRM"
Usage: #example

* identifier.value = "12345"
* status = #booked
* specialty.coding = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM54
* start = "2025-06-17T14:00:00+01:00"
* end = "2025-06-17T14:15:00+01:00"
* created = "2025-06-17T10:15:56+01:00"
* participant.actor = Reference(ExamplePractitionerLRM)
//le statut du participant est obligatoire
* participant.status = #accepted
