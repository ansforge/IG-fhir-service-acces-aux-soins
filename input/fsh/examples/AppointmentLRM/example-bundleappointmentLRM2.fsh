Instance: ExampleBundleAppointmentLRM2
InstanceOf: SASBundleAppointmentLRM
Description: "Exemple Bundle RDV LRM 2 - Cas CDS non interfacé"
Usage: #example

* entry[appointmententry].resource = ExampleAppointmentLRM1
* entry[appointmententry].fullUrl = "https://<base_URl>/Appointment/ExampleAppointmentLRM1"
* entry[appointmententry].request.method = #POST
* entry[appointmententry].request.url = "Appointment"

* entry[organizationentry].resource = ExampleSasOrganization2
* entry[organizationentry].fullUrl = "https://<base_URl>/Organization/ExampleSasOrganization2"
* entry[organizationentry].request.method = #POST
* entry[organizationentry].request.url = "Organization"

* entry[healthcareserviceentry].resource = ExampleHealthcareService
* entry[healthcareserviceentry].fullUrl = "https://<base_URl>/HealthcareService/ExampleHealthcareService"
* entry[healthcareserviceentry].request.method = #POST
* entry[healthcareserviceentry].request.url = "HealthcareService"