Profile: SASOrganizationLRM
Parent: fr-core-organization
Id: sas-organization-lrm
Description: "Profil dérivé de FrOrganization dans le cadre de l'usage des flux du SAS"

* meta.profile contains sas-organization-lrm 0..1
* meta.profile[sas-organization-lrm] = Canonical(sas-organization-lrm)

//* identifier[idNatSt] 1..
* name 1..1
