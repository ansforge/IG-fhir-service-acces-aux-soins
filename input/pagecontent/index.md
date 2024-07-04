<blockquote class="stu-note">
<p>
  <b>Attention !</b> Cette version de l'Implementation Guide est en intégration continue et est soumise à des changements réguliers. La version officielle est accessible à l'adresse https://interop.esante.gouv.fr/ig/fhir/sas
</p>
</blockquote>

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="sas_logo.png" alt="Service d'Accès aux Soins (SAS)" title="Logo SAS">
</div>

### Contexte métier

Pour le patient confronté à un besoin de soins non programmés et lorsque l'accès à son médecin traitant n'est pas possible, le Service d'Accès aux Soins (SAS) doit permettre d'accéder, à toute heure et à distance à un professionnel de santé. Ce dernier pourra lui fournir un conseil médical, l'orienter selon la situation vers une consultation de soin non programmé en ville, vers un service d'urgence ou déclencher l'intervention d'un SMUR.

Pour le patient orienté vers la filière de ville, les acteurs de la chaîne de régulation médicale du SAS peuvent s’appuyer sur la plateforme numérique, afin de :
- Visualiser les créneaux disponibles des effecteurs de soin,
- Réserver pour le patient une consultation de soin non programmé, au plus proche de ses besoins (localisation, horaire, spécialité).
Plus d'information sur le site dédié du ministère : <https://esante.gouv.fr/sas>.

### Contexte technique
L'objectif de ce projet est de définir les profils qui doivent être implémentés par les éditeurs de solution de prise de rendez-vous en ligne pour exposer les créneaux disponibles et informer la plateforme des rendez-vous pris.
Les opérations de la plateforme SAS sont réalisées au moyen d'API FHIR.

### Cas d'usage

#### PS à titre individuel

- [Spécifications fonctionnelles](./specifications_fonctionnelles.html)
- [Spécifications techniques - Recherche de créneaux](./specifications_techniques-ps-recherche_creneaux.html)

**Spécifications partagées avec les autres cas d'usage :**
- [Spécifications techniques - Création de rendez-vous](./specifications_techniques-tous-creation_rdv.html)
- [Spécifications techniques - Mise à jour de rendez-vous](./specifications_techniques-tous-maj_rdv.html)

#### CPTS

- [Spécifications fonctionnelles](./specifications_fonctionnelles.html)
- [Spécifications techniques - Recherche de créneaux](./specifications_techniques-cpts-recherche_creneaux.html)

**Spécifications partagées avec les autres cas d'usage :**
- [Spécifications techniques - Création de rendez-vous](./specifications_techniques-tous-creation_rdv.html)
- [Spécifications techniques - Mise à jour de rendez-vous](./specifications_techniques-tous-maj_rdv.html)

### Dépendances
 
{% include dependency-table.xhtml %}