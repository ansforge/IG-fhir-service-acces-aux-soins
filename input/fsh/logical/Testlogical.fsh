Logical: RDV
Id: sas-rdv-logical
Description: "Modélisation appointment"

* identifier 1..1 Identifier "Identifiant du RDV"
* specialite 1..1 CodeableConcept "Spécialité du RDV"
* début 1..1 Date "Date début RDV"
* fin 1..1 Date "Date fin RDV"
* création 1..1 Date "Date de création du RDV"