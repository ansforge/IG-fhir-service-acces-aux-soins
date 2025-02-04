Profile: FrScheduleAgregateur
Parent: fr-core-schedule
Id: sas-schedule-aggregator
Description: "Profil de Schedule, dérivé de FrSchedule, pour le service d'agrégation de créneaux de la plateforme SAS [Commun cas d'usage PS Indiv et CPTS]"

* meta.profile contains sas-schedule-aggregator 0..1
* meta.profile[sas-schedule-aggregator] = Canonical(sas-schedule-aggregator)

//* actor only Reference(FrPractitionerRoleExerciceAgregateur or FrPractitionerAgregateur)
* actor ^type.aggregation[0] = #referenced
* actor ^type.aggregation[+] = #bundled