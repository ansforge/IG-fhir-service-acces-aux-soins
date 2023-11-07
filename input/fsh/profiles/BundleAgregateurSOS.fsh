Profile: BundleAgregateurSOS
Parent: Bundle
Id: sas-sos-bundle-aggregator
Description: "Bundle Agrégateur SAS SOS"
* type = #searchset
* total 1..
* link 1..1
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    slotAgregateurSOS 1..* and
    scheduleAgregateurSOS 1..* and
    locationAgregateurSOS 1..* and
    organizationAgregateurSOS 1..*

* entry[slotAgregateurSOS].resource only FrSlotAgregateurSOS
* entry[slotAgregateurSOS].fullUrl 1..

* entry[scheduleAgregateurSOS].resource only FrScheduleAgregateurSOS
* entry[scheduleAgregateurSOS].fullUrl 1..


* entry[locationAgregateurSOS].resource only FrLocationAgregateurSOS
* entry[locationAgregateurSOS].fullUrl 1..

* entry[organizationAgregateurSOS].resource only FrOrganizationAgregateurSOS
* entry[organizationAgregateurSOS].fullUrl 1..