Profile: FrPractitionerRegul
Parent: FrPractitioner
Id: FrPractitionerRegul
Description: "Profil de Practitioner, dérivé de FrPractitioner, pour la gestion des comptes régulateurs de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS"


* meta.source = "urn:oid:1.2.250.1.213.3.6"
* meta.source 1..1

* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    IdentifiantNatPS 0..1 and
    IdentifiantInterne 0..1 

* identifier[IdentifiantNatPS].type = $fr-v2-0203#IDNPS
* identifier[IdentifiantNatPS].system = "urn:oid:1.2.250.1.71.4.2.1"
* identifier[IdentifiantNatPS].value 1..1

* identifier[IdentifiantInterne].type = $fr-v2-0203#INTRN
* identifier[IdentifiantInterne].system = "urn:oid:1.2.250.1.213.3.6"
* identifier[IdentifiantInterne].value 1..1

* active 1..1
* name.family 1..1
* name.given 1..1
* telecom.system = #email
* telecom.value 1..1