Profile: FrPractitionerAgregateur
Parent: FrPractitioner
Id: FrPractitionerAgregateur
Description: "Profil de Practitioner, dérivé de FrPractitioner, pour le service d'agrégation de créneaux de la plateforme SAS (Service d'accès aux soins)"
* ^url = "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"

* identifier 1..
* identifier.type = $fr-v2-0203#IDNPS
* identifier.type ^binding.strength = #required
* identifier.type.coding ..1
* identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* name.family ^binding.strength = #preferred
* name.family ^binding.description = "Nom d'exercice"
* name.given ^binding.strength = #preferred
* name.given ^binding.description = "Prénom"