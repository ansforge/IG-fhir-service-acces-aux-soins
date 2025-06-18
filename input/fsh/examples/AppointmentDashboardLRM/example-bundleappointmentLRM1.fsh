Instance: ExampleBundleAppointmentLRM1
InstanceOf: SASBundleApppointmentLRM
Description: "Exemple Bundle RDV LRM 1"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM1
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM1"

* entry[practitionerentry].resource = ExamplePractitionerLRM
* entry[practitionerentry].fullUrl = "https://<base_URl>/Practitioner/ExamplePractitionerLRM"

* entry[practitionerRoleentry].resource = ExamplePractitionerRoleAppointment
* entry[practitionerRoleentry].fullUrl = "https://<base_URl>/PractitionerRole/ExamplePractitionerRoleAppointment"

* entry[organizationentry].resource = ExampleSasOrganization
* entry[organizationentry].fullUrl = "https://<base_URl>/Organization/ExampleSasOrganization"