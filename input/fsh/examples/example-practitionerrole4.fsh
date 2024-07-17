
Instance: ExamplePractitionerRoleAgregateur4
InstanceOf: FrPractitionerRoleExerciceAgregateur
Description: "Exemple 4 PractitionerRole flux agrégateur"
Usage: #example

* contained[+] = ExampleLocation3
* practitioner = Reference(ExamplePractitioner3)


* organization.identifier.type = $fr-v2-0203#IDNST
* organization.identifier.system = "urn:oid:1.2.250.1.71.4.2.2"
* organization.identifier.value = "1810004421"
 
* location = Reference(ExampleLocation3)

