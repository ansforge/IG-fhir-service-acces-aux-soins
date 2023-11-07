Profile: FrSlotAgregateurSOS
Parent: FrSlot
Id: sas-sos-slot-aggregator
* meta.security from http://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-sos-valueset-typecreneau (required)
* meta.security ^binding.description = "type de créneau : public, SNP"
* serviceType.coding from http://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-sos-valueset-typeconsultation (required)
* appointmentType.coding from http://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-sos-valueset-appointmentreason (required)
* schedule only Reference(FrScheduleAgregateurSOS)
* status = #free
// commment doit être rempli si appointmentType.coding.code = 'ROUTINE'