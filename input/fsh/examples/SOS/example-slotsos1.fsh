
Instance: ExampleSlotSOS1
InstanceOf: FrSlotAgregateurSOS
Description: "Exemple 1 ressource slot sos"
Usage: #example

* meta.security[+] = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#PUBLIC
* meta.security[+] = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#SNP
* serviceType[+].coding = $v3-ActCode#AMB
* serviceType[+].coding = $v3-ActCode#VR
* appointmentType[+].coding = $v2-0276#ROUTINE
* schedule = Reference(ExampleScheduleSOS1)
* start = "2023-08-18T09:00:00.000+02:00"
* end = "2023-08-18T09:30:00.000+02:00"
* comment = "http://www.editeur.com/agenda-pfg/creneau1"