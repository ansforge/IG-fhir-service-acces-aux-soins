
Instance: ExampleBundlePSIndiv
InstanceOf: BundleAgregateur
Description: "Exemple Bundle PS indiv"
Usage: #example


* total = 4

* link.relation =  #self
* link.url = "https://exemple.com/ans-sas/Slot/?_include=Slot:schedule&_include:iterate=Schedule:actor&status=free&start=ge2021-11-04T14:19:35.760+00:00&start=le2021-11-06T23:59:59.999+00:00&schedule.actor:Practitioner.identifier=urn:oid:1.2.250.1.71.4.2.1%7C810002673899,urn:oid:1.2.250.1.71.4.2.1%7C810100050075&_count=1000"

* entry[FrSlotAgregateur][+].resource = ExampleSlotPSIndiv1
* entry[FrSlotAgregateur][=].fullUrl = "https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv1"
* entry[FrSlotAgregateur][=].search.mode = #match

* entry[FrScheduleAgregateur][+].resource = ExampleSchedule1
* entry[FrScheduleAgregateur][=].fullUrl = "https://exemple.com/ans-sas/Schedule/ExampleSchedule1"
* entry[FrScheduleAgregateur][=].search.mode = #include

* entry[FrPractitionerAgregateur][+].resource = ExamplePractitioner2
* entry[FrPractitionerAgregateur][=].fullUrl = "https://exemple.com/ans-sas/Practitioner/ExamplePractitioner2"
* entry[FrPractitionerAgregateur][=].search.mode = #include

* entry[FrPractitionerRoleExerciceAgregateur][+].resource = ExamplePractitionerRoleAgregateur2
* entry[FrPractitionerRoleExerciceAgregateur][=].fullUrl = "https://exemple.com/ans-sas/PractitionerRole/ExamplePractitionerRoleAgregateur2"
* entry[FrPractitionerRoleExerciceAgregateur][=].search.mode = #include

* entry[FrSlotAgregateur][+].resource = ExampleSlotPSIndiv2
* entry[FrSlotAgregateur][=].fullUrl = "https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv2"
* entry[FrSlotAgregateur][=].search.mode = #match

* entry[FrScheduleAgregateur][+].resource = ExampleSchedule2
* entry[FrScheduleAgregateur][=].fullUrl = "https://exemple.com/ans-sas/Schedule/ExampleSchedule2"
* entry[FrScheduleAgregateur][=].search.mode = #include

* entry[FrPractitionerRoleExerciceAgregateur][+].resource = ExamplePractitionerRoleAgregateur3
* entry[FrPractitionerRoleExerciceAgregateur][=].fullUrl = "https://exemple.com/ans-sas/PractitionerRole/ExamplePractitionerRoleAgregateur3"
* entry[FrPractitionerRoleExerciceAgregateur][=].search.mode = #include

* entry[FrSlotAgregateur][+].resource = ExampleSlotPSIndiv3
* entry[FrSlotAgregateur][=].fullUrl = "https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv3"
* entry[FrSlotAgregateur][=].search.mode = #match

* entry[FrScheduleAgregateur][+].resource = ExampleSchedule3
* entry[FrScheduleAgregateur][=].fullUrl = "https://exemple.com/ans-sas/Schedule/ExampleSchedule3"
* entry[FrScheduleAgregateur][=].search.mode = #include

* entry[FrPractitionerAgregateur][+].resource = ExamplePractitioner3
* entry[FrPractitionerAgregateur][=].fullUrl = "https://exemple.com/ans-sas/Practitioner/ExamplePractitioner3"
* entry[FrPractitionerAgregateur][=].search.mode = #include

* entry[FrPractitionerRoleExerciceAgregateur][+].resource = ExamplePractitionerRoleAgregateur4
* entry[FrPractitionerRoleExerciceAgregateur][=].fullUrl = "https://exemple.com/ans-sas/PractitionerRole/ExamplePractitionerRoleAgregateur4"
* entry[FrPractitionerRoleExerciceAgregateur][=].search.mode = #include

* entry[FrSlotAgregateur][+].resource = ExampleSlotPSIndiv4
* entry[FrSlotAgregateur][=].fullUrl = "https://exemple.com/ans-sas/Slot/ExampleSlotPSIndiv4"
* entry[FrSlotAgregateur][=].search.mode = #match
