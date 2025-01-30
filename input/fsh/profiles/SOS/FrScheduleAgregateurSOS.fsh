Profile: FrScheduleAgregateurSOS
Parent: fr-core-schedule
Id: sas-sos-schedule-aggregator
Description: "Profil de Schedule, dérivé de FrSchedule, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins"

* actor only Reference(fr-core-location)
//* actor ^type.aggregation[0] = #referenced
* actor.reference 1..