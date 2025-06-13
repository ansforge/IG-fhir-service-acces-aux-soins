Profile: FrPractitionerAgregateur
Parent: fr-core-practitioner
Id: sas-practitioner-aggregator
Description: "Profil de Practitioner, dérivé de FrPractitioner, pour le service d'agrégation de créneaux de la plateforme SAS [Commun cas d'usage PS Indiv et CPTS]"

* meta.profile contains sas-practitioner-aggregator 0..1
* meta.profile[sas-practitioner-aggregator] = Canonical(sas-practitioner-aggregator)

* identifier[idNatPs] 1..
//* identifier[idNatPs].type = $fr-v2-0203#IDNPS
* identifier.type.coding ..1
//* identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
