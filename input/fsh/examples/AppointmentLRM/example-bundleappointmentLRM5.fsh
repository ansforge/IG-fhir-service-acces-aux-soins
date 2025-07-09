Instance: ExampleBundleAppointmentLRM5
InstanceOf: SASBundleAppointmentLRM
Description: "Exemple Bundle RDV LRM 5 - Cas mise à jour d'un RDV initialement sans PS avec ajout du médecin"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM1
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM1"
* entry[appointmententry].request.method = #PUT
* entry[appointmententry].request.url = "Appointment/ExampleAppointmentLRM4"

* entry[practitionerentry].resource = ExamplePractitionerLRM
* entry[practitionerentry].fullUrl = "https://<base_URl>/Practitioner/ExamplePractitionerLRM"
* entry[practitionerentry].request.method = #POST
* entry[practitionerentry].request.url = "Practitioner"

