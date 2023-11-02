
<figure>
  <img alt="Service d'Accès aux Soins (SAS)" src="sas_logo.png" style="width:100%;">
</figure>

<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en mode draft, seule la partie SOS est à utiliser.
</p>
</blockquote>

### Contexte métier

Pour le patient confronté à un besoin de soins non programmés et lorsque l'accès à son médecin traitant n'est pas possible, le Service d'Accès aux Soins (SAS) doit permettre d'accéder, à toute heure et à distance à un professionnel de santé. Ce dernier pourra lui fournir un conseil médical, l'orienter selon la situation vers une consultation de soin non programmé en ville, vers un service d'urgence ou déclencher l'intervention d'un SMUR.

Pour le patient orienté vers la filière de ville, les acteurs de la chaîne de régulation médicale du SAS peuvent s’appuyer sur la plateforme numérique, afin de :
- Visualiser les créneaux disponibles des effecteurs de soin,
- Réserver pour le patient une consultation de soin non programmé, au plus proche de ses besoins (localisation, horaire, spécialité).
Plus d'information sur le site dédié du ministère https://esante.gouv.fr/sas

### Contexte technique
L'objectif de ce projet est de définir les profils qui doivent être implémentés par les éditeurs de solution de prise de rendez-vous en ligne pour exposer les créneaux disponibles et informer la plateforme des rendez-vous pris.
Les opérations de la plateforme SAS sont réalisées au moyen d'API FHIR.
