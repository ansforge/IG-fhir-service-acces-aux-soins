
Instance: ExampleSlotPSIndiv1
InstanceOf: FrSlotAgregateur
Description: "Exemple 1 ressource slot PS indiv"
Usage: #example

* meta.security = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#PUBLIC
* serviceType[+].coding = $v3-ActCode#AMB
* serviceType[+].coding = $v3-ActCode#VR
* serviceType[+].text = "Visite de contrôle"
* specialty[+].coding = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM54
* specialty[+].coding = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM05
* specialty[+].text = "Médecine générale (polyvalente)"
* appointmentType[+].coding = $v2-0276#ROUTINE
* schedule = Reference(ExampleSchedule1)
* start = "2021-11-05T09:00:00.000+00:00"
* end = "2021-11-05T09:30:00.000+00:00"
* comment = "https://exemple.com/rdv/com/"