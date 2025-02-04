Profile: BundleAgregateur
Parent: Bundle
Id: sas-bundle-aggregator
Description: "Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS [Cas d'usage PS Indiv]"

* type = #searchset
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    FrSlotAgregateur 0..* and
    FrScheduleAgregateur 0..* and
    FrPractitionerAgregateur 0..* and
    FrPractitionerRoleExerciceAgregateur 0..*
* entry[FrSlotAgregateur].resource only FrSlotAgregateur
* entry[FrScheduleAgregateur].resource only FrScheduleAgregateur
* entry[FrPractitionerAgregateur].resource only FrPractitionerAgregateur
* entry[FrPractitionerRoleExerciceAgregateur].resource only FrPractitionerRoleExerciceAgregateur