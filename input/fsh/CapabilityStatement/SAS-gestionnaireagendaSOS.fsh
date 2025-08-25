Instance: SAS-GestionnaireAgenda-SOS
InstanceOf: CapabilityStatement
Usage: #definition
* name = "SAS_gestionnaireAgenda_SOS"
* title = "Profil SAS gestionnaire d'agenda SOS"
* status = #draft
* experimental = false
* date = "2024-10-01T00:00:00+01:00"
* description = "Un gestionnaire d'agenda met à disposition d'un consommateur des créneaux de disponibilité. Cas d'usage SOS médecins"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* implementationGuide = "https://interop.esante.gouv.fr/ig/fhir/sas"
* rest.mode = #server
* rest.documentation = "Mise à disposition de créneaux de disponibilité SOS médecins"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"

* rest.resource[0].type = #Schedule
* rest.resource[=].profile = Canonical(sas-sos-schedule-aggregator)
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchRevInclude[0] = "Slot:schedule"
* rest.resource[=].searchInclude[+] = "Schedule:actor:Location"
* rest.resource[=].searchInclude[+] = "Location:organization"

* rest.resource[=].searchParam[+].name = "_has"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-has"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Permet la sélection des ressources en fonction des propriétés des ressources qui y font référence (reverse chaining)"

* rest.resource[=].searchParam[+].name = "SearchSchedule-actor"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Schedule-actor"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Permet de rechercher un agenda par acteur - lieu dans ce cas"

* rest.resource[1].type = #Slot
* rest.resource[=].profile = Canonical(sas-sos-slot-aggregator)
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].searchParam[0].name = "SPDateDebutSlot"
* rest.resource[=].searchParam[=].definition = "https://interop.esante.gouv.fr/ig/fhir/sas/SearchParameter/slot-sp-start"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche d'une disponibilité sur la date et l'heure de début de disponibilité souhaité"

* rest.resource[2].type = #Location
* rest.resource[=].profile = Canonical(sas-sos-location-aggregator)
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].searchParam[0].name = "Location-organization"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche d'un lieu selon la structure rattachée"

* rest.resource[3].type = #Organization
* rest.resource[=].profile = Canonical(sas-sos-organization-aggregator)
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].searchParam[0].name = "Organization-identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche d'une structure par identifiant - SIRET dans ce cas"