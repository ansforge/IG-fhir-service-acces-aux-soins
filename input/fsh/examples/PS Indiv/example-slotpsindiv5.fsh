
Instance: ExampleSlotPSIndiv5
InstanceOf: FrSlotAgregateur
Description: "Exemple 5 ressource slot PS indiv"
Usage: #example

* meta.security = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#PRO
* serviceType[+].coding = $v3-ActCode#AMB
* serviceType[+].text = "Visite urgente"
* specialty[+].coding = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM54
* specialty[+].text = "Médecine générale"
* appointmentType[+].coding = $v2-0276#WALKIN
* schedule = Reference(ExampleSchedule2)
* start = "2021-11-05T11:00:00.000+00:00"
* end = "2021-11-05T11:30:00.000+00:00"