Instance: ExampleBundleAppointmentLRM9
InstanceOf: SASBundleAppointmentLRM
Description: "Exemple Bundle RDV LRM 9 - Cas annulation de RDV avec PS mais sans structure, exemple PS. indiv interfacé"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM8
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM6"
* entry[appointmententry].request.method = #PUT
* entry[appointmententry].request.url = "Appointment/ExampleAppointmentLRM4"


