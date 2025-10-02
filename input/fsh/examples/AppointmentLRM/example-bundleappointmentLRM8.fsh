Instance: ExampleBundleAppointmentLRM8
InstanceOf: SASBundleAppointmentLRM
Description: "Exemple Bundle RDV LRM 8 - Cas mise à jour d'un RDV initialement sans PS avec ajout du médecin et de la structure"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM3
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM3"
* entry[appointmententry].request.method = #PUT
* entry[appointmententry].request.url = "Appointment/ExampleAppointmentLRM4"

* entry[practitionerentry].resource = ExamplePractitionerLRM
* entry[practitionerentry].fullUrl = "https://<base_URl>/Practitioner/ExamplePractitionerLRM"
* entry[practitionerentry].request.method = #POST
* entry[practitionerentry].request.url = "Practitioner"

* entry[organizationentry].resource = ExampleSasOrganization1
* entry[organizationentry].fullUrl = "https://<base_URl>/Organization/ExampleSasOrganization1"
* entry[organizationentry].request.method = #POST
* entry[organizationentry].request.url = "Organization"

* entry[practitionerRoleentry].resource = ExamplePractitionerRoleAppointment1
* entry[practitionerRoleentry].fullUrl = "https://<base_URl>/PractitionerRole/ExamplePractitionerRoleAppointment1"
* entry[practitionerRoleentry].request.method = #POST
* entry[practitionerRoleentry].request.url = "PractitionerRole"

