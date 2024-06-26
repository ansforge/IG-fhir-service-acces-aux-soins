Profile: FrLocationAgregateurSOS
Parent: FrLocation
Id: sas-sos-location-aggregator
* identifier.type = $fr-location-identifier-type#INTRN
* identifier.system 1..1
* identifier.value 1..1
* name 1..
* address 1..
* address.line 1..1
* address.city 1..
* address.postalCode 1..
* address.postalCode ^maxLength = 5
* managingOrganization 1..
* managingOrganization only Reference(FrOrganizationAgregateurSOS)
* managingOrganization.reference 1..