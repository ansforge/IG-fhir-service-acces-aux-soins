
Instance: ExamplePractitionerRegul1
InstanceOf: FrPractitionerRegul
Description: "Exemple 1 practitioner flux régulateur"
Usage: #example

* meta.profile = "http://interopsante.org/fhir/StructureDefinition/FrPractitioner"
* meta.source = "urn:oid:1.2.250.1.213.3.6"

* identifier.type = $fr-v2-0203#IDNPS
* identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* identifier.value = "3456780581/11242343"

* active = true
* name.family = "Loridon"
* name.given = "Sébastien"
* telecom.value = "sebastien.loridon@test.com"