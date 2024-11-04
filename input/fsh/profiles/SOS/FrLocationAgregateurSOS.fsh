Profile: FrLocationAgregateurSOS
Parent: FrLocation
Id: sas-sos-location-aggregator
Description: "Profil de Location, dérivé de FrLocation, pour le service d’agrégation de créneaux de la plateforme SAS (Service d’accès aux soins), dans le cadre du cas d’usage SOS Médecins"

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