Extension: SASServiceTypeR5
Id: sas-cpts-slot-servicetype-aggregator
Description: "Extension créée afin de permettre la reference à la ressource HealthcareService. Cette extension implemente l'élément serviceType de R5 https://hl7.org/fhir/slot-definitions.html#Slot.serviceType"
* ^context.type = #element
* ^context.expression = "FrSlotAgregateurSOS.serviceType"
* ^url = $servicetype-r5

* value[x] only Reference(HealthcareService)