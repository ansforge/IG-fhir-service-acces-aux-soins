This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Agrégateur

#### Profils des ressources
Ces structures définissent les contraintes sur les ressources FHIR par les systèmes conformes à cet Implementation Guide (IG).

<table>
<tbody>
<tr>
  <td width="25%"><p><strong>Profil</strong></p></td>
  <td width="75%"><p><strong>Description</strong></p></td>
</tr>
<tr>
  <td><p><a href="StructureDefinition-BundleAgregateur.html">BundleAgregateur</a></p></td>
  <td><p>Profil de Bundle qui représente le flux de réponse contenant les créneaux disponibles dans le cadre du service d’aggrégation de créneaux de la plateforme SAS (Service d’accès aux soins)</p></td>
</tr>
<tr>
  <td><p><a href="StructureDefinition-FrLocationAgregateur.html">FrLocationAgregateur</a></p></td>
  <td><p>Profil de Location, dérivé de FrLocation, pour le service d’aggrégation de créneaux de la plateforme SAS (Service d’accès aux soins)</p></td>
</tr>
<tr>
  <td><p><a href="StructureDefinition-FrPractitionerAgregateur.html">FrPractitionerAgregateur</a></p></td>
  <td><p>Profil de Practitioner, dérivé de FrPractitioner, pour le service d’aggrégation de créneaux de la plateforme SAS (Service d’accès aux soins)</p></td>
</tr>
<tr>
  <td><p><a href="StructureDefinition-FrPractitionerRoleExerciceAgregateur.html">FrPractitionerRoleExerciceAgregateur</a></p></td>
  <td><p>Profil de PractitionerRole, dérivé de FrPractitionerRoleExercice, pour le service d’aggrégation de créneaux de la plateforme SAS (Service d’accès aux soins)</p></td>
</tr>
<tr>
  <td><p><a href="StructureDefinition-FrScheduleAgregateur.html">FrScheduleAgregateur</a></p></td>
  <td><p>Profil de Schedule, dérivé de FrSchedule, pour le service d’aggrégation de créneaux de la plateforme SAS (Service d’accès aux soins)</p></td>
</tr>
<tr>
  <td><p><a href="StructureDefinition-FrSlotAgregateur.html">FrSlotAgregateur</a></p></td>
  <td><p>Profil de Slot, dérivé de FrSlot, pour le service d’aggrégation de créneaux de la plateforme SAS (Service d’accès aux soins)</p></td>
</tr>
</tbody>
</table>

#### Nomenclatures

Cette section détaille les nomenclatures à utiliser afin de renseigner les différents éléments codifiés de la réponse.
- **ID : 3 – Statut du créneau :**
  - L'utilisation de la nomenclature standard slotstatus (<http://hl7.org/fhir/R4/valueset-slotstatus.html>) est attendue. Cependant, la plateforme numérique SAS ne récupérant que des créneaux disponibles, ce champ aura systématiquement la valeur `free`.
- **ID : 13 – Spécialités ou compétences particulières du PS associées au créneau :**
  - Dans le cadre du profil FrSlot, l'élément specialty est lié à la nomenclature des spécialités ordinales du MOS (<https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale/>). La plateforme numérique SAS sera cependant en mesure de traiter d'autres compétences ou spécialités transmises sous la forme d'une donnée structurée au sein de l'élément `coding`, ou sous la forme d’un texte libre au niveau de l'élément `text`.
- **ID : 14 – Type de créneau :**
  - Afin de répondre aux besoins de la plateforme numérique SAS, une nomenclature dédiée a été mise en oeuvre (<https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau>). 3 types de créneaux sont présentés ci-dessous. A noter qu'un créneau peut porter une combinaison de ces valeurs :
    - PUBLIC – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible par le grand public.
    - PRO – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible à l'ensemble des PS.
    - SNP – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible par les Régulateurs et OSNP.
- **ID : 15 – Type de consultation :**
  - L'utilisation de la nomenclature standard ActEncounterCode (<https://www.hl7.org/fhir/v3/ActEncounterCode/vs.html>) est attendue. Cette nomenclature contient différentes notions, cependant, la plateforme numérique SAS gère les 3 types de créneaux ci-dessous. A noter qu'un créneau peut porter une combinaison de ces valeurs :
    - AMB – Consultation au cabinet
    - HH – Consultation à domicile
    - VR – Téléconsultation
- **ID : 17 – URL de redirection pour la prise de RDV :**
  - Il est attendu l'URL de redirection vers l'agenda du PS concerné. Si l'utilisateur vient du SAS et n'est pas authentifié, il est demandé de le rediriger vers la page d'authentification de la solution éditeur avant d'accéder à l'agenda du PS. Afin de faciliter l'implémentation de la règle métier, la PTF numérique SAS ajoute un paramètre `origin` à l'URL transmise par l'éditeur au moment de la redirection pour identifier la provenance.
- **ID : 18 – Créneau avec ou sans RDV :**
  - L'utilisation de la nomenclature standard AppointmentReasonCodes (<https://www.hl7.org/fhir/v2/0276/index.html>) est attendue. Cette nomenclature contient différentes notions, cependant, la plateforme numérique SAS gère les 2 valeurs ci-dessous :
    - ROUTINE – Créneau avec prise de RDV possible.
    - WALKIN – Créneau sans prise de RDV possible

#### Validateur ressources
Le validateur mis à disposition des développeurs dans le cadre du projet SAS offre la possibilité tester le format des bundles de réponse générés. Il permet de vérifier que les réponses sont correctement formatées, que l'ensemble des informations obligatoires sont bien présentes et que les données codifiées exploitent les bonnes nomenclatures.
Pour que le validateur puisse effectuer correctement les contrôles au niveau de la structure, il est nécessaire de renseigner pour chacun des "resourceType" correspondant, le meta.profile "URL" ci-dessous :
- http://sas.fr/fhir/StructureDefinition/BundleAgregateur
- http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur
- http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur
- http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur
- http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur
- http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur

Ci-dessous un exemple :

```
"resourceType": "Bundle",
"id": "8cbb33dc-779e-45e9-a5f6-ea66101288c5",
"meta": {
  "profile": [
    "http://sas.fr/fhir/StructureDefinition/BundleAgregateur"
  ]
},
```

Le validateur est disponible sur l'espace de test de l'ANS : <https://interop.esante.gouv.fr/EVSClient/fhir/validator.seam?standard=FHIR%20(SAS)&extension=SAS>. Pour faciliter les tests et conserver l'historique, nous vous recommandons de créer votre compte sur la plateforme.
Afin de tester un fichier, il suffit de sélectionner le format `JSON`, d'ajouter le fichier via le bouton `Add…`, de sélectionner le modèle `FrBundleAgregateurSAS` puis de cliquer sur `valider` :

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="validateur_creneaux_1.png" alt="Accès au validateur agrégateur de créneaux" title="Accès au validateur agrégateur de créneaux">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 1 - Accès au validateur agrégateur de créneaux</b>
        </td>
    </tr>
</table>

Vous obtiendrez alors un rapport de test mettant en valeur les erreurs bloquantes et les différents warning :

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="validateur_creneaux_2.png" alt="Rapport validateur agrégateur de créneaux" title="Rapport validateur agrégateur de créneaux">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 2 - Rapport validateur agrégateur de créneaux</b>
        </td>
    </tr>
</table>

### Rendez-vous

#### Profils des ressources
Ces structures définissent les contraintes sur les ressources FHIR par les systèmes conformes à cet Implementation Guide (IG).

<table>
<tbody>
<tr>
  <td width="25%"><p><strong>Profil</strong></p></td>
  <td width="75%"><p><strong>Description</strong></p></td>
</tr>
<tr>
  <td><p><a href="StructureDefinition-FrAppointmentSAS.html">FrAppointmentSAS</a></p></td>
  <td><p>Profil de Appointment, dérivé de FrAppointment, pour le service de prise de rendez-vous de la plateforme SAS (Service d’accès aux soins)</p></td>
</tr>
</tbody>
</table>

#### Nomenclatures

Cette section détaille les nomenclatures à utiliser afin de renseigner les différents éléments codifiés de la requête.
- **ID : 1 – Identifiant technique du RDV :**
  - Un identifiant technique unique par RDV est attendu. Cet ID est défini par la solution logicielle éditeur et peut prendre la forme d'un UUID par exemple. Les échanges s'appuieront sur cet ID pour les requêtes de mises à jour (interaction conditional update).
- **ID : 2 – Autorité d'affectation de la solution logicielle éditeur :**
  - Ce champ est une valeur fixe, valorisé soit par une URL soit par un OID. Si l'éditeur possède un OID propre à sa solution logicielle il est attendu que celui-ci soit transmis, sinon il est demandé de définir une URL propre à la solution éditeur.
- **ID : 3 – URL de l'extension AppointmentOperator pour la référence au régulateur :**
  - Ce champ est une valeur fixe, valorisé à `http://interopsante.org/fhir/StructureDefinition/FrAppointmentOperator`.
- **ID : 4, 5, 6 – Identification du régulateur ayant pris le RDV pour le patient :**
  - Il s'agit de l'identifiant communiqué par la plateforme numérique SAS dans l'interface INT_R02 "Gestion des comptes régulateurs". Deux combinaisons sont possibles pour ces trois champs selon que le régulateur possède ou non un identifiant national.
  - Lorsque le régulateur a un identifiant national, les différents champs seront valorisés comme suit (1) :
    - Valeur de l'identifiant (ID 4) : Identifiant national avec préfixe ;
    - Autorité d'affectation (ID 5) : urn:oid:1.2.250.1.71.4.2.1 ;
    - Type d'identifiant (ID 6) : le champ `type.coding.code` est valorisé à `IDNPS` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`.
  - Lorsque le régulateur n'a pas d’identifiant national, nous utiliserons un ID technique SAS, les différents champs seront valorisés comme suit :
    - Valeur de l'identifiant (ID 4) : Identifiant technique SAS avec un format de type UUID ;
    - Autorité d'affectation (ID 5) : urn:oid:1.2.250.1.213.3.6 ;
    - Type d'identifiant (ID 6) : le champ type.coding.code est valorisé à `INTRN` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`.
- **ID : 7 – Statut du RDV :**
  - L'utilisation de la nomenclature standard AppointmentStatus (<http://hl7.org/fhir/appointmentstatus>) est attendue. La plateforme numérique SAS exploite à date les valeurs suivantes :
    - BOOKED : RDV pris et confirmé
    - FULFILLED : RDV honoré
    - NOSHOW : RDV non honoré
    - CANCELLED : RDV annulé
- **ID : 10, 11, 12 – Identification du PS effecteur de soins :**
  - Les champs attendus doivent être valorisés comme suit (1) :
    - Valeur de l'identifiant (ID 10) : RPPS avec préfixe "8" ou ADELI avec préfixe "0"
    - Autorité d'affectation (ID 11) : urn:oid:1.2.250.1.71.4.2.1
    - Type d'identifiant (ID 12) : le champ `type.coding.code` est valorisé à `IDNPS` et `type.coding.system` à `http://interopsante.org/fhir/CodeSystem/fr-v2-0203`
- **ID : 13 – Statut d’acceptation du RDV par le PS effecteur de soins :**
  - L'utilisation de la nomenclature standard Appointmentparticipantstatus (<http://hl7.org/fhir/ValueSet/participationstatus>) est attendue. La plateforme numérique SAS ne récupérant que les RDV avec acceptation automatique et tacite du médecin effecteur de soins, ce champ aura systématiquement la valeur « accepted ».

#### Validateur ressources
Un validateur mis à disposition des développeurs dans le cadre du projet SAS offre la possibilité de tester le format des requêtes POST et PUT à générer. Il permet de vérifier que les requêtes sont correctement formatées, que l'ensemble des informations obligatoires sont bien présentes et que les données codifiées exploitent les bonnes nomenclatures.
Pour que le validateur puisse effectuer correctement les contrôles au niveau de la structure, il est nécessaire de renseigner pour le resourceType `Appointment`, le meta.profile `URL` ci-après :
- http://sas.fr/fhir/StructureDefinition/FrAppointmentSAS

Ci-dessous un exemple :

```
"resourceType": "Appointment",
"id": "1",
"meta": {
  "profile": [
    "http://interopsante.org/fhir/StructureDefinition/FrAppointmentSAS"
  ]
},
```

Le validateur est disponible sur l'espace de test de l'ANS : <https://interop.esante.gouv.fr/EVSClient/fhir/validator.seam?extension=SAS&standard=FHIR+%28SAS%29&type=FHIR&cid=750>. Pour faciliter les tests et conserver l'historique, nous vous recommandons de créer votre compte sur la plateforme.
Afin de tester un fichier, il suffit de sélectionner le format `JSON`, d’ajouter le fichier via le bouton `Add…`, de sélectionner le modèle `FrAppointmentSAS` puis de cliquer sur `valider` :

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="validateur_rendez_vous_1.png" alt="Accès au validateur rendez-vous" title="Accès au validateur rendez-vous">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 3 - Accès au validateur rendez-vous</b>
        </td>
    </tr>
</table>

Vous obtiendrez alors un rapport de test mettant en valeur les erreurs bloquantes et les différents warning :

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="validateur_rendez_vous_2.png" alt="Rapport validateur rendez-vous" title="Rapport validateur rendez-vous">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 4 - Rapport validateur rendez-vous</b>
        </td>
    </tr>
</table>