
Instance: ExampleLocationSOS3
InstanceOf: FrLocationAgregateurSOS
Description: "Exemple 3 location flux agrégateur sos"
Usage: #example

* id = "3333333333"
* identifier.system = "https://editeur.com"
* identifier.value = "3333333333"
* name = "Centre de consultation Lorient"
* telecom[0].system =  #phone
* telecom[0].value = "+33139555992"
* address.line = "12 impasse Royer Dubail"
* address.postalCode = "56100"
* address.city = "LORIENT"
* managingOrganization = Reference(ExampleOrgaSOS2)
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.daysOfWeek[+] = #sat
* hoursOfOperation.openingTime = "11:00:00"
* hoursOfOperation.closingTime = "18:00:00"