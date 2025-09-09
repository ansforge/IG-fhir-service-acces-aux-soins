
Instance: ExampleBundleAgregateurSOS
InstanceOf: BundleAgregateurSOS
Description: "Exemple Bundle SOS"
Usage: #example


* total = 4

* link.relation =  #self
* link.url = "https://editeur.fr/Schedule?_revinclude=Slot:schedule&_include=Schedule:actor:Location&_include:iterate=Location:organization&_has:Slot:schedule:start=ge2023-08-18T09:00:00+02:00&_has:Slot:schedule:start=le2023-08-20T08:00:00+02:00&_has:Slot:schedule:status=free&actor:Location.organization.identifier=urn:oid:1.2.250.1.71.4.2.2%7C334173748400020,urn:oid:1.2.250.1.71.4.2.2%7C392080466300010&_count=1000"

* entry[slotAgregateurSOS][+].resource = ExampleSlotSOS1
* entry[slotAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Slot/ExampleSlotSOS1"
* entry[slotAgregateurSOS][=].search.mode = #include

* entry[scheduleAgregateurSOS][+].resource = ExampleScheduleSOS1
* entry[scheduleAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Schedule/ExampleScheduleSOS1"
* entry[scheduleAgregateurSOS][=].search.mode = #match

* entry[locationAgregateurSOS][+].resource = ExampleLocationSOS1
* entry[locationAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Location/1111111111"
* entry[locationAgregateurSOS][=].search.mode = #include

* entry[organizationAgregateurSOS][+].resource = ExampleOrgaSOS1
* entry[organizationAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Organization/ExampleOrgaSOS1"
* entry[organizationAgregateurSOS][=].search.mode = #include

* entry[slotAgregateurSOS][+].resource = ExampleSlotSOS2
* entry[slotAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Slot/ExampleSlotSOS2"
* entry[slotAgregateurSOS][=].search.mode = #include

* entry[scheduleAgregateurSOS][+].resource = ExampleScheduleSOS2
* entry[scheduleAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Schedule/ExampleScheduleSOS2"
* entry[scheduleAgregateurSOS][=].search.mode = #match

* entry[locationAgregateurSOS][+].resource = ExampleLocationSOS2
* entry[locationAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Location/2222222222"
* entry[slotAgregateurSOS][=].search.mode = #include

* entry[slotAgregateurSOS][+].resource = ExampleSlotSOS3
* entry[slotAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Slot/ExampleSlotSOS3"
* entry[slotAgregateurSOS][=].search.mode = #include

* entry[scheduleAgregateurSOS][+].resource = ExampleScheduleSOS3
* entry[scheduleAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Schedule/ExampleScheduleSOS3"
* entry[scheduleAgregateurSOS][=].search.mode = #match

* entry[locationAgregateurSOS][+].resource = ExampleLocationSOS3
* entry[locationAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Location/3333333333"
* entry[locationAgregateurSOS][=].search.mode = #include

* entry[organizationAgregateurSOS][+].resource = ExampleOrgaSOS2
* entry[organizationAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Organization/ExampleOrgaSOS2"
* entry[organizationAgregateurSOS][=].search.mode = #include

* entry[slotAgregateurSOS][+].resource = ExampleSlotSOS4
* entry[slotAgregateurSOS][=].fullUrl = "https://exemple.com/ans-sas/Slot/ExampleSlotSOS4"
* entry[slotAgregateurSOS][=].search.mode = #include
