Instance: SAS-GestionnaireAgenda-RDVpsindiv
InstanceOf: CapabilityStatement
Usage: #definition
* name = "SAS_gestionnaireAgenda_RDVpsindiv"
* title = "Profil SAS gestionnaire d'agenda RDV ps indiv"
* status = #draft
* experimental = false
* date = "2024-10-01T00:00:00+01:00"
* description = "Un gestionnaire d'agenda reçoit des rendez-vous ps indiv envoyés par un déclarant de rendez-vous. La platefome numérique SAS joue le rôle de gestionnaire d'agenda et stocke les rendez-vous récupérés"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* implementationGuide = "https://interop.esante.gouv.fr/ig/fhir/sas"
* rest.mode = #server
* rest.documentation = "Réception des création et mises à jour de RDV ps indiv"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"

//PS Indiv
* rest.resource[0].type = #Appointment
* rest.resource[=].profile = "http://sas.fr/fhir/StructureDefinition/FrAppointmentSAS"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].updateCreate = true
* rest.resource[=].conditionalUpdate = true

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant du rendez-vous"
