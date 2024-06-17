
Instance: ExamplePractitionerRole
InstanceOf: FrPractitionerRoleAgregateur
Description: "Exemple PractitionerRole flux agrégateur"
Usage: #example

* contained[+] = ExampleLocation
* practitioner = Reference(ExamplePractitioner)

* organization.identifier.value = "412345678912345"
 
 //location 

* telecom.system = #phone
* telecom.value =  "+33561855977"
