Instance: example-appointmentLRM1
InstanceOf: SASAppointmentLRM
Description: "Exemple RDV LRM"
Usage: #example

* identifier.value = "12345"
* status = #booked
* specialty.coding = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM54
* start = "2025-06-17T14:00:00+01:00"
* end = "2025-06-17T14:15:00+01:00"
* created = "2025-06-17T10:15:56+01:00"
* participant.actor = Reference()


* identifier 1..1
//A ajouter dans fichier des OID
* identifier.system = "urn:oid:1.2.250.1.213.3.6.2"
* identifier.value 1..
// 1 ou n ?
* specialty MS
* start 1..
* end 1..
* created MS
* participant.actor = Reference(ExamplePractitionerLRM)
* participant.actor MS
// le statut est obligatoire - transmettre booked systématiquement pour un RDV SAS
* participant.status MS
