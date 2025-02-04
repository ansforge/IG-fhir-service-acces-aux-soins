Profile: FrSlotAgregateurSOS
Parent: fr-core-slot
Id: sas-sos-slot-aggregator
Description: "Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS [cas d'usage SOS Médecins]"

* meta.profile contains sas-sos-slot-aggregator 0..1
* meta.profile[sas-sos-slot-aggregator] = Canonical(sas-sos-slot-aggregator)

* meta.security from sas-sos-valueset-typecreneau (required)
* meta.security ^binding.description = "type de créneau : public, SNP"
* serviceType.coding from sas-valueset-typeconsultation (required)
* appointmentType.coding from sas-valueset-appointmentreason (required)
* schedule only Reference(FrScheduleAgregateurSOS)
* status = #free
// commment doit être rempli si appointmentType.coding.code = 'ROUTINE'