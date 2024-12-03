Profile: FrSlotAgregateurSOS
Parent: FrSlot
Id: sas-sos-slot-aggregator
Description: "Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins"

* meta.security from sas-sos-valueset-typecreneau (required)
* meta.security ^binding.description = "type de créneau : public, SNP"
* serviceType.coding from sas-valueset-typeconsultation (required)
* appointmentType.coding from sas-valueset-appointmentreason (required)
* schedule only Reference(FrScheduleAgregateurSOS)
* status = #free
// commment doit être rempli si appointmentType.coding.code = 'ROUTINE'