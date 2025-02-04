Profile: FrHealthcareServiceAgregateurCPTS
Parent: fr-core-healthcare-service
Id: sas-cpts-healthcareservice-aggregator
Description: "Profil dérivé de FrHealthcareService pour le cas d'usage agrégateur de la plateforme SAS [Cas d'usage CPTS]"

* meta.profile contains sas-cpts-healthcareservice-aggregator 0..1
* meta.profile[sas-cpts-healthcareservice-aggregator] = Canonical(sas-cpts-healthcareservice-aggregator)

* id 1..1 MS
* providedBy 1..1 MS
* providedBy only Reference(FrOrganizationAgregateurCPTS)


