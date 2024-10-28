
Instance: ExampleSlotSOS2
InstanceOf: FrSlotAgregateurSOS
Description: "Exemple 2 ressource slot sos"
Usage: #example

* meta.security[+] = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#PUBLIC
* serviceType[+].coding = $v3-ActCode#AMB
* appointmentType[+].coding = $v2-0276#ROUTINE
* schedule = Reference(ExampleScheduleSOS2)
* start = "2023-08-19T11:00:00.000+02:00"
* end = "2023-08-19T11:30:00.000+02:00"
* comment = "http://www.editeur.com/agenda-pfg/creneau2"