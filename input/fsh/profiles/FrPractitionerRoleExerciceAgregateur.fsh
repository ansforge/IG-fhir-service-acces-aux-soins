Profile: FrPractitionerRoleExerciceAgregateur
Parent: FrPractitionerRoleExercice
Id: FrPractitionerRoleExerciceAgregateur
Description: "Profil de PractitionerRole, dérivé de FrPractitionerRoleExercice, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS"
* ^url = "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"

* contained 1..
* practitioner only Reference(FrPractitionerAgregateur)
* practitioner ^type.aggregation[0] = #referenced
* practitioner ^type.aggregation[+] = #bundled
* organization.identifier ^short = "Identifiant national de la structure"
* organization.identifier ^definition = "Identifiant national de la structure (FINESS, SIRET ou RPPS Rang uniquement)"
* organization.identifier.type = http://interopsante.org/fhir/CodeSystem/fr-v2-0203#IDNST
* organization.identifier.system = "urn:oid:1.2.250.1.71.4.2.2"
* location 1..1
* location only Reference(FrLocationAgregateur)
* location ^type.aggregation[0] = #contained