Profile: SASHealthcareServiceLRM
Parent: fr-core-healthcare-service
Id: sas-healthcareservice-lrm
Description: "Profil dérivé de FR Core Healthcare Service Profile dans le cadre de l'usage des flux du SAS"

* meta.profile contains sas-healthcareservice 0..1
* meta.profile[sas-healthcareservice] = Canonical(sas-healthcareservice-lrm)

* providedBy 1..1
* providedBy only Reference(SASOrganizationLRM)