# Ressources par cas d'usage - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* **Ressources par cas d'usage**

## Ressources par cas d'usage

Liste des ressources à utiliser par cas d'usage

### PS à titre individuel

Liste des ressources (profils, paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage PS à titre individuel (y compris les ressources communes aux autres cas d'usage)

| | | |
| :--- | :--- | :--- |
| Identifiant | Type | Description |
| [slot-sp-start](SearchParameter-slot-sp-start.md) | SearchParameter | Paramètre de recherche date de début d'un créneau (date de début supérieure ou égale à <date1> et inférieure ou égale à <date2>) |
| [BundleAgregateur](StructureDefinition-BundleAgregateur.md) | StructureDefinition | Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - Cas d'usage PS Indiv |
| [FrAppointmentSAS](StructureDefinition-FrAppointmentSAS.md) | StructureDefinition | Profil de Appointment, dérivé de FrAppointment, pour le cas d'usage prise de RDV de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrLocationAgregateur](StructureDefinition-FrLocationAgregateur.md) | StructureDefinition | Profil de Location, dérivé de FrLocation, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrPractitionerAgregateur](StructureDefinition-FrPractitionerAgregateur.md) | StructureDefinition | Profil de Practitioner, dérivé de FrPractitioner, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrPractitionerRegul](StructureDefinition-FrPractitionerRegul.md) | StructureDefinition | Profil de Practitioner, dérivé de FrPractitioner, pour la gestion des comptes régulateurs de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md) | StructureDefinition | Profil de PractitionerRole, dérivé de FrPractitionerRoleExercice, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md) | StructureDefinition | Profil de Schedule, dérivé de FrSchedule, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md) | StructureDefinition | Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [sas-categorie-orientation](StructureDefinition-sas-categorie-orientation.md) | StructureDefinition | Extension créée afin d'ajouter la catégorie d'orientation dans un RDV |
| [categorie-orientation-sas-valueset](ValueSet-categorie-orientation-sas-valueset.md) | ValueSet | Valueset permettant de définir la catégorie d'orientation SAS. Il regroupe des codes de la TRE-R66 et du codesystem catégorie orientation SAS |
| [sas-valueset-appointmentparticipanttype](ValueSet-sas-valueset-appointmentparticipanttype.md) | ValueSet | Type de participant du RDV SAS |
| [sas-valueset-appointmentreason](ValueSet-sas-valueset-appointmentreason.md) | ValueSet | Appointment reason SAS |
| [sas-valueset-categorieetablissement](ValueSet-sas-valueset-categorieetablissement.md) | ValueSet | Catégorie d'établissement utilisée dans contexte SAS - CPTS dans un premier temps |
| [sas-valueset-typeconsultation](ValueSet-sas-valueset-typeconsultation.md) | ValueSet | Type de consultations SAS |
| [sas-valueset-typeidentifiant](ValueSet-sas-valueset-typeidentifiant.md) | ValueSet | Type d'identifiant SAS |

### CPTS

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

### SOS Médecins

Liste des ressources (profils, paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage SOS Médecins

| | | |
| :--- | :--- | :--- |
| Identifiant | Type | Description |
| [SAS-Consommateur-SOS](CapabilityStatement-SAS-Consommateur-SOS.md) | CapabilityStatement | Un consommateur consulte les créneaux SOS mis à disposition par un gestionnaire d’agenda. La platefome numérique SAS joue le rôle de consommateur et affiche les créneaux récupérés |
| [SAS-GestionnaireAgenda-RDVSOS](CapabilityStatement-SAS-GestionnaireAgenda-RDVSOS.md) | CapabilityStatement | Un gestionnaire d'agenda reçoit des rendez-vous SOS envoyés par un déclarant de rendez-vous. La platefome numérique SAS joue le rôle de gestionnaire d'agenda et stocke les rendez-vous récupérés |
| [SAS-GestionnaireAgenda-SOS](CapabilityStatement-SAS-GestionnaireAgenda-SOS.md) | CapabilityStatement | Un gestionnaire d'agenda met à disposition d'un consommateur des créneaux de disponibilité. Cas d'usage SOS médecins |
| [sas-sos-appointment](StructureDefinition-sas-sos-appointment.md) | StructureDefinition | Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |
| [sas-sos-bundle-aggregator](StructureDefinition-sas-sos-bundle-aggregator.md) | StructureDefinition | Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |
| [sas-sos-location-aggregator](StructureDefinition-sas-sos-location-aggregator.md) | StructureDefinition | Profil de Location, dérivé de FrLocation, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |
| [sas-sos-organization-aggregator](StructureDefinition-sas-sos-organization-aggregator.md) | StructureDefinition | Profil d'Organization, dérivé de FrOrganization, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |
| [sas-sos-schedule-aggregator](StructureDefinition-sas-sos-schedule-aggregator.md) | StructureDefinition | Profil de Schedule, dérivé de FrSchedule, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |
| [sas-sos-slot-aggregator](StructureDefinition-sas-sos-slot-aggregator.md) | StructureDefinition | Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |
| [sas-sos-valueset-participant-status](ValueSet-sas-sos-valueset-participant-status.md) | ValueSet | Statut du participant RDV SAS SOS |
| [sas-sos-valueset-typecreneau](ValueSet-sas-sos-valueset-typecreneau.md) | ValueSet | Type de Créneaux SAS SOS |

