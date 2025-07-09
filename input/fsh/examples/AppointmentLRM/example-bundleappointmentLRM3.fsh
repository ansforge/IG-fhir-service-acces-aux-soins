Instance: ExampleBundleAppointmentLRM3
InstanceOf: SASBundleAppointmentLRM
Description: "Exemple Bundle RDV LRM 3 - Cas SOS Médecin interfacé mise à jour"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM3
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM3"
* entry[appointmententry].request.method = #PUT
* entry[appointmententry].request.url = "Appointment/ExampleAppointmentLRM1"

// * entry[practitionerentry].resource = ExamplePractitionerLRM
// * entry[practitionerentry].fullUrl = "https://<base_URl>/Practitioner/ExamplePractitionerLRM"
// * entry[practitionerentry].request.method = #PUT
// * entry[practitionerentry].request.url = "Practitioner/ExamplePractitionerLRM"

// * entry[organizationentry].resource = ExampleSasOrganization1
// * entry[organizationentry].fullUrl = "https://<base_URl>/Organization/ExampleSasOrganization"
// * entry[organizationentry].request.method = #PUT
// * entry[organizationentry].request.url = "Organization/ExampleSasOrganization1"

// * entry[practitionerRoleentry].resource = ExamplePractitionerRoleAppointment1
// * entry[practitionerRoleentry].fullUrl = "https://<base_URl>/PractitionerRole/ExamplePractitionerRoleAppointment"
// * entry[practitionerRoleentry].request.method = #PUT
// * entry[practitionerRoleentry].request.url = "PractitionerRole/ExamplePractitionerRoleAppointment1"