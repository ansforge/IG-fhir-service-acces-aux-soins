# CPTS - Service d'Accès aux Soins v1.2.0

## CPTS

Liste des ressources (profils, paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage CPTS

| | | |
| :--- | :--- | :--- |
| Identifiant | Type | Description |
| [cptsslot-sp-servicetype](SearchParameter-cptsslot-sp-servicetype.md) | SearchParameter | Paramètre de recherche sur le service type qui mime le paramètre R5. Permet de rechercher ou d'inclure la ressource reférencée HealthCare Service |
| [sas-cpts-bundle-aggregator](StructureDefinition-sas-cpts-bundle-aggregator.md) | StructureDefinition | Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - Cas d'usage CPTS |
| [sas-cpts-healthcareservice-aggregator](StructureDefinition-sas-cpts-healthcareservice-aggregator.md) | StructureDefinition | Profil dérivé de FrHealthcareService pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS |
| [sas-cpts-organization-aggregator](StructureDefinition-sas-cpts-organization-aggregator.md) | StructureDefinition | Profil dérivé de FrOrganization pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS |
| [sas-cpts-slot-aggregator](StructureDefinition-sas-cpts-slot-aggregator.md) | StructureDefinition | Profil de Slot, dérivé de FrSlot, pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS |
| [sas-cpts-slot-servicetype-aggregator](StructureDefinition-sas-cpts-slot-servicetype-aggregator.md) | StructureDefinition | Extension créée afin de permettre la reference à la ressource HealthcareService. Cette extension implemente l'élément serviceType de R5 https://hl7.org/fhir/slot-definitions.html#Slot.serviceType |
| [sas-cpts-valueset-typecreneau](ValueSet-sas-cpts-valueset-typecreneau.md) | ValueSet | Type de Créneaux SAS CPTS |

