Instance: ExampleBundleAppointmentLRM1
InstanceOf: SASBundleAppointmentLRM
Description: "Exemple Bundle RDV LRM 1 - Cas SOS Médecin interfacé après réception du PS"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM1
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM1"

* entry[practitionerentry].resource = ExamplePractitionerLRM
* entry[practitionerentry].fullUrl = "https://<base_URl>/Practitioner/ExamplePractitionerLRM"

* entry[organizationentry].resource = ExampleSasOrganization1
* entry[organizationentry].fullUrl = "https://<base_URl>/Organization/ExampleSasOrganization"

* entry[practitionerRoleentry].resource = ExamplePractitionerRoleAppointment1
* entry[practitionerRoleentry].fullUrl = "https://<base_URl>/PractitionerRole/ExamplePractitionerRoleAppointment"