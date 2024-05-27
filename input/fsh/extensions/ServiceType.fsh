Extension: SASServiceType-R5
Id: sas-cpts-slot-servicetype-aggregator
Description: "Test extension R5"
* ^context.type = #element
* ^context.expression = "FrSlotAgregateurCPTS.serviceType"

* extension contains
    concept 0..1 and
    reference 0..1
* extension[concept].value[x] only CodeableConcept
* extension[reference].value[x] only Reference
