Instance: ExampleBundleAppointmentLRM7
InstanceOf: SASBundleAppointmentLRM
Description: "Exemple Bundle RDV LRM 7 - Cas CPTS non interfacé avec PS et structure"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM7
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM7"
* entry[appointmententry].request.method = #POST
* entry[appointmententry].request.url = "Appointment"

* entry[practitionerentry].resource = ExamplePractitionerLRM
* entry[practitionerentry].fullUrl = "https://<base_URl>/Practitioner/ExamplePractitionerLRM"
* entry[practitionerentry].request.method = #POST
* entry[practitionerentry].request.url = "Practitioner"

* entry[organizationentry].resource = ExampleSasOrganization3
* entry[organizationentry].fullUrl = "https://<base_URl>/Organization/ExampleSasOrganization3"
* entry[organizationentry].request.method = #POST
* entry[organizationentry].request.url = "Organization"

* entry[practitionerRoleentry].resource = ExamplePractitionerRoleAppointment2
* entry[practitionerRoleentry].fullUrl = "https://<base_URl>/PractitionerRole/ExamplePractitionerRoleAppointment2"
* entry[practitionerRoleentry].request.method = #POST
* entry[practitionerRoleentry].request.url = "PractitionerRole"