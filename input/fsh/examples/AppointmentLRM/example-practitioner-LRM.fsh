
Instance: ExamplePractitionerLRM
InstanceOf: SASPractitionerLRM
Description: "Exemple practitioner flux LRM"
Usage: #example

* identifier[idNatPs].value = "810002909371"
* name.family = "Dupont"
* name.given = "Jean"
* extension[specialty].valueCoding = $TRE_R38#SM54
* qualification[exercicePro].code.coding[profession] = https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante#10