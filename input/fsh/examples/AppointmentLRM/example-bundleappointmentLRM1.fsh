Instance: ExampleBundleAppointmentLRM1
InstanceOf: SASBundleAppointmentLRM
Description: "Exemple Bundle RDV LRM 1 - Cas SOS Médecin interfacé avec PS et structure"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM1
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM1"
* entry[appointmententry].request.method = #POST
* entry[appointmententry].request.url = "Appointment"

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