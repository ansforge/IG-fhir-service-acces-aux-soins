Profile: FrLocationAgregateurSOS
Parent: fr-core-location
Id: sas-sos-location-aggregator
Description: "Profil de Location, dérivé de FrLocation, pour le service d'agrégation de créneaux de la plateforme SAS [cas d'usage SOS Médecins]"

* meta.profile contains sas-sos-location-aggregator 0..1
* meta.profile[sas-sos-location-aggregator] = Canonical(sas-sos-location-aggregator)

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