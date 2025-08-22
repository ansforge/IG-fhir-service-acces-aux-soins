Instance: ExampleBundleAppointmentLRM3
InstanceOf: SASBundleAppointmentLRM
Description: "Exemple Bundle RDV LRM 3 - Cas SOS Médecin interfacé mise à jour"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM3
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM3"
* entry[appointmententry].request.method = #PUT
* entry[appointmententry].request.url = "Appointment/ExampleAppointmentLRM1"
