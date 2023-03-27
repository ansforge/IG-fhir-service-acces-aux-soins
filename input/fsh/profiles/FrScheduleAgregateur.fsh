Profile: FrScheduleAgregateur
Parent: FrSchedule
Id: FrScheduleAgregateur
Description: "Profil de Schedule, dérivé de FrSchedule, pour le service d'aggrégation de créneaux de la plateforeme SAS (Service d'accès aux soins)"
* ^url = "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
* ^version = "1.0"
* ^date = "2021-06-14"
* ^publisher = "ANS"
* actor only Reference($FrPractitionerRoleExerciceAgregateur or FrPractitionerAgregateur)
* actor ^type.aggregation[0] = #referenced
* actor ^type.aggregation[+] = #bundled