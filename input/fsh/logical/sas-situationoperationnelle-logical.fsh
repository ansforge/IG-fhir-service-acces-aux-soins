Logical: SituationOperationnelle
Id: sas-situationoperationnelle-logical
Title: "Situation opérationnelle"
Description: "Modélisation de la situation opérationnelle d'un médecin"
* identifiant 1..1 Identifier "Identifiant de la situation opérationnelle"
* effecteur 1..1 Reference(Effecteur) "Effecteur de soins rattaché au RDV"
* organisation 0..1 Reference(Organisation) "Structure de soins (organisation) rattachée au RDV"

