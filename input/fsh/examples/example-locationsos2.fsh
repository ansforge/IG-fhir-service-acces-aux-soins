
Instance: ExampleLocationSOS2
InstanceOf: FrLocationAgregateurSOS
Description: "Exemple 2 location flux agrégateur sos"
Usage: #example

* id = "22222222222"
* identifier.system = "https://editeur.com"
* identifier.value = "22222222222"
* name = "Centre de consultation Rennes Cleunay"
* telecom[0].system =  #phone
* telecom[0].value = "+33145249912"
* address.line = "106 rue Eugène Pottier"
* address.postalCode = "35000"
* address.city = "RENNES"
* managingOrganization = Reference(ExampleOrgaSOS1)
* hoursOfOperation.daysOfWeek[+] = #mon
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #wed
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.openingTime = "09:00:00"
* hoursOfOperation.closingTime = "21:00:00"