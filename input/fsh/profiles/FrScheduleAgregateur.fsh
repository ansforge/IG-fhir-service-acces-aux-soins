Profile: FrScheduleAgregateur
Parent: fr-core-schedule
Id: sas-schedule-aggregator
Description: "Profil de Schedule, dérivé de FrSchedule, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS"

//* actor only Reference(FrPractitionerRoleExerciceAgregateur or FrPractitionerAgregateur)
* actor ^type.aggregation[0] = #referenced
* actor ^type.aggregation[+] = #bundled