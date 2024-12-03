Profile: FrScheduleAgregateur
Parent: FrSchedule
Id: FrScheduleAgregateur
Description: "Profil de Schedule, dérivé de FrSchedule, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS"
* ^url = "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"

//* actor only Reference(FrPractitionerRoleExerciceAgregateur or FrPractitionerAgregateur)
* actor ^type.aggregation[0] = #referenced
* actor ^type.aggregation[+] = #bundled