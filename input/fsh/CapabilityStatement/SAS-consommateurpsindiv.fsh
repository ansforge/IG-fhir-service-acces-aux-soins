Instance: SAS-Consommateur-psindiv
InstanceOf: CapabilityStatement
Usage: #definition
* name = "SAS_consommateur_psindiv"
* title = "Profil SAS consommateur de créneaux"
* status = #draft
* experimental = false
* date = "2024-10-01T00:00:00+01:00"
* description = "Un consommateur consulte les créneaux ps indiv mis à disposition par un gestionnaire d’agenda. La platefome numérique SAS joue le rôle de consommateur et affiche les créneaux récupérés"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* implementationGuide = "https://interop.esante.gouv.fr/ig/fhir/sas"
* rest.mode = #client
* rest.documentation = "Consultation de créneaux ps indiv"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"

* rest.resource[0].type = #Slot
* rest.resource[=].profile = "http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchInclude[0] = "Slot:schedule"
* rest.resource[=].searchInclude[+] = "Schedule:actor"

* rest.resource[=].searchParam[0].name = "SPDateDebutSlot"
* rest.resource[=].searchParam[=].definition = "https://interop.esante.gouv.fr/ig/fhir/sas/SearchParameter/slot-sp-start"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche d'une disponibilité sur la date et l'heure de début de disponibilité souhaité"

* rest.resource[1].type = #Schedule
* rest.resource[=].profile = "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].searchParam[0].name = "SearchSchedule-actor"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Schedule-actor"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Permet de rechercher un agenda par acteur - praticien dans ce cas"

* rest.resource[2].type = #Practitioner
* rest.resource[=].profile = "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].searchParam[0].name = "Practitioner-identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet de rechercher un praticien par identifiant - RPPS dans ce cas"
