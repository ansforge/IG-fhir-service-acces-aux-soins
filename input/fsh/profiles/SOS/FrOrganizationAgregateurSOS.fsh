Profile: FrOrganizationAgregateurSOS
Parent: fr-core-organization
Id: sas-sos-organization-aggregator
Description: "Profil d'Organization, dérivé de FrOrganization, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins"


* identifier[idNatSt] 1..1
* identifier[idNatSt] obeys SIRET-invariant


Invariant:   SIRET-invariant
Description: "Le numéro SIRET doit être préfixé par 3 suivi de 14 caractères numériques"
Expression:  "value.matches('^3[0-9]{14}$')"
Severity:    #error