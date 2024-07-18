
Instance: ExampleSlotPSIndiv3
InstanceOf: FrSlotAgregateur
Description: "Exemple 3 ressource slot PS indiv"
Usage: #example

* meta.security[+] = $JDV-J165-TypeCreneau-SAS#PUBLIC
* meta.security[+] = $JDV-J165-TypeCreneau-SAS#PRO
* serviceType[+].coding = $v3-ActCode#VR
* serviceType[+].text = "Visite de contrôle"
* serviceType[+].text = "Consultation de suivi pneumologie"
* specialty[+].text = "Pneumologie"
* appointmentType[+].coding = $v2-0276#ROUTINE
* schedule = Reference(ExampleSchedule3)
* start = "2021-11-04T14:20:00.000+00:00"
* end = "2021-11-04T14:40:00.000+00:00"
* comment = "https://exemple.com/rdv/com/"