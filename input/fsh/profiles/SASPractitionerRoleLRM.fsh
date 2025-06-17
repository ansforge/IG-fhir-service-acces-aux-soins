Profile: SASPractitionerRoleLRM
Parent: fr-core-practitioner-role
Id: sas-practitioner-role-lrm
Description: "Profil dérivé de FrPractitionerRole dérivé de FrAppointment, pour le cas d'usage d'envoi des RDV consolidés de la PTF aux logiciels de LRM"

* meta.profile contains sas-practitioner-role-lrm 0..1
* meta.profile[sas-practitioner-role-lrm] = Canonical(sas-practitioner-role-lrm)

* organization 1..1
* organization Reference(SASOrganization)
