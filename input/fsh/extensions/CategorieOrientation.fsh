Extension: CategorieOrientation
Id: sas-categorie-orientation
Description: "Extension créée afin d'ajouter la catégorie d'orientation dans un RDV"
* ^context.type = #element
* ^context.expression = "Appointment"

* value[x] only CodeableConcept
* valueCodeableConcept from categorie-orientation-sas-valueset (required)
