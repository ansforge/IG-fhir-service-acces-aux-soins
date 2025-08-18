Instance: ExampleAppointmentLRM1
InstanceOf: SASAppointmentLRM
Description: "Exemple RDV LRM 1"
Usage: #example

* identifier.value = "12345"
* status = #booked
* start = "2025-06-17T14:00:00+01:00"
* created = "2025-06-17T10:15:56+01:00"
* participant.actor = Reference(ExamplePractitionerLRM)
* participant.status = #accepted
