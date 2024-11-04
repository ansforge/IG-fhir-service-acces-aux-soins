
Instance: ExampleSlotSOS4
InstanceOf: FrSlotAgregateurSOS
Description: "Exemple 4 ressource slot sos"
Usage: #example

* meta.security[+] = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#PUBLIC
* serviceType[+].coding = $v3-ActCode#AMB
* appointmentType[+].coding = $v2-0276#ROUTINE
* schedule = Reference(ExampleScheduleSOS3)
* start = "2023-08-18T14:40:00.000+02:00"
* end = "2023-08-18T15:00:00.000+02:00"
* comment = "http://www.editeur.com/agenda-pfg/creneau4"
