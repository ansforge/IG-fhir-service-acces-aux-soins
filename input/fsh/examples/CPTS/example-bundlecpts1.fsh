
Instance: ExampleBundleCPTS1
InstanceOf: BundleAgregateurCPTS
Description: "Exemple Bundle CPTS 1"
Usage: #example

* total = 1

* link.relation =  #self
* link.url = "http://hapi.fhir.org/baseR4/Slot?_include=Slot:schedule&_include:iterate=Schedule:actor&start=ge2024-06-12T16:20:00.000+02:00&start=le2024-06-12T17:20:00.000+02:00&schedule.actor:Practitioner.identifier=urn:oid:1.2.250.1.71.4.2.1|810002909371&status=free&_include=Slot:service-type-reference"

* entry[slotAgregateurCPTS].resource = ExampleSlotCPTS1
* entry[slotAgregateurCPTS].fullUrl = "https://<base_URl>/Slot/ExampleSlotCPTS1"
* entry[slotAgregateurCPTS][=].search.mode = #match

* entry[scheduleAgregateurCPTS].resource = ExampleSchedule
* entry[scheduleAgregateurCPTS].fullUrl = "https://<base_URl>/Schedule/ExampleSchedule"
* entry[scheduleAgregateurCPTS][=].search.mode = #include

* entry[practitionerAgregateur].resource = ExamplePractitioner
* entry[practitionerAgregateur].fullUrl = "https://<base_URl>/Practitioner/ExamplePractitioner"
* entry[practitionerAgregateur][=].search.mode = #include

* entry[practitionerRole].resource = ExamplePractitionerRoleAgregateur
* entry[practitionerRole].fullUrl = "https://<base_URl>/PractitionerRole/ExamplePractitionerRoleAgregateur"
* entry[practitionerRole][=].search.mode = #include

* entry[healthcareserviceCPTS].resource = ExampleHealthcareServiceCPTS1
* entry[healthcareserviceCPTS].fullUrl = "https://<base_URl>/HealthcareService/ExampleHealthcareServiceCPTS1"
* entry[healthcareserviceCPTS][=].search.mode = #include

* entry[organizationAgregateurCPTS].resource = ExampleOrgaCPTS1
* entry[organizationAgregateurCPTS].fullUrl = "https://<base_URl>/Organization/ExampleOrgaCPTS1"
* entry[organizationAgregateurCPTS][=].search.mode = #include
