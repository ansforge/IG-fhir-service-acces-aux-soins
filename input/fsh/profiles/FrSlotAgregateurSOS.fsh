Profile: FrSlotAgregateurSOS
Parent: FrSlot
Id: sas-sos-slot-aggregator
* meta.security from sas-sos-valueset-typecreneau (required)
* meta.security ^binding.description = "type de créneau : public, SNP"
* serviceType.coding from sas-sos-valueset-typeconsultation (required)
* appointmentType.coding from sas-sos-valueset-appointmentreason (required)
* schedule only Reference(FrScheduleAgregateurSOS)
* status = #free
// commment doit être rempli si appointmentType.coding.code = 'ROUTINE'