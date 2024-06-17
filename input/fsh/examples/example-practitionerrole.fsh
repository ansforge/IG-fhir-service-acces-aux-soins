
Instance: ExamplePractitionerRoleAgregateur
InstanceOf: FrPractitionerRoleExerciceAgregateur
Description: "Exemple PractitionerRole flux agrégateur"
Usage: #example

* contained[+] = ExampleLocation
* practitioner = Reference(ExamplePractitioner)

* organization.identifier.value = "412345678912345"
 
 location = "#ExampleLocation"

* telecom.system = #phone
* telecom.value =  "+33561855977"
