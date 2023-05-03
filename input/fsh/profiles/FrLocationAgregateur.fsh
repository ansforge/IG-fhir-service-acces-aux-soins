Profile: FrLocationAgregateur
Parent: FrLocation
Id: FrLocationAgregateur
Description: "Profil de Location, dérivé de FrLocation, pour le service d'agrégation de créneaux de la plateforme SAS (Service d'accès aux soins)"
* ^url = "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur"
* ^version = "1.0"
* ^date = "2021-06-14"
* ^publisher = "ANS"
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