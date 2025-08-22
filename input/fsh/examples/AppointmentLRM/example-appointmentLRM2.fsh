Instance: ExampleAppointmentLRM2
InstanceOf: SASAppointmentLRM
Description: "Exemple RDV LRM 2"
Usage: #example

* identifier.value = "12346"
* status = #pending
* start = "2025-06-17T14:00:00+01:00"
* end = "2025-06-17T14:20:00+01:00"
* created = "2025-06-17T10:15:56+01:00"
* participant.actor = Reference(ExampleHealthcareService)
* participant.status = #needs-action
