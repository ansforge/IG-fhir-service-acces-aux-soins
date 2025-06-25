Logical: RDV
Id: sas-rdv-logical
Description: "Modélisation appointment"

* kind = #logical
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization"

* identifier 1..1 Identifier "Identifiant du RDV"
* specialité 1..1 CodeableConcept "Spécilaité du RDV"
* début 1..1 Date "Date début RDV"
* fin 1..1 Date "Date fin RDV"
* création 1..1 Date "Date de création du RDV"