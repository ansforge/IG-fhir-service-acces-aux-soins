Instance: ExampleAppointmentLRM2
InstanceOf: SASAppointmentLRM
Description: "Exemple RDV LRM 2 - CDS non interfacé"
Usage: #example

* identifier.value = "12346"
* status = #booked
* start = "2025-06-17T14:00:00+01:00"
* end = "2025-06-17T14:20:00+01:00"
* created = "2025-06-17T10:15:56+01:00"
* participant.actor = Reference(ExampleHealthcareService2)
* participant.status = #accepted
* extension[categorieOrientation].valueCodeableConcept = https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement#124