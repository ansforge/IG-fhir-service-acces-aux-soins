Logical: RDV
Id: sas-rdv-logical
Title: "RDV"
Description: "Modélisation d'un RDV"
* identifiant 1..1 identifier "Identifiant du RDV"
* cleechange 0..1 string "Référence identifiant application tierce"
* typerdv 0..1 CodeableConcept "Type d'orientation"
* sourcerdv 0..1 code "Origine du RDV"
* debut 1..1 date "Date début RDV"
* fin 1..1 date "Date fin RDV"
* creation 0..1 date "Date de création du RDV"
* specialite 1..1 CodeableConcept "Spécialité du médecin effecteur"
* participant 1..1 Reference "Référence au participant du RDV"
  * status 1..1 code "Statut d'acceptation du participant"