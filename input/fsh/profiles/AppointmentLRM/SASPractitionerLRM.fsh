Profile: SASPractitionerLRM
Parent: fr-core-practitioner
Id: sas-practitioner-lrm
Description: "Profil de Practitioner, dérivé de FrPractitioner, dans le cadre de l'usage des flux du SAS"

* meta.profile contains sas-practitioner-lrm 0..1
* meta.profile[sas-practitioner-lrm] = Canonical(sas-practitioner-lrm)

* identifier[idNatPs] 1..
* identifier[idNatPs].type = $fr-v2-0203#IDNPS
* identifier.type.coding ..1
* extension[specialty] MS

