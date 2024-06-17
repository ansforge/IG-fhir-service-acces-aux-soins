Profile: FrSlotAgregateurCPTS
Parent: FrSlot
Id: sas-cpts-slot-aggregator
Description: "Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS (Service d'accès aux soins), dans le cadre du cas d'usage CPTS"

* meta.security from sas-cpts-valueset-typecreneau (required) //verifier
* meta.security ^short = "type de créneau : public, pro, SNP, CPTS"

* serviceType.extension contains SASServiceTypeR5 named sas-servicetype-r5 0..1 
* serviceType ^slicing.discriminator.type = #pattern
* serviceType ^slicing.discriminator.path = "$this"
* serviceType ^slicing.rules = #open

* serviceType contains TypeConsultation 0..* and referencecpts 0..* // fix card

* serviceType[TypeConsultation] from $v3-ActEncounterCode (required)
* serviceType[TypeConsultation].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* serviceType[TypeConsultation].extension[sas-servicetype-r5] 0..0

* serviceType[referencecpts] from sas-valueset-categorieetablissement
//* serviceType[referencecpts] = https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/TRE_R66-CategorieEtablissement#604
* serviceType[referencecpts].extension[sas-servicetype-r5] 1..1
* serviceType[referencecpts].extension[sas-servicetype-r5].valueReference only Reference(FrHealthcareServiceAgregateurCPTS)

* appointmentType.coding from sas-sos-valueset-appointmentreason (required)
* schedule only Reference(FrScheduleAgregateur)
* status = #free
