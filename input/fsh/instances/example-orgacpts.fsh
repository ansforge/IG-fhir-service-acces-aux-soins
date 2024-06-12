Instance: ExampleOrgaCPTS
InstanceOf: FrOrganizationAgregateurCPTS
Description: "Exemple d'organisation CPTS"
Usage: #example

* meta.profile[+]= "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator"
* identifier[+].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[+].value = "1950047225"
* name = "CPTS AXE MAJEUR"
* telecom[+].system = "phone"
* telecom[+].value = "+33102030405"
