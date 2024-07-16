<!-- Recherche des créneaux -->
### Caractéristiques de l'API
Cette requête s'appuie sur le flux 3A du volet d'agenda partagé du [CI-SIS volet Gestion Agenda Partagés](https://esante.gouv.fr/sites/default/files/media_entity/documents/CISIS-TEC_SPECIFICATIONS_TECHNIQUES-GESTION_AGENDAS_PARTAGES_V1.0.pdf).  

<table>
<tbody>
<tr>
  <td width="25%"><p><strong>Endpoint</strong></p></td>
  <td><p>&nbsp;</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Header</strong></p></td>
  <td><p>Accept: application/json+fhir</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Encodage</strong></p></td>
  <td><p>UTF-8</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Version FHIR</strong></p></td>
  <td><p>4.0.1</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Version package</strong></p></td>
  <td><p>&nbsp;</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Publication</strong></p></td>
  <td><p>&nbsp;</p></td>
</tr>
</tbody>
</table>

###  Construction de la requête de base

<table>
<tbody>
<tr>
  <td width="25%"><p><strong>Interaction FHIR</strong></p></td>
  <td><p>Search<a href="#_ftn1" name="_ftnref1">[1]</a></p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Méthode http associée</strong></p></td>
  <td><p>GET</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Ressource recherchée</strong></p></td>
  <td><p>Slot</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Construction requête de base</strong></p></td>
  <td><p><code>GET[base]/Slot{?[parameters]{&amp;_format=[mime-type]}}</code></p></td>
</tr>
</tbody>
</table>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/http.html#search">https://www.hl7.org/fhir/http.html#search</a> et <a href="https://www.hl7.org/fhir/http.html#general">https://www.hl7.org/fhir/http.html#general</a></p>

### Construction de la réponse de base
Cette réponse s'appuie sur le flux 4A du volet d'agenda partagé du CI-SIS.

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/bundle.html>

Si la recherche est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP

-   Un body contenant une ressource [Bundle](https://www.hl7.org/fhir/bundle.html) dont le type =
    searchset.
    Le bundle encapsule 0 à n ressources Slot corespondant aux
    critères de recherche plus les ressources incluses correspondant aux
    critères de recherche.
    Le service indique le total trouvé dans une balise `total`.
    Dans le cas où il n'y a     pas de résultat le service renvoie `total`: 0.

Remarque : la recherche est un succès à partir du moment où la requête
peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/http.html>

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
<https://www.hl7.org/fhir/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource OperationOutcome[^3] qui donne les
    détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/http.html>

### Critères de recherche

<table>
<tbody>
<tr>
  <td width="5%"><p><strong>ID</strong></p></td>
  <td width="35%"><p><strong>Description</strong></p></td>
  <td width="15%"><p><strong>Paramètre</strong></p></td>
  <td width="15%"><p><strong>Type</strong></p></td>
  <td width="15%"><p><strong>Obligatoire</strong></p></td>
  <td><p><strong>Cardinalité</strong></p></td>
</tr>
<tr>
  <td><p>1</p></td>
  <td><p>Date de début de la recherche de créneaux</p></td>
  <td><p>start<br>avec le préfixe ge</p></td>
  <td><p>date</p></td>
  <td><p>Oui</p></td>
  <td><p>1..1</p></td>
</tr>
<tr>
  <td><p>2</p></td>
  <td><p>Date de fin de la recherche de créneaux</p></td>
  <td><p>start<br>avec le préfixe le</p></td>
  <td><p>date</p></td>
  <td><p>Oui</p></td>
  <td><p>1..1</p></td>
</tr>
<tr>
  <td><p>3</p></td>
  <td><p>Liste des identifiants nationaux des PS (le préfixe correspondant à l'identifiant sera transmis (2))</p></td>
  <td><p>schedule.actor<br>:Practitioner.identifier</p></td>
  <td><p>token</p></td>
  <td><p>Oui</p></td>
  <td><p>1..25</p></td>
</tr>
<tr>
  <td><p>4</p></td>
  <td><p>Statut des créneaux</p></td>
  <td><p>status</p></td>
  <td><p>token<br>valeur: free</p></td>
  <td><p>Oui</p></td>
  <td><p>1..1</p></td>
</tr>
</tbody>
</table>

Par ailleurs, en complément des ressources Slot, afin de récupérer l'ensemble des informations qui leur sont rattachées et qui seront potentiellement exploitées par le SAS, deux paramètres supplémentaires sont exploités :
- `_include=Slot:schedule` indique qu'il est nécessaire de transmettre les ressources Schedule associées aux Slot. La présence de cette ressource est nécessaire pour permettre de faire le lien entre le créneau (Slot) et les ressources Practitioner et PractitionerRole associées.
- `_include:iterate=Schedule:actor` indique qu'il est nécessaire de transmettre les ressources actor référencées dans les ressources Schedule transmises. En particulier, les ressources Practitioner et PractitionerRole (incluant la ressource Location dans une élément "contained") sont attendues.
- `_include=Slot:service-type-reference` indique qu'il est nécessaire de transmettre les ressources HealthcareService associées aux Slot pour la transmission d'un créneau CPTS. La présence de cette ressource est nécessaire pour permettre de faire le lien entre le créneau (Slot) et les ressources Organization associées.
- `_include:iterate=HealthcareService:organization` indique qu'il est nécessaire de transmettre les ressources Organization référencées dans les ressources HealthcareService transmises.

### Exemple de requête

La requête ci-dessous correspond à une recherche de créneaux disponibles entre le 12 juin 2024 à 16h20 et le 15 juin 2024 à 16h20 pour les PS correspondant aux RPPS préfixés : 810002909371, 810001288385.

**Requête :**

`get[BASE]/Slot?_include=Slot:schedule&_include:iterate=Schedule:actor&_include=Slot:service-type-reference&_include:iterate=HealthcareService:organization&start=ge2024-06-12T16:20:00.000+02:00&start=le2024-06-15T16:20:00.000+02:00&schedule.actor:Practitioner.identifier=urn:oid:1.2.250.1.71.4.2.1|810002909371,urn:oid:1.2.250.1.71.4.2.1|810001288385&status=free`

**Réponse simplifiée :**

<details>
  <summary>Déplier pour accéder au détail de l'exemple de réponse simplifiée</summary>
  <pre>
HTTP 200 OK
  resourceType: Bundle
  type: searchset
  total: 1
  Slot1
  Schedule1
  Practitioner1
  PractitionerRole1
  HealthcareService1
  Organization1
  </pre>
</details>
<br>

**Corps de la réponse complète :**

La réponse ci-dessous correspond à :
1 créneau disponible avec Docteur Pierre FORET (RPPS : 810002909371)
  - au 25 chemin de mounestie (31840) associé à la CPTS Axe Majeur (FINESS : 1950047225) 
  - le 12 juin 2024 de 16h40 à 17h ayant les caractéristiques suivantes :
    - Avec prise de RDV, 
    - Visible du grand public et de la structure CPTS, 
    - Au cabinet
    - Pour le motif `Consultation`
    - Téléphone de la CPTS : 0102030405

Pour consulter l'exemple en plein écran, cliquer [ici](./Bundle-ExampleBundleCPTS.html).

<iframe src="./Bundle-ExampleBundleCPTS.json" width="100%" height="300" style="border: 1px solid #cccccc; border-radius: 4px; background: #f5f2f0;" scrolling="yes"></iframe>
<br>

### Nomenclatures

Cette section détaille les nomenclatures à utiliser afin de renseigner les différents éléments codifiés de la réponse.
- **ID : 3 – Statut du créneau :**
  - L'utilisation de la nomenclature standard slotstatus (<http://hl7.org/fhir/R4/valueset-slotstatus.html>) est attendue. Cependant, la plateforme numérique SAS ne récupérant que des créneaux disponibles, ce champ aura systématiquement la valeur `free`.
- **ID : 13 – Spécialités ou compétences particulières du PS associées au créneau :**
  - Dans le cadre du profil FrSlot, l'élément specialty est lié à la nomenclature des spécialités ordinales du MOS (<https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale/>). La plateforme numérique SAS sera cependant en mesure de traiter d'autres compétences ou spécialités transmises sous la forme d'une donnée structurée au sein de l'élément `coding`, ou sous la forme d’un texte libre au niveau de l'élément `text`.
- **ID : 14 – Type de créneau :**
  - Afin de répondre aux besoins de la plateforme numérique SAS, une nomenclature dédiée a été mise en oeuvre (<https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau>). 4 types de créneaux sont présentés ci-dessous. A noter qu'un créneau peut porter une combinaison de ces valeurs :
    - PUBLIC – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible par le grand public
    - PRO – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible à l'ensemble des PS
    - SNP – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible par les Régulateurs et OSNP
    - CPTS – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible par une structure de type CPTS
- **ID : 15 – Type de consultation :**
  - L'utilisation de la nomenclature standard ActEncounterCode (<https://www.hl7.org/fhir/v3/ActEncounterCode/vs.html>) est attendue. Cette nomenclature contient différentes notions, cependant, la plateforme numérique SAS gère les 3 types de créneaux ci-dessous. A noter qu'un créneau peut porter une combinaison de ces valeurs :
    - AMB – Consultation au cabinet
    - HH – Consultation à domicile
    - VR – Téléconsultation
- **ID : 16 – Type de soins :**
  - Lorsque le créneau transmis est de type CPTS (ID 14), les champs attendus pour le type de soins doivent être valorisés comme suit :
    - serviceType.coding.system : https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/TRE_R66-CategorieEtablissement
    - serviceType.coding.code : 604
- **ID : 17, 18 – URL de l’extension et référence à la ressource HealthcareService :**
  - Lorsque le créneau transmis est de type CPTS, les champs attendus pour faire référence au HealthcareService doivent être valorisés comme suit :
    - serviceType.extension.url : http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType
    - serviceType.valueReference.reference : HealthcareService/<référence à la ressource HealthcareService associée>
- **ID : 20 – URL de redirection pour la prise de RDV :**
  - Il est attendu l'URL de redirection vers l'agenda du PS concerné. Si l'utilisateur vient du SAS et n'est pas authentifié, il est demandé de le rediriger vers la page d'authentification de la solution éditeur avant d'accéder à l'agenda du PS. Afin de faciliter l'implémentation de la règle métier, la PTF numérique SAS ajoute un paramètre `origin` à l'URL transmise par l'éditeur au moment de la redirection pour identifier la provenance.
- **ID : 21 – Créneau avec ou sans RDV :**
  - L'utilisation de la nomenclature standard AppointmentReasonCodes (<https://www.hl7.org/fhir/v2/0276/index.html>) est attendue. Cette nomenclature contient différentes notions, cependant, la plateforme numérique SAS gère les 2 valeurs ci-dessous :
    - ROUTINE – Créneau avec prise de RDV possible
    - WALKIN – Créneau sans prise de RDV possible
- **ID : 23, 24, 25 – ID de la structure CPTS (FINESS) :**
  - Identifiant unique propre à chaque structure CPTS. Les champs attendus doivent être valorisés comme suit :
    - identifier.value (valeur de l'identifiant) : numéro du FINESS avec préfixe `1`
    - identifier.system (autorité d’affectation) : urn:oid:1.2.250.1.71.4.2.2
    - identifier.type (type d’identifiant) : le champ type.coding.code est valorisé à `IDNST` et type.coding.system à «http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type »

### Validateur ressources
Le validateur mis à disposition des développeurs dans le cadre du projet SAS offre la possibilité tester le format des bundles de réponse générés. Il permet de vérifier que les réponses sont correctement formatées, que l'ensemble des informations obligatoires sont bien présentes et que les données codifiées exploitent les bonnes nomenclatures.
Pour que le validateur puisse effectuer correctement les contrôles au niveau de la structure, il est nécessaire de renseigner pour chacun des "resourceType" correspondant, le meta.profile "URL" ci-dessous :
- https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-bundle-aggregator
- https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-slot-aggregator
- http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur
- http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur
- http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur
- http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur
- https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-healthcareservice-aggregator
- https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator

_Note :_  
_Il y a actuellement des inconsistances dans les URLs canoniques des différents profils contenus dans ce guide, certaines URLs sont au format "http://sas.fr/fhir/..." et d'autres au format "https://interop.esante.gouv.fr/ig/fhir/sas/...". L'uniformisation n'a pas été effectuée pour cette release pour éviter les changements non rétrocompatibles. Ce changement sera à anticiper lors des prochaines releases._  

Ci-dessous un exemple :

```
"id": "a079787b-a509-4a5f-8353-5e99b1c90cf3",
"resourceType": "Bundle",
"type": "searchset",
"total": 1,
"meta": {
  "profile": [
    "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-bundle-aggregator"
  ]
},
```

Le validateur est disponible sur l'espace de test de l'ANS : <https://interop.esante.gouv.fr/evs/fhir/validator.seam?standard=37>. Pour faciliter les tests et conserver l'historique, nous vous recommandons de créer votre compte sur la plateforme.
Afin de tester un fichier, il suffit de sélectionner le format `JSON`, d'ajouter le fichier via le bouton `Add…`, de sélectionner le modèle `BundleAgregateurCPTS` puis de cliquer sur `valider` :

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="validateur_creneaux-CPTS_1.png" alt="Accès au validateur agrégateur de créneaux" title="Accès au validateur agrégateur de créneaux">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 1 - Accès au validateur agrégateur de créneaux</b>
        </td>
    </tr>
</table>

Vous obtiendrez alors un rapport de test mettant en valeur les erreurs bloquantes et les différents warnings :

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="validateur_creneaux-CPTS_2.png" alt="Rapport validateur agrégateur de créneaux" title="Rapport validateur agrégateur de créneaux">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 2 - Rapport validateur agrégateur de créneaux</b>
        </td>
    </tr>
</table>
<br><br>
