
Instance: ExampleSlotCPTS1
InstanceOf: FrSlotAgregateurCPTS
Description: "Exemple ressource slot CPTS - une CPTS"
Usage: #example

* meta.security[+] = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#PUBLIC
* meta.security[+] = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#CPTS
* serviceType[0].coding = $v3-ActCode#AMB
* serviceType[0].text = "Visite de contrôle"
* serviceType[1].coding = https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/TRE_R66-CategorieEtablissement#604
* serviceType[1].extension[sas-servicetype-r5].valueReference = Reference(ExampleHealthcareServiceCPTS)
* specialty[+].coding = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM54
* appointmentType[+].coding = $v2-0276#ROUTINE
* schedule = Reference(ExampleSchedule)
* start = "2024-06-12T16:40:00.000+02:00"
* end = "2024-06-12T17:00:00.000+02:00"
* comment = "https://exemple.com/rdv/com/"