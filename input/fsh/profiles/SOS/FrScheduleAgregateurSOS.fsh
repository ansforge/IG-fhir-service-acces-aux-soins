Profile: FrScheduleAgregateurSOS
Parent: fr-core-schedule
Id: sas-sos-schedule-aggregator
Description: "Profil de Schedule, dérivé de FrSchedule, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins"

* meta.profile contains sas-sos-schedule-aggregator 0..1
* meta.profile[sas-sos-schedule-aggregator] = Canonical(sas-sos-schedule-aggregator)

* actor only Reference(fr-core-location)
//* actor ^type.aggregation[0] = #referenced
* actor.reference 1..