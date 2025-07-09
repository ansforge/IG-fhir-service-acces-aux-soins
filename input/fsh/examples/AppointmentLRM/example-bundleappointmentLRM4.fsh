Instance: ExampleBundleAppointmentLRM4
InstanceOf: SASBundleAppointmentLRM
Description: "Exemple Bundle RDV LRM 4 - Cas RDV sans PS ni structure"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM4
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM4"
* entry[appointmententry].request.method = #POST
* entry[appointmententry].request.url = "Appointment"
