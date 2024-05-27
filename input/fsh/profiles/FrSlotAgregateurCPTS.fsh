Profile: FrSlotAgregateurCPTS
Parent: FrSlot
Id: sas-cpts-slot-aggregator
Description: "Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS (Service d'accès aux soins), dans le cadre du cas d'usage CPTS"

* meta.security from sas-sos-valueset-typecreneau (required)
* meta.security ^binding.description = "type de créneau : public, pro, SNP, CPTS"

* serviceType.extension contains
    SASServiceType-R5 named sas-servicetype-r5 0..* 
* serviceType ^slicing.discriminator.type = #type
* serviceType ^slicing.discriminator.path = $this 
* serviceType ^slicing.rules = #open

* serviceType contains
    serviceTypeCodableConcept 1..* and
    serviceTypeCodableReference 1..* 

* serviceType[serviceTypeTypeConsultation].type only CodeableConcept
* serviceType[serviceTypeReferenceHS].type only Extension


* serviceType.[serviceTypeTypeConsultation].coding from sas-sos-valueset-typeconsultation (required)


* appointmentType.coding from sas-sos-valueset-appointmentreason (required)
// vérifier si référence à ce profil ou nouveau profil CPTS
* schedule only Reference(FrScheduleAgregateurSOS)
* status = #free
