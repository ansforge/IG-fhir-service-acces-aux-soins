# Accueil - Service d'Accès aux Soins v1.2.0

## Accueil

>  **Attention !** Cette version de l'Implementation Guide est en intégration continue et est soumise à des changements réguliers. La version officielle est accessible à l'adresse [https://interop.esante.gouv.fr/ig/fhir/sas](https://interop.esante.gouv.fr/ig/fhir/sas) 

### Contexte métier

Pour le patient confronté à un besoin de soins non programmés (SNP) et lorsque l'accès à son médecin traitant n'est pas possible, le Service d'Accès aux Soins (SAS) doit permettre d'accéder, à toute heure et à distance à un professionnel de santé. Ce dernier pourra lui fournir un conseil médical, l'orienter selon la situation vers une consultation de soin non programmé en ville, vers un service d'urgence ou déclencher l'intervention d'un SMUR.

Pour le patient orienté vers la filière de ville, les acteurs de la chaîne de régulation médicale du SAS peuvent s’appuyer sur la plateforme numérique, afin de :

* Visualiser les créneaux disponibles des effecteurs de soin,
* Réserver pour le patient une consultation de soin non programmé, au plus proche de ses besoins (localisation, horaire, spécialité). Plus d'informations sur la page dédiée de l'ANS : [https://esante.gouv.fr/domaine-urgences/sas](https://esante.gouv.fr/domaine-urgences/sas).

### Contexte technique

L'objectif est de définir les profils qui doivent être implémentés par les éditeurs de solution de prise de rendez-vous en ligne pour exposer les créneaux disponibles et informer la plateforme des rendez-vous pris. Les opérations de la plateforme SAS sont réalisées au moyen d'API FHIR.

Les flux s'appuie sur le volet Gestion d'agendas Partagés du CI-SIS (GAP). [https://esante.gouv.fr/volet-gestion-dagendas-partages](https://esante.gouv.fr/volet-gestion-dagendas-partages)

Le schéma ci-dessous présente une vue d'ensemble simplifiée (certaines références entre ressources n'apparaissent pas) des ressources utilisées dans le cadre du projet SAS.


### Cas d'usage

Les travaux menés avec les industriels ont pour objectifs principaux :

* D'agréger et mettre en visibilité de l'offre de soins sur le territoire national et de permettre à la régulation d'apporter une réponse aux patients pour les SNP
* De fluidifier le parcours du régulateur au sein d'un écosystème d'outils complexes

L'offre de soins à mettre à disposition inclut les volets :

* PS à titre individuel
* Organisations CPTS
* SOS Médecins

La fludification du parcours régulateurs inclut les éléments suivants :

* Limiter le nombre d’authentifications entre les solutions logicielles ​- **Recherche contextuelle**
* Limiter la ressaisie des données pour lancer une recherche d’offre de soins et pour la prise de RDV pour le compte du patient​ - **Recherche contextuelle**
* Alimenter les LRM avec les données des RDV pris - **Flux transmission des informations de RDV aux LRM**

> Le présent guide est enrichi régulièrement avec la description de tous les cas d'usage et l'offre de soins cible

#### PS à titre individuel

1. [Spécifications fonctionnelles](./specifications_fonctionnelles.md)
1. Spécifications techniques :
* [Recherche de créneaux](./specifications_techniques-ps-recherche_creneaux.md)
* [Gestion des comptes régulateurs](./specifications_techniques-ps-gestion_regulateur.md)
* [Gestion de rendez-vous](./specifications_techniques-ps-gestion_rdv.md)

1. [Ressources de conformité](./ressources_casusage.md#ps-à-titre-individuel)

#### CPTS

1. [Spécifications fonctionnelles](./specifications_fonctionnelles.md)
1. Spécifications techniques :
* [Recherche de créneaux](./specifications_techniques-cpts-recherche_creneaux.md)
* [Gestion des comptes régulateurs](./specifications_techniques-cpts-gestion_regulateur.md)
* [Gestion de rendez-vous](./specifications_techniques-cpts-gestion_rdv.md)

1. [Ressources de conformité](./ressources_casusage.md#cpts)

#### SOS Médecins

1. [Spécifications fonctionnelles](./specifications_fonctionnelles.md#sos-médecins)
1. Spécifications techniques :
* [Recherche de créneaux](./specifications_techniques-sos-recherche_creneaux.md)
* [Gestion des comptes régulateurs](./specifications_techniques-sos-gestion_regulateur.md)
* [Gestion de rendez-vous](./specifications_techniques-sos-gestion_rdv.md)

1. [Ressources de conformité](./ressources_casusage.md#sos-médecins)

#### Transmission des informations de RDV aux LRM

1. [Spécifications fonctionnelles](./specifications_fonctionnelles.md#transmission-des-informations-de-rdv-aux-lrm)
1. [Spécifications techniques](./specifications_techniques-transmission-info-RDV-LRM.md)

### Dépendances




