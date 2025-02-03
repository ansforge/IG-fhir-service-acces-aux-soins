Profile: FrPractitionerRegul
Parent: fr-core-practitioner
Id: sas-practitioner-aggregator-regul
Description: "Profil de Practitioner, dérivé de FrPractitioner, pour la gestion des comptes régulateurs de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS"


* meta.source =  "urn:oid:1.2.250.1.213.3.6"

* identifier 1..
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    identifier[idNatPs] 0..1 and
    IdentifiantInterne 0..1 

* identifier[idNatPs].value 1..1

* identifier[IdentifiantInterne].type = $fr-v2-0203#INTRN
* identifier[IdentifiantInterne].system = "urn:oid:1.2.250.1.213.3.6"
* identifier[IdentifiantInterne].value 1..1

* active 1..1
* name.family 1..1
* name.given 1..1
* telecom.system = #email
* telecom.value 1..1