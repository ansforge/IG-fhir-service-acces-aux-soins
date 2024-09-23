Instance: slot-sp-start
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* name = "SPDateDebutSlot"
* description = "Paramètre de recherche date de début d'un créneau (date de début supérieure ou égale à <date1> et inférieure ou égale à <date2>)"
* code = #start
* base = #Slot
* type = #date
* expression = "Slot.start"
* xpath = "f:Slot/f:start"
* xpathUsage = #normal
* multipleOr = false
* multipleAnd = true
* comparator[0] = #ge
* comparator[+] = #le