Profile: BundleAgregateurCPTS
Parent: Bundle
Id: sas-cpts-bundle-aggregator
Description: "Bundle Agrégateur SAS CPTS"
* type = #searchset
* total 1..
* link 1..1
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open

* entry contains
    slotAgregateurCPTS 1..* and
    scheduleAgregateurCPTS 1..* and
    practitionerAgregateur 1..* and
    practitionerRole 1..* and
    healthcareserviceCPTS 0..* and
    organizationAgregateurCPTS 0..*

* entry[slotAgregateurCPTS].resource only FrSlotAgregateurCPTS
* entry[slotAgregateurCPTS].fullUrl 1..

* entry[scheduleAgregateurCPTS].resource only FrScheduleAgregateur
* entry[scheduleAgregateurCPTS].fullUrl 1..

* entry[practitionerAgregateur].resource only FrPractitionerAgregateur
* entry[practitionerAgregateur].fullUrl 1..

* entry[practitionerRole].resource only FrPractitionerRoleExerciceAgregateur
* entry[practitionerRole].fullUrl 1..

* entry[healthcareserviceCPTS].resource only FrHealthcareServiceAgregateurCPTS
* entry[healthcareserviceCPTS].fullUrl 1..

* entry[organizationAgregateurCPTS].resource only FrOrganizationAgregateurCPTS
* entry[organizationAgregateurCPTS].fullUrl 1..