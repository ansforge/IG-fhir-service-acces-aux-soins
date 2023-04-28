***/!\ Cet Implementation Guide (IG) destiné au Service d'Accès aux Soins est en cours de construction.***
Ne pas utiliser, référencer, diffuser avant publication de la v1.0.0.

<div align="center">
<figure>
<img alt="Service d'Accès aux Soins (SAS)" src="input/images/sas_logo.png" align="middle">
</figure>
</div>

# Contexte

## Contexte métier du projet
Pour le patient confronté à un besoin de soins non programmés et lorsque l'accès à son médecin traitant n'est pas possible, le Service d'Accès aux Soins (SAS) doit permettre d'accéder, à toute heure et à distance à un professionnel de santé. Ce dernier pourra lui fournir un conseil médical, l'orienter selon la situation vers une consultation de soin non programmé en ville, vers un service d'urgence ou déclencher l'intervention d'un SMUR.
Pour le patient orienté vers la filière de ville, les acteurs de la chaîne de régulation médicale du SAS peuvent s’appuyer sur la plateforme numérique, afin de :
- Visualiser les créneaux disponibles des effecteurs de soin,
- Réserver pour le patient une consultation de soin non programmé, au plus proche de ses besoins (localisation, horaire, spécialité).
Plus d'information sur le site dédié du ministère https://esante.gouv.fr/sas

## Contexte technique du projet
L'objectif de ce projet est de définir les profils qui doivent être implémentés par les éditeurs de solution de prise de rendez-vous en ligne pour exposer les créneaux disponibles et informer la plateforme des rendez-vous pris.
Les opérations de la plateforme SAS sont réalisées au moyen d'API FHIR.

Les ressources profilées pour ce cas d'usage spécifique sont :
- BundleAgregateur
- FrLocationAgregateur
- FrPractitionerAgregateur
- FrPractitionerRoleExerciceAgregateur
- FrScheduleAgregateur
- FrSlotAgregateur
- FrAppointmentSAS

# CI/CD
Les workflows associés à ce repository (.github/workflows) permettent : 
* D'executer Sushi pour vérifier la grammaire
* De faire les tests avec le validator_cli
* De publier les pages : https://ansforge.github.io/{nom du repo}/ig/{nom de la branche}

# Notes
Ce repository "IG-service-acces-aux-soins " a été créé à partir du repo "IG-modele" de l'organisation GitHub ANS : https://github.com/ansforge.

Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes

* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* FIG : FHIR Implementation Guide
* HL7 : Health Level Seven
* SAS : Service d'Accès aux Soins
* PS : Professionnel de Santé
* CPTS : Communauté Professionnelles Territoriales de Santé