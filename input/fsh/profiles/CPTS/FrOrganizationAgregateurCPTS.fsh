Profile: FrOrganizationAgregateurCPTS
Parent: fr-core-organization
Id: sas-cpts-organization-aggregator
Description: "Profil dérivé de FrOrganization pour le cas d'usage agrégateur de la plateforme SAS [cas d'usage CPTS]"

* meta.profile contains sas-cpts-organization-aggregator 0..1
* meta.profile[sas-cpts-organization-aggregator] = Canonical(sas-cpts-organization-aggregator)

* identifier[idNatSt] 1..1
* identifier[idNatSt] obeys FINESS-invariant
* name 0..1 MS
* telecom 0..* MS 

Invariant:   FINESS-invariant
Description: "Le numéro FINESS doit être préfixé par 1 suivi de 9 caractères numériques"
Expression:  "value.matches('^1[0-9]{9}$')"
Severity:    #error