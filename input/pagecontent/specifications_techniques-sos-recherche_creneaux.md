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
  <td><p>Schedule</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Construction requête de base</strong></p></td>
  <td><p><code>GET[base]/Schedule{?[parameters]{&amp;_format=[mime-type]}}</code></p></td>
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

-   Un body contenant une ressource OperationOutcome qui donne les
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
  <td><p>Liste des identifiants nationaux de structure des associations SOS Médecins(SIRET avec préfixe correspondant)</p></td>
  <td><p>actor:Location<br>.organization.identifier</p></td>
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
- `_revinclude=Slot:schedule` indique qu’il est nécessaire de transmettre les ressources Slot associées au Schedule
- `_include=Schedule:actor:Location` indique qu’il est nécessaire de transmettre la ressource Location associée au Schedule. La présence de cette ressource est nécessaire pour permettre de faire le lien entre l’agenda (Schedule) et l’association SOS Médecins (Organization) associée
- `_include:iterate=Location:Organization` indique qu’il est nécessaire de transmettre la ressource Organization référencée dans Location.managingOrganization
- `_has:Slot:schedule:[paramètre]` permet l’utilisation des éléments de la ressource Slot comme critères de recherche (start, status)

### Exemple de requête

La requête ci-dessous correspond à une recherche de créneaux disponibles entre le 18 août 2023 à 10h et le 20 août 2023 à 9h pour les associations SOS Médecins correspondants aux SIRET suivants :334173748400020 et 340426662900033

**Requête :**

<code>get[BASE]/Schedule?_revinclude=Slot:schedule&_include=Schedule:actor:Location&_include:iterate=Location:organization&_has:Slot:schedule:start=ge2023-08-18T10:00:00+02:00<br>&_has:Slot:schedule:start=le2023-08-20T09:00:00+02:00&_has:Slot:schedule:status=free&actor:Location.organization.identifier=urn:oid:1.2.250.1.71.4.2.27C334173748400020<br>,urn:oid:1.2.250.1.71.4.2.2%7C340426662900033</code>


**Réponse simplifiée :**

<details>
  <summary>Déplier pour accéder au détail de l'exemple de réponse simplifiée</summary>
  <pre>
HTTP 200 OK
  resourceType: Bundle
  type: searchset
  total: 4
  Slot1 (match)
  Schedule1
  Location1
  Organization1
  Slot2 (match)
  Schedule2
  Location2
  Organization2
  Slot3 (match)
  Schedule3
  Location3
  Organization3
  Slot4 (match)
  </pre>
</details>
<br>

**Corps de la réponse complète :**

La réponse ci-dessous correspond à :
- 2 créneaux disponibles via l’association SOS Médecins de Rennes (SIRET : 334173748400020) :
  - 1 créneau au PFG : Centre de consultation Rennes Nord :
    - Adresse : 320 avenue Général George Patton (35700)
    - ID du PFG : 1111111111
    - Statut du créneau : disponible
    - Date et horaires : 18 août 2023 de 9h à 9h30
    - URL du créneau : http://www.editeur.com/agenda-pfg/creneau1
    - Téléphone du PFG : 0193246789
    - Jours et horaires d’ouverture du PFG : du mardi au dimanche de 8h00 à 19h00
    - Avec prise de RDV
    - Type de créneau : visible du grand public et réservé SAS
    - Type de consultation : au cabinet ou en téléconsultation
  - 1 créneau au PFG : Centre de consultation Rennes Cleunay :
    - Adresse : 320 avenue Général George Patton (35700)
    - Adresse : 106 rue Eugène Pottier (35000)
    - ID du PFG : 2222222222
    - Statut du créneau : free
    - Date et horaires : 19 août 2023 de 11h à 11h30
    - URL du créneau : http://www.editeur.com/agenda-pfg/creneau2
    - Téléphone du PFG : 0145249912
    - Jours et horaires d’ouverture du PFG : du lundi au jeudi de 9h00 à 21h00
    - Avec prise de RDV
    - Type de créneau : visible du grand public
    - Type de consultation : au cabinet
- 2 créneaux disponibles via l’association SOS Médecins Lorient et agglomération (SIRET : 392080466300010) :
  - Les 2 créneaux sont rattachés au PFG : Centre de consultation Lorient :
    - Adresse : 12 impasse Royer Dubail (56100)
    - ID du PFG : 3333333333
    - Téléphone du PFG : 0139555992
    - Jours et horaires d’ouverture du PFG : mardi, jeudi et samedi de 11h00 à 18h00
    - Caractéristiques du créneau 1 :
      - Date et horaires : 18 août 2023 de 14h20 à 14h40
      - URL du créneau : http://www.editeur.com/agenda-pfg/creneau3
      - Avec prise de RDV
      - Statut du créneau : disponible
      - Type de créneau : visible du grand public
      - Type de consultation : en téléconsultation
     - Caractéristiques du créneau 1 :
      - Date et horaires : 18 août 2023 de 14h40 à 15h00
      - URL du créneau : http://www.editeur.com/agenda-pfg/creneau4
      - Avec prise de RDV
      - Statut du créneau : disponible
      - Type de créneau : visible du grand public
      - Type de consultation : au cabinet

Pour consulter l'exemple en plein écran, cliquer [ici](./Bundle-ExampleBundleAgregateurSOS.html).

<iframe src="./Bundle-ExampleBundleAgregateurSOS.json" width="100%" height="300" style="border: 1px solid #cccccc; border-radius: 4px; background: #f5f2f0;" scrolling="yes"></iframe>
<br>

### Nomenclatures

Cette section détaille les nomenclatures à utiliser afin de renseigner les différents éléments codifiés de la réponse.
- **Statut du créneau :**
  - L'utilisation de la nomenclature standard slotstatus (<http://hl7.org/fhir/R4/valueset-slotstatus.html>) est attendue. Cependant, la plateforme numérique SAS ne récupérant que des créneaux disponibles, ce champ aura systématiquement la valeur `free`.
- **Type de créneau :**
  - Afin de répondre aux besoins de la plateforme numérique SAS, une nomenclature dédiée a été mise en oeuvre (<https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau>). 3 types de créneaux sont présentés ci-dessous. A noter qu'un créneau peut porter une combinaison de ces valeurs :
    - PUBLIC – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible par le grand public
    - PRO – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible à l'ensemble des PS
    - SNP – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible par les Régulateurs et OSNP
- **Type de consultation :**
  - L'utilisation de la nomenclature standard ActEncounterCode (<https://www.hl7.org/fhir/v3/ActEncounterCode/vs.html>) est attendue. Cette nomenclature contient différentes notions, cependant, la plateforme numérique SAS gère les 3 types de créneaux ci-dessous. A noter qu'un créneau peut porter une combinaison de ces valeurs :
    - AMB – Consultation au cabinet
    - HH – Consultation à domicile
    - VR – Téléconsultation
  - **Créneau avec ou sans RDV :**
  - L'utilisation de la nomenclature standard AppointmentReasonCodes (<https://www.hl7.org/fhir/v2/0276/index.html>) est attendue. Cette nomenclature contient différentes notions, cependant, la plateforme numérique SAS gère les 2 valeurs ci-dessous :
    - ROUTINE – Créneau avec prise de RDV possible.
    - WALKIN – Créneau sans prise de RDV possible  
- **URL de redirection pour la prise de RDV :**
  - Il est attendu l'URL de redirection vers l'agenda du PS concerné. Si l'utilisateur vient du SAS et n'est pas authentifié, il est demandé de le rediriger vers la page d'authentification de la solution éditeur avant d'accéder à l'agenda du PS. Afin de faciliter l'implémentation de la règle métier, la PTF numérique SAS ajoute un paramètre `origin` à l'URL transmise par l'éditeur au moment de la redirection pour identifier la provenance.
- **ID de l’association SOS Médecins (SIRET)  :**
  - Identifiant unique propre à chaque association SOS Médecins. Les champs attendus doivent être valorisés comme suit :
    - identifier.value (valeur de l'identifiant) : SIRET avec préfixe `3`
    - identifier.system (autorité d’affectation) : urn:oid:1.2.250.1.71.4.2.2
    - identifier.type (type d’identifiant) : le champ type.coding.code est valorisé à `IDNST` et type.coding.system à `http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type`
- **ID du point fixe de garde :**
  - Identifiant unique permettant d’identifier individuellement chaque point fixe de garde. Deux combinaisons sont possibles selon que le PFG ait un identifiant national de structure (IDNST) connu ou non :
    -  Lorsque le **PFG a un identifiant national de structure** connu, les différents champs sont valorisés comme suit :
      - identifier.value (valeur de l’identifiant) : valeur de l’IDNST avec préfixe
      - identifier.system (autorité d’affectation) : urn:oid:1.2.250.1.71.4.2.2
      - identifier.type (type d’identifiant) : le champ type.coding.code est valorisé à `IDNST` et type.coding.system à `http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type`
    - Lorsque le **l’identifiant national de structure du PFG n’est pas connu**, les différents champs sont valorisés comme suit :
      - identifier.value (valeur de l’identifiant) : Identifiant technique défini par la solution logicielle éditeur avec un format de type UUID par exemple
      - identifier.system (autorité d’affectation) : : OID propre de la solution logicielle éditeur ou valorisation du champ avec une URL de la solution logicielle éditeur par exemple
      - identifier.type (type d’identifiant) : le champ type.coding.code est valorisé à `INTRN` et type.coding.system à `http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type`
- **Horaires d’ouverture – Jours de la semaine :**
  - L’utilisation de la nomenclature standard DaysOfWeek (https://hl7.org/fhir/codesystem-days-of-week.html) est attendue. Cette nomenclature contient différentes notions qui sont toutes supportées par la plateforme numérique SAS :
    - MON – Lundi
    - TUE – Mardi
    - WED – Mercredi
    - THU – Jeudi
    - FRI – Vendredi
    - SAT – Samedi
    - SUN - Dimanche

### Validateur ressources
Le validateur mis à disposition des développeurs dans le cadre du projet SAS offre la possibilité de tester le format des bundles de réponse générés. Il permet de vérifier que les réponses sont correctement formatées, que l'ensemble des informations obligatoires sont bien présentes et que les données codifiées exploitent les bonnes nomenclatures.
Pour que le validateur puisse effectuer correctement les contrôles au niveau de la structure, il est nécessaire de renseigner pour chacun des "resourceType" correspondant, le meta.profile "URL" ci-dessous :
- https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-bundle-aggregator
- https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator
- https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator
- https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator
- https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator

Ci-dessous un exemple :

```
"resourceType": "Bundle",
"id": "8cbb33dc-779e-45e9-a5f6-ea66101288c5",
"meta": {
  "profile": [
    "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-bundle-aggregator"
  ]
},
```

Le validateur est disponible sur l'espace de test de l'ANS : <https://interop.esante.gouv.fr/evs/fhir/validator.seam?standard=37>. Il est désormais nécessaire de s'authentifier afin d'accéder aux services de l'espace de tests. 
Afin de tester un fichier, il suffit de sélectionner le format `JSON`, d'ajouter le fichier via le bouton `Add…`, de sélectionner le modèle `BundleAgregateurSOS` puis de cliquer sur `valider` :

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="validateur_creneaux-SOS_1.png" alt="Accès au validateur agrégateur de créneaux" title="Accès au validateur agrégateur de créneaux">
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
                <img src="validateur_creneaux-PS_2.png" alt="Rapport validateur agrégateur de créneaux" title="Rapport validateur agrégateur de créneaux">
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