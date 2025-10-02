Instance: ExampleBundleAppointmentLRM6
InstanceOf: SASBundleAppointmentLRM
Description: "Exemple Bundle RDV LRM 6 - Cas RDV avec PS mais sans structure, exemple PS. indiv"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM6
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM6"
* entry[appointmententry].request.method = #PUT
* entry[appointmententry].request.url = "Appointment/ExampleAppointmentLRM4"

* entry[practitionerentry].resource = ExamplePractitionerLRM
* entry[practitionerentry].fullUrl = "https://<base_URl>/Practitioner/ExamplePractitionerLRM"
* entry[practitionerentry].request.method = #POST
* entry[practitionerentry].request.url = "Practitioner"

