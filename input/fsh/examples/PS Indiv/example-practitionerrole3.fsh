
Instance: ExamplePractitionerRoleAgregateur3
InstanceOf: FrPractitionerRoleExerciceAgregateur
Description: "Exemple 3 PractitionerRole flux agrégateur"
Usage: #example

* contained[+] = ExampleLocation2
* practitioner = Reference(ExamplePractitioner2)


* organization.identifier.type = $fr-v2-0203#IDNST
* organization.identifier.system = "urn:oid:1.2.250.1.71.4.2.2"
* organization.identifier.value = "1810004956"
 
* location = Reference(ExampleLocation2)

