Extension: CategorieOrientation
Id: sas-categorie-orientation
Description: "Extension créée afin pour ajouter la catégorie d'orientation dans un RDV"
* ^context.type = #element
* ^context.expression = "Appointment"

* value[x] only code
* valueCode from categorie-orientation-sas-valueset (required)
