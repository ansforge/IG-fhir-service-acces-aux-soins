Profile: FrScheduleAgregateurSOS
Parent: FrSchedule
Id: sas-sos-schedule-aggregator
Description: "Profil de Schedule, dérivé de FrSchedule, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins"

* actor only Reference(FrLocation)
//* actor ^type.aggregation[0] = #referenced
* actor.reference 1..