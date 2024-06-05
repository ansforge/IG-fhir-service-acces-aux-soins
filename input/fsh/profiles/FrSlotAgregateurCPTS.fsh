Profile: FrSlotAgregateurCPTS
Parent: FrSlot
Id: sas-cpts-slot-aggregator
Description: "Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS (Service d'accès aux soins), dans le cadre du cas d'usage CPTS"

* meta.security from sas-sos-valueset-typecreneau (required)
* meta.security ^binding.description = "type de créneau : public, pro, SNP, CPTS"

* serviceType.extension contains SASServiceType-R5 named sas-servicetype-r5 0..* 

* serviceType.coding from $v3-ActEncounterCode (required)
* serviceType.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"


* appointmentType.coding from sas-sos-valueset-appointmentreason (required)
// vérifier si référence à ce profil ou nouveau profil CPTS
* schedule only Reference(FrScheduleAgregateur)
* status = #free
