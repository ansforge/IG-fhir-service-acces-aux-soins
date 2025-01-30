Profile: FrSlotAgregateurCPTS
Parent: fr-core-slot
Id: sas-cpts-slot-aggregator
Description: "Profil de Slot, dérivé de FrSlot, pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS"

* meta.security from sas-cpts-valueset-typecreneau (required)
* meta.security ^short = "type de créneau : public, pro, SNP, CPTS"

* serviceType ^slicing.discriminator.type = #pattern
* serviceType ^slicing.discriminator.path = "$this"
* serviceType ^slicing.rules = #open

* serviceType.extension contains sas-cpts-slot-servicetype-aggregator named sas-servicetype-r5 0..1 

* serviceType contains TypeConsultation 0..* and referencecpts 0..*

* serviceType[TypeConsultation] from $v3-ActEncounterCode (required)
* serviceType[TypeConsultation].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* serviceType[TypeConsultation].extension[sas-servicetype-r5] 0..0

* serviceType[referencecpts] from sas-valueset-categorieetablissement
* serviceType[referencecpts].extension[sas-servicetype-r5] 1..1
* serviceType[referencecpts].extension[sas-servicetype-r5].valueReference only Reference(FrHealthcareServiceAgregateurCPTS)

* appointmentType.coding from sas-valueset-appointmentreason (required)
* schedule only Reference(FrScheduleAgregateur)
* status = #free
