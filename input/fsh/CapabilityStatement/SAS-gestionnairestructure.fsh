Instance: SAS-GestionnaireStructure
InstanceOf: CapabilityStatement
Usage: #definition
* name = "SAS_gestionnaireStructure"
* title = "Profil SAS gestionnaire de structure"
* status = #draft
* experimental = false
* date = "2024-10-01T00:00:00+01:00"
* description = "Un gestionnaire de structure gère les ressources transmises par les déclarants de ressource"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* implementationGuide = "https://interop.esante.gouv.fr/ig/fhir/sas"
* rest.mode = #server
* rest.documentation = "Réception des création et mises à jour de comptes practitioner"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"


* rest.resource[0].type = #Practitioner
* rest.resource[=].profile = Canonical (FrPractitionerRegul)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].updateCreate = true
* rest.resource[=].conditionalUpdate = true


* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identitifant du professionel"

