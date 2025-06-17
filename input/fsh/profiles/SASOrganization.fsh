Profile: SASOrganization
Parent: fr-core-organization
Id: sas-organization
Description: "Profil dérivé de FrOrganization dans le cadre de l'usage des flux du SAS"

* meta.profile contains sas-organization 0..1
* meta.profile[sas-organization] = Canonical(sas-organization)

* identifier[idNatSt] 1..
* name 1..1
