Instance: cptsslot-sp-servicetype
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* name = "SP CPTS"
* description = "Paramètre de recherche pour récupérer les Healthcare Service"
* code = #service-type-reference
* base = #Slot
* type = #reference
* expression = "serviceType.extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType').value"