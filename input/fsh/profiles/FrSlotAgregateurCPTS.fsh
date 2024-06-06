Profile: FrSlotAgregateurCPTS
Parent: FrSlot
Id: sas-cpts-slot-aggregator
Description: "Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS (Service d'accès aux soins), dans le cadre du cas d'usage CPTS"

* meta.security from sas-sos-valueset-typecreneau (required)
* meta.security ^short = "type de créneau : public, pro, SNP, CPTS"

* serviceType.extension contains SASServiceTypeR5 named sas-servicetype-r5 0..1 
* serviceType ^slicing.discriminator.type = #value
* serviceType ^slicing.discriminator.path = "$this"
* serviceType ^slicing.rules = #open

* serviceType contains TypeConsultation 0..* and referencecpts 0..* // fix card

* serviceType[TypeConsultation] from $v3-ActEncounterCode (required)
* serviceType[TypeConsultation].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* serviceType[TypeConsultation].extension[sas-servicetype-r5] 0..0

* serviceType[referencecpts] = http://terminology.hl7.org/CodeSystem/service-type#1 // choisir bon code
* serviceType[referencecpts].extension[sas-servicetype-r5] 1..1
* serviceType[referencecpts].extension[sas-servicetype-r5].valueReference only Reference(FrHealthcareServiceAgregateurCPTS)

* appointmentType.coding from sas-sos-valueset-appointmentreason (required)
// vérifier si référence à ce profil ou nouveau profil CPTS
* schedule only Reference(FrScheduleAgregateur)
* status = #free
