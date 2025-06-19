
Instance: ExampleSlotPSIndiv4
InstanceOf: FrSlotAgregateur
Description: "Exemple 4 ressource slot PS indiv"
Usage: #example

* meta.security[+] = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#PUBLIC
* meta.security[+] = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#PRO
* serviceType[TypeConsultation][+].coding = $v3-ActCode#HH
* serviceType[motifConsultation][+].text = "Visite de contrôle"
* serviceType[motifConsultation][+].text = "Consultation de suivi pneumologique"
* specialty[+].coding = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM41
* specialty[+].coding = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM54
* appointmentType[+].coding = $v2-0276#ROUTINE
* schedule = Reference(ExampleSchedule3)
* start = "2021-11-04T14:40:00.000+00:00"
* end = "2021-11-04T15:00:00.000+00:00"
* comment = "https://exemple.com/rdv/com/"