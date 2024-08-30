<blockquote class="stu-note">
<p>
  <b>Attention !</b> Cette version de l'Implementation Guide est en intégration continue et est soumise à des changements réguliers. La version officielle est accessible à l'adresse <a href="https://interop.esante.gouv.fr/ig/fhir/sas" target="_blank">https://interop.esante.gouv.fr/ig/fhir/sas</a>
</p>
</blockquote>

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="sas_logo.png" alt="Service d'Accès aux Soins (SAS)" title="Logo SAS">
</div>

### Contexte métier

Pour le patient confronté à un besoin de soins non programmés (SNP) et lorsque l'accès à son médecin traitant n'est pas possible, le Service d'Accès aux Soins (SAS) doit permettre d'accéder, à toute heure et à distance à un professionnel de santé. Ce dernier pourra lui fournir un conseil médical, l'orienter selon la situation vers une consultation de soin non programmé en ville, vers un service d'urgence ou déclencher l'intervention d'un SMUR.

Pour le patient orienté vers la filière de ville, les acteurs de la chaîne de régulation médicale du SAS peuvent s’appuyer sur la plateforme numérique, afin de :
- Visualiser les créneaux disponibles des effecteurs de soin,
- Réserver pour le patient une consultation de soin non programmé, au plus proche de ses besoins (localisation, horaire, spécialité).
Plus d'information sur le site dédié du ministère : <https://esante.gouv.fr/sas>.

### Contexte technique
L'objectif est de définir les profils qui doivent être implémentés par les éditeurs de solution de prise de rendez-vous en ligne pour exposer les créneaux disponibles et informer la plateforme des rendez-vous pris.
Les opérations de la plateforme SAS sont réalisées au moyen d'API FHIR.

Les flux s'appuie sur le volet Gestion d'agendas Partagés du CI-SIS (GAP). <https://esante.gouv.fr/volet-gestion-dagendas-partages>

Le schéma ci-dessous présente une vue d'ensemble simplifiée (certaines références entre ressources n'apparaissent pas) des ressources utilisées dans le cadre du projet SAS.

<div class="figure" style="width:100%;" align ="center">
    <p>{% include schema_global_ressources_GAP.svg %}</p>
</div>


### Cas d'usage

Les travaux menés avec les industriels ont pour objectifs principaux : 
- D'agréger et mettre en visibilité de l'offre de soins sur le territoire national et de permettre à la régulation d'apporter une réponse aux patients pour les SNP
- De fluidifier le parcours du régulateur au sein d'un écosystème d'outils complexes

     <div class="figure">
      <img src="schema_cas_usage.png" alt="Schéma cas d'usage" title="Schéma cas d'usage">
    </div>
  
L'offre de soins à mettre à disposition inclut les volets
- PS à titre individuel
- Organisations CPTS
- SOS Médecins

<blockquote class="stu-note">
<p>Le présent guide sera enrichi régulièrement avec la description de tous les cas d'usage et l'offre de soins cible</p>
</blockquote>


#### PS à titre individuel

1. [Spécifications fonctionnelles](./specifications_fonctionnelles.html)
2. Spécifications techniques :
   - [Recherche de créneaux](./specifications_techniques-ps-recherche_creneaux.html)
   - [Gestion de rendez-vous](./specifications_techniques-ps-gestion_rdv.html)

#### CPTS

1. [Spécifications fonctionnelles](./specifications_fonctionnelles.html)
2. Spécifications techniques :
   - [Recherche de créneaux](./specifications_techniques-cpts-recherche_creneaux.html)
   - [Gestion de rendez-vous](./specifications_techniques-cpts-gestion_rdv.html)

### Dépendances
 
{% include dependency-table.xhtml %}
<br><br>
