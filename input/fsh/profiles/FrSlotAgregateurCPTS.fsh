Profile: FrSlotAgregateurCPTS
Parent: FrSlot
Id: sas-cpts-slot-aggregator
Description: "Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS (Service d'accès aux soins), dans le cadre du cas d'usage CPTS"

* meta.security from sas-sos-valueset-typecreneau (required)
* meta.security ^short = "type de créneau : public, pro, SNP, CPTS"

* serviceType.extension contains SASServiceType-R5 named sas-servicetype-r5 0..1 
* serviceType ^slicing.discriminator.type = #pattern
* serviceType ^slicing.discriminator.path = "$this"
* serviceType ^slicing.rules = #open

* serviceType contains type 0..* and cpts 0..* // fix card

//AMB, VR, HH
* serviceType[type] from $v3-ActEncounterCode (required)
* serviceType[type].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* serviceType[type].extension[sas-servicetype-r5] 0..0

* serviceType[cpts] = http://terminology.hl7.org/CodeSystem/service-type#1 // choisir bon code
* serviceType[cpts].extension[sas-servicetype-r5] 1..1
* serviceType[cpts].extension[sas-servicetype-r5].valueReference only Reference(FrHealthcareServiceAgregateurCPTS)

* appointmentType.coding from sas-sos-valueset-appointmentreason (required)
// vérifier si référence à ce profil ou nouveau profil CPTS
* schedule only Reference(FrScheduleAgregateur)
* status = #free
