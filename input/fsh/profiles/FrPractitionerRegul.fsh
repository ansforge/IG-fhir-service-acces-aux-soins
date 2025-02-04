Profile: FrPractitionerRegul
Parent: fr-core-practitioner
Id: sas-practitioner-aggregator-regul
Description: "Profil de Practitioner, dérivé de FrPractitioner, pour la gestion des comptes régulateurs de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS"

* meta.profile contains sas-practitioner-aggregator-regul 0..1
* meta.profile[sas-practitioner-aggregator-regul] = Canonical(sas-practitioner-aggregator-regul)

* meta.source =  "urn:oid:1.2.250.1.213.3.6"

* identifier contains
    IdentifiantInterne 0..1 

* identifier[IdentifiantInterne].type = $fr-v2-0203#INTRN
* identifier[IdentifiantInterne].system = "urn:oid:1.2.250.1.213.3.6"
* identifier[IdentifiantInterne].value 1..1

* active 1..1
* name.family 1..1
* name.given 1..1
* telecom.system = #email
* telecom.value 1..1