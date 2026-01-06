# Artifacts Summary - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [Profil SAS consommateur de créneaux](CapabilityStatement-SAS-Consommateur-psindiv.md) | Un consommateur consulte les créneaux ps indiv mis à disposition par un gestionnaire d’agenda. La platefome numérique SAS joue le rôle de consommateur et affiche les créneaux récupérés |
| [Profil SAS consommateur de créneaux CPTS](CapabilityStatement-SAS-Consommateur-CPTS.md) | Un consommateur consulte les créneaux CPTS mis à disposition par un gestionnaire d’agenda. La platefome numérique SAS joue le rôle de consommateur et affiche les créneaux récupérés |
| [Profil SAS consommateur de créneaux SOS](CapabilityStatement-SAS-Consommateur-SOS.md) | Un consommateur consulte les créneaux SOS mis à disposition par un gestionnaire d’agenda. La platefome numérique SAS joue le rôle de consommateur et affiche les créneaux récupérés |
| [Profil SAS gestionnaire d'agenda CPTS](CapabilityStatement-SAS-GestionnaireAgenda-CPTS.md) | Un gestionnaire d'agenda met à disposition d'un consommateur des créneaux de disponibilité. Cas d'usage CPTS |
| [Profil SAS gestionnaire d'agenda PS Indiv](CapabilityStatement-SAS-GestionnaireAgenda-PsIndiv.md) | Un gestionnaire d'agenda met à disposition d'un consommateur des créneaux de disponibilité. Cas d'usage PS à titre individuel |
| [Profil SAS gestionnaire d'agenda RDV SOS](CapabilityStatement-SAS-GestionnaireAgenda-RDVSOS.md) | Un gestionnaire d'agenda reçoit des rendez-vous SOS envoyés par un déclarant de rendez-vous. La platefome numérique SAS joue le rôle de gestionnaire d'agenda et stocke les rendez-vous récupérés |
| [Profil SAS gestionnaire d'agenda RDV ps indiv](CapabilityStatement-SAS-GestionnaireAgenda-RDVpsindiv.md) | Un gestionnaire d'agenda reçoit des rendez-vous ps indiv envoyés par un déclarant de rendez-vous. La platefome numérique SAS joue le rôle de gestionnaire d'agenda et stocke les rendez-vous récupérés |
| [Profil SAS gestionnaire d'agenda SOS](CapabilityStatement-SAS-GestionnaireAgenda-SOS.md) | Un gestionnaire d'agenda met à disposition d'un consommateur des créneaux de disponibilité. Cas d'usage SOS médecins |
| [Profil SAS gestionnaire de structure](CapabilityStatement-SAS-GestionnaireStructure.md) | Un gestionnaire de structure gère les ressources transmises par les déclarants de ressource |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [cptsslot-sp-servicetype](SearchParameter-cptsslot-sp-servicetype.md) | Paramètre de recherche sur le service type qui mime le paramètre R5. Permet de rechercher ou d'inclure la ressource reférencée HealthCare Service |
| [slot-sp-start](SearchParameter-slot-sp-start.md) | Paramètre de recherche date de début d'un créneau (date de début supérieure ou égale à <date1> et inférieure ou égale à <date2>) |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BundleAgregateur](StructureDefinition-BundleAgregateur.md) | Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - Cas d'usage PS Indiv |
| [BundleAgregateurCPTS](StructureDefinition-sas-cpts-bundle-aggregator.md) | Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - Cas d'usage CPTS |
| [BundleAgregateurSOS](StructureDefinition-sas-sos-bundle-aggregator.md) | Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d'agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |
| [FrAppointmentSAS](StructureDefinition-FrAppointmentSAS.md) | Profil de Appointment, dérivé de FrAppointment, pour le cas d'usage prise de RDV de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrAppointmentSASSOS](StructureDefinition-sas-sos-appointment.md) | Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |
| [FrHealthcareServiceAgregateurCPTS](StructureDefinition-sas-cpts-healthcareservice-aggregator.md) | Profil dérivé de FrHealthcareService pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS |
| [FrLocationAgregateur](StructureDefinition-FrLocationAgregateur.md) | Profil de Location, dérivé de FrLocation, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrLocationAgregateurSOS](StructureDefinition-sas-sos-location-aggregator.md) | Profil de Location, dérivé de FrLocation, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |
| [FrOrganizationAgregateurCPTS](StructureDefinition-sas-cpts-organization-aggregator.md) | Profil dérivé de FrOrganization pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS |
| [FrOrganizationAgregateurSOS](StructureDefinition-sas-sos-organization-aggregator.md) | Profil d'Organization, dérivé de FrOrganization, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |
| [FrPractitionerAgregateur](StructureDefinition-FrPractitionerAgregateur.md) | Profil de Practitioner, dérivé de FrPractitioner, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrPractitionerRegul](StructureDefinition-FrPractitionerRegul.md) | Profil de Practitioner, dérivé de FrPractitioner, pour la gestion des comptes régulateurs de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrPractitionerRoleExerciceAgregateur](StructureDefinition-FrPractitionerRoleExerciceAgregateur.md) | Profil de PractitionerRole, dérivé de FrPractitionerRoleExercice, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrScheduleAgregateur](StructureDefinition-FrScheduleAgregateur.md) | Profil de Schedule, dérivé de FrSchedule, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrScheduleAgregateurSOS](StructureDefinition-sas-sos-schedule-aggregator.md) | Profil de Schedule, dérivé de FrSchedule, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |
| [FrSlotAgregateur](StructureDefinition-FrSlotAgregateur.md) | Profil de Slot, dérivé de FrSlot, pour le service d'agrégation de créneaux de la plateforme SAS - Commun cas d'usage PS Indiv et CPTS |
| [FrSlotAgregateurCPTS](StructureDefinition-sas-cpts-slot-aggregator.md) | Profil de Slot, dérivé de FrSlot, pour le cas d'usage agrégateur de la plateforme SAS - cas d'usage CPTS |
| [FrSlotAgregateurSOS](StructureDefinition-sas-sos-slot-aggregator.md) | Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CategorieOrientation](StructureDefinition-sas-categorie-orientation.md) | Extension créée afin d'ajouter la catégorie d'orientation dans un RDV |
| [SASServiceTypeR5](StructureDefinition-sas-cpts-slot-servicetype-aggregator.md) | Extension créée afin de permettre la reference à la ressource HealthcareService. Cette extension implemente l'élément serviceType de R5 https://hl7.org/fhir/slot-definitions.html#Slot.serviceType |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Appointment Participant Type SAS](ValueSet-sas-valueset-appointmentparticipanttype.md) | Type de participant du RDV SAS |
| [Appointment reason SAS](ValueSet-sas-valueset-appointmentreason.md) | Appointment reason SAS |
| [Catégorie établissement SAS](ValueSet-sas-valueset-categorieetablissement.md) | Catégorie d'établissement utilisée dans contexte SAS - CPTS dans un premier temps |
| [Statut participant SAS SOS](ValueSet-sas-sos-valueset-participant-status.md) | Statut du participant RDV SAS SOS |
| [Type consultation SAS](ValueSet-sas-valueset-typeconsultation.md) | Type de consultations SAS |
| [Type créneaux SAS CPTS](ValueSet-sas-cpts-valueset-typecreneau.md) | Type de Créneaux SAS CPTS |
| [Type créneaux SAS SOS](ValueSet-sas-sos-valueset-typecreneau.md) | Type de Créneaux SAS SOS |
| [Type identifiant SAS](ValueSet-sas-valueset-typeidentifiant.md) | Type d'identifiant SAS |
| [Value set catégorie orientation SAS](ValueSet-categorie-orientation-sas-valueset.md) | Valueset permettant de définir la catégorie d'orientation SAS. Il regroupe des codes de la TRE-R66 et du codesystem catégorie orientation SAS |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Code système catégorie orientation SAS](CodeSystem-categorie-orientation-sas-codesystem.md) | Code système permettant de définir la catégorie d'orientation SAS spécifique qui n'est pas considéré comme un établissement de soins et qui permet de catégoriser l'orientation de soins |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ExampleAppointmentBooked](Appointment-1.md) | Exemple RDV PS indiv booked |
| [ExampleAppointmentCancelled](Appointment-2.md) | Exemple RDV PS indiv cancelled |
| [ExampleBundleAgregateurSOS](Bundle-ExampleBundleAgregateurSOS.md) | Exemple Bundle SOS |
| [ExampleBundleCPTS1](Bundle-ExampleBundleCPTS1.md) | Exemple Bundle CPTS 1 |
| [ExampleBundleCPTS2](Bundle-ExampleBundleCPTS2.md) | Exemple Bundle CPTS 2 |
| [ExampleBundlePSIndiv](Bundle-ExampleBundlePSIndiv.md) | Exemple Bundle PS indiv |
| [ExampleHealthcareServiceCPTS1](HealthcareService-ExampleHealthcareServiceCPTS1.md) | Exemple healthcare service CPTS 1 |
| [ExampleHealthcareServiceCPTS2](HealthcareService-ExampleHealthcareServiceCPTS2.md) | Exemple healthcare service CPTS 2 |
| [ExampleLocationSOS1](Location-1111111111.md) | Exemple 1 location flux agrégateur sos |
| [ExampleLocationSOS2](Location-2222222222.md) | Exemple 2 location flux agrégateur sos |
| [ExampleLocationSOS3](Location-3333333333.md) | Exemple 3 location flux agrégateur sos |
| [ExampleOrgaCPTS1](Organization-ExampleOrgaCPTS1.md) | Exemple d'organisation CPTS 1 |
| [ExampleOrgaCPTS2](Organization-ExampleOrgaCPTS2.md) | Exemple d'organisation CPTS 2 |
| [ExampleOrgaSOS1](Organization-ExampleOrgaSOS1.md) | Exemple d'organisation SOS 1 |
| [ExampleOrgaSOS2](Organization-ExampleOrgaSOS2.md) | Exemple d'organisation SOS 1 |
| [ExamplePractitioner](Practitioner-ExamplePractitioner.md) | Exemple 1 practitioner flux agrégateur |
| [ExamplePractitioner2](Practitioner-ExamplePractitioner2.md) | Exemple 2 practitioner flux agrégateur |
| [ExamplePractitioner3](Practitioner-ExamplePractitioner3.md) | Exemple 3 practitioner flux agrégateur |
| [ExamplePractitionerRegul1](Practitioner-ExamplePractitionerRegul1.md) | Exemple 1 practitioner flux régulateur |
| [ExamplePractitionerRegul2](Practitioner-ExamplePractitionerRegul2.md) | Exemple 2 practitioner flux régulateur |
| [ExamplePractitionerRegul3](Practitioner-ExamplePractitionerRegul3.md) | Exemple 3 practitioner flux régulateur |
| [ExamplePractitionerRegul4](Practitioner-ExamplePractitionerRegul4.md) | Exemple 4 practitioner flux régulateur |
| [ExamplePractitionerRoleAgregateur](PractitionerRole-ExamplePractitionerRoleAgregateur.md) | Exemple 1 PractitionerRole flux agrégateur |
| [ExamplePractitionerRoleAgregateur2](PractitionerRole-ExamplePractitionerRoleAgregateur2.md) | Exemple 2 PractitionerRole flux agrégateur |
| [ExamplePractitionerRoleAgregateur3](PractitionerRole-ExamplePractitionerRoleAgregateur3.md) | Exemple 3 PractitionerRole flux agrégateur |
| [ExamplePractitionerRoleAgregateur4](PractitionerRole-ExamplePractitionerRoleAgregateur4.md) | Exemple 4 PractitionerRole flux agrégateur |
| [ExampleSchedule](Schedule-ExampleSchedule.md) | Exemple ressource schedule |
| [ExampleSchedule1](Schedule-ExampleSchedule1.md) | Exemple 1 ressource schedule |
| [ExampleSchedule2](Schedule-ExampleSchedule2.md) | Exemple 2 ressource schedule |
| [ExampleSchedule3](Schedule-ExampleSchedule3.md) | Exemple 3 ressource schedule |
| [ExampleScheduleSOS1](Schedule-ExampleScheduleSOS1.md) | Exemple 1 ressource schedule sos |
| [ExampleScheduleSOS2](Schedule-ExampleScheduleSOS2.md) | Exemple 2 ressource schedule sos |
| [ExampleScheduleSOS3](Schedule-ExampleScheduleSOS3.md) | Exemple 3 ressource schedule sos |
| [ExampleSlotCPTS1](Slot-ExampleSlotCPTS1.md) | Exemple ressource slot CPTS - une CPTS |
| [ExampleSlotCPTS2](Slot-ExampleSlotCPTS2.md) | Exemple ressource slot CPTS - deux CPTS |
| [ExampleSlotPSIndiv1](Slot-ExampleSlotPSIndiv1.md) | Exemple 1 ressource slot PS indiv |
| [ExampleSlotPSIndiv2](Slot-ExampleSlotPSIndiv2.md) | Exemple 2 ressource slot PS indiv |
| [ExampleSlotPSIndiv3](Slot-ExampleSlotPSIndiv3.md) | Exemple 3 ressource slot PS indiv |
| [ExampleSlotPSIndiv4](Slot-ExampleSlotPSIndiv4.md) | Exemple 4 ressource slot PS indiv |
| [ExampleSlotSOS1](Slot-ExampleSlotSOS1.md) | Exemple 1 ressource slot sos |
| [ExampleSlotSOS2](Slot-ExampleSlotSOS2.md) | Exemple 2 ressource slot sos |
| [ExampleSlotSOS3](Slot-ExampleSlotSOS3.md) | Exemple 3 ressource slot sos |
| [ExampleSlotSOS4](Slot-ExampleSlotSOS4.md) | Exemple 4 ressource slot sos |

