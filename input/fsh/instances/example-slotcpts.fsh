Instance: ExampleSlotCPTS
InstanceOf: FrSlotAgregateurCPTS
Description: "Exemple ressource slot CPTS"
Usage: #example

* serviceType[0].coding = $v3-ActCode#AMB
* serviceType[1].coding = https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/TRE_R66-CategorieEtablissement#604
* serviceType[1].extension.valueReference = { "HealthcareService/ExampleHealthcareServiceCPTS" }
* schedule = {"reference": "Schedule/1234"}
* start = "2024-06-12T16:40:00.000+02:00"
* end = "2024-06-12T17:00:00.000+02:00"
