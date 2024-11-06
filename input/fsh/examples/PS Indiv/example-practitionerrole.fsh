
Instance: ExamplePractitionerRoleAgregateur
InstanceOf: FrPractitionerRoleExerciceAgregateur
Description: "Exemple 1 PractitionerRole flux agrégateur"
Usage: #example

* contained[+] = ExampleLocation
* practitioner = Reference(ExamplePractitioner)

* organization.identifier.value = "412345678912345"
 
* location = Reference(ExampleLocation)

* telecom.system = #phone
* telecom.value =  "+33561855977"
