Profile: FrOrganizationAgregateurCPTS
Parent: FrOrganization
Id: sas-sos-organization-aggregator

* identifier 1..1
* identifier.type = $fr-location-identifier-type#IDNST
* identifier.system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier obeys FINESS-invariant
* name 0..1 MS
* telecom 0..* MS 

Invariant:   FINESS-invariant
Description: "Le numéro FINESS doit être préfixé par 1 suivi de 9 caractères numériques"
Expression:  "value.matches('^1[0-9]{9}$')"
Severity:    #error