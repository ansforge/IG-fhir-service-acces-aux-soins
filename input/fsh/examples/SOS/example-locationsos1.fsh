
Instance: ExampleLocationSOS1
InstanceOf: FrLocationAgregateurSOS
Description: "Exemple 1 location flux agrégateur sos"
Usage: #example

* id = "1111111111"
* identifier.system = "https://editeur.com"
* identifier.value = "1111111111"
* name = "Centre de consultation Rennes Nord"
* telecom[0].system =  #phone
* telecom[0].value = "+33193246789"
* address.line = "320 avenue Général Georges Patton"
* address.postalCode = "35700"
* address.city = "RENNES"
* managingOrganization = Reference(ExampleOrgaSOS1)
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #wed
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.daysOfWeek[+] = #fri
* hoursOfOperation.daysOfWeek[+] = #sat
* hoursOfOperation.daysOfWeek[+] = #sun
* hoursOfOperation.openingTime = "08:00:00"
* hoursOfOperation.closingTime = "19:00:00"