Profile: FrLocationAgregateur
Parent: fr-core-location
Id: sas-location-aggregator
Description: "Profil de Location, dérivé de FrLocation, pour le service d'agrégation de créneaux de la plateforme SAS [Commun cas d'usage PS Indiv et CPTS]"

* meta.profile contains sas-location-aggregator 0..1
* meta.profile[sas-location-aggregator] = Canonical(sas-location-aggregator)

* address 1..
* address.line 1..1
* address.line ^binding.strength = #extensible
* address.line ^binding.description = "Adresse de consultation – Voie"
* address.city 1..
* address.city ^binding.strength = #extensible
* address.city ^binding.description = "Adresse de consultation – Ville"
* address.postalCode 1..
* address.postalCode ^binding.strength = #extensible
* address.postalCode ^binding.description = "Adresse de consultation – Code postal"