
Instance: ExampleSlotCPTS2
InstanceOf: FrSlotAgregateurCPTS
Description: "Exemple ressource slot CPTS - deux CPTS"
Usage: #example

* meta.security[+] = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#PUBLIC
* meta.security[+] = https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau#CPTS
* serviceType[0].coding = $v3-ActCode#AMB
* serviceType[1].coding = https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement#604
* serviceType[1].extension[sas-servicetype-r5].valueReference = Reference(ExampleHealthcareServiceCPTS1)
* serviceType[2].coding = https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement#604
* serviceType[2].extension[sas-servicetype-r5].valueReference = Reference(ExampleHealthcareServiceCPTS2)
* serviceType[0].text = "Visite de contrôle"
* specialty[+].coding = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM54
* appointmentType[+].coding = $v2-0276#ROUTINE
* schedule = Reference(ExampleSchedule)
* start = "2024-06-12T16:40:00.000+02:00"
* end = "2024-06-12T17:00:00.000+02:00"
* comment = "https://exemple.com/rdv/com/"