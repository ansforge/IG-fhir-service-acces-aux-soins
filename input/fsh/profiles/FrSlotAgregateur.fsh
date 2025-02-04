Profile: FrSlotAgregateur
Parent: fr-core-slot
Id: sas-slot-aggregator
Description: "Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS [Commun cas d'usage PS Indiv et CPTS]"

* meta.profile contains sas-slot-aggregator 0..1
* meta.profile[sas-slot-aggregator] = Canonical(sas-slot-aggregator)

* meta.security from $JDV-J165-TypeCreneau-SAS (required)
* meta.security ^binding.description = "type de créneau : public, pro, SNP"

* serviceType ^slicing.discriminator.type = #value
* serviceType ^slicing.discriminator.path = "coding.system"
* serviceType ^slicing.rules = #open
* serviceType contains TypeConsultation 0..*
* serviceType[TypeConsultation] from sas-valueset-typeconsultation (required)
* serviceType[TypeConsultation].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
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