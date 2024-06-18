Instance: cptsslot-sp-servicetype
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* name = "SP Service Type CPTS"
* description = "Paramètre de recherche sur le service type qui mime le paramètre R5. Permet de rechercher ou d'inclure la ressource reférencée HealthCare Service"
* code = #service-type-reference
* base = #Slot
* type = #reference
* expression = "serviceType.extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType').value"