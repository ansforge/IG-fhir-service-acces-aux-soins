Profile: FrSlotAgregateur
Parent: fr-core-slot
Id: sas-slot-aggregator
Description: "Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS [Commun cas d'usage PS Indiv et CPTS]"

* meta.profile contains sas-slot-aggregator 0..1
* meta.profile[sas-slot-aggregator] = Canonical(sas-slot-aggregator)

* meta.security from $JDV-J165-TypeCreneau-SAS (required)
* meta.security ^binding.description = "type de créneau : public, pro, SNP"

* serviceType ^slicing.discriminator.type = #exists
* serviceType ^slicing.discriminator.path = "coding"
* serviceType ^slicing.rules = #closed
* serviceType contains TypeConsultation 0..3 and motifConsultation 0..*

* serviceType[TypeConsultation].coding 1..1 
* serviceType[TypeConsultation] from sas-valueset-typeconsultation (required)
* serviceType[TypeConsultation] ^short = "Slicing type de consultation structuré (au cabinet, à domicile, téléconsultation)"

* serviceType[motifConsultation].coding 0..0
* serviceType[motifConsultation] ^short = "Slicing type de consulatation pour motif en texte libre"
* serviceType[motifConsultation].text 1..1

* specialty ^binding.strength = #required
* specialty ^binding.description = "Spécialités ou compétences particulières du PS associées au créneau"
* appointmentType ^short = "Créneau avec ou sans RDV"
* appointmentType ^binding.strength = #preferred
* appointmentType ^binding.description = "ROUTINE – Créneau avec prise de RDV possible, WALKIN – Créneau sans prise de RDV possible"
* appointmentType.coding from sas-valueset-appointmentreason (required)
* schedule only Reference(FrScheduleAgregateur)
* schedule ^type.aggregation[0] = #referenced
* schedule ^type.aggregation[+] = #bundled
* status = #free
* status ^binding.strength = #required
* status ^binding.description = "Statut du créneau free/busy"
* start ^short = "Date de début du créneau"
* start ^definition = "Date de début du créneau"
* end ^short = "Date de fin du créneau"
* end ^definition = "Date de fin du créneau"
* comment ^short = "URL permettant d’accéder à la prise de RDV relative à ce créneau"
* comment ^definition = "URL permettant d’accéder à la prise de RDV relative à ce créneau"