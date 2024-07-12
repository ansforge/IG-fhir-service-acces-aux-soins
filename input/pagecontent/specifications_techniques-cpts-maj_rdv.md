<!-- Mise à jour de rendez-vous -->
### Caractéristiques de l'API

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
  <td><p>Conditional update<a href="#_ftn1" name="_ftnref1">[1]</a></p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Méthode http associée</strong></p></td>
  <td><p>PUT</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Ressource créée</strong></p></td>
  <td><p>Appointment</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Construction requête de base</strong></p></td>
  <td><p><code>PUT[base]/Appointment?Identifier=[ID]{&amp;_format=[mime-type]}</code></p></td>
</tr>
</tbody>
</table>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/http.html#cond-update">https://www.hl7.org/fhir/http.html#cond-update</a> et <a href="https://www.hl7.org/fhir/http.html#general">https://www.hl7.org/fhir/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/bundle.html>

Si la création est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP
-   Un header Location incluant l'ID de la ressource mise à jour par le serveur `Location: [base]/Appointment/12345`

Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/http.html>

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
<https://www.hl7.org/fhir/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource OperationOutcome[^3] qui donne les
    détails sur la raison de l'échec

À titre d'information, les codes erreurs classiques sont les suivants :
- 400 (Bad request) – Le format de la requête FHIR transmise est incorrect
- 422 (Unprocessable Entity) – L'action demandée ne peut pas être réalisée à cause d’une règle interne à l’application.

Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/http.html>

### Exemple de requête

**Requête :**

`put[BASE]/Appointment`

**Corps de la requête :**

La requête ci-dessous correspond à la transmission d’un RDV pris par le régulateur avec un identifiant national 3456780581/11242343 avec le PS dont le RPPS est 810100050075 pour le 04/09 à 14h, dont le statut est annulé.

<details>
  <summary>Déplier pour accéder au détail de l'exemple de réponse complète au format json</summary>
  <pre>
{
  "resourceType": "Appointment",
  "id": "1",
  "meta": {
    "profile": [
      "http://interopsante.org/fhir/StructureDefinition/FrAppointmentSAS"
    ]
  },
  "identifier": [
    {
      "system": "urn:oid:1.1.111.1.11.1.1.1",
      "value": "b6e39355-8a61-4556-b340-36f7b95fec6a"
    }
  ],
  "extension": [
    {
      "url": "http://interopsante.org/fhir/StructureDefinition/FrAppointmentOperator",
      "valueReference": {
        "identifier": {
          "type": {
            "coding": [
              {
                "system": "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                "code": "IDNPS"
              }
            ]
          },
          "system": "urn:oid:1.2.250.1.71.4.2.1",
          "value": "3456780581/11242343"
        }
      }
    }
  ],
  "status": "cancelled",
  "start": "2022-09-04T14:00:00+01:00",
  "end": "2022-09-04T14:15:00+01:00",
  "participant": [
    {
      "actor": {
        "identifier": {
          "type": {
            "coding": [
              {
                "system": "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                "code": "IDNPS"
              }
            ]
          },
          "system": "urn:oid:1.2.250.1.71.4.2.1",
          "value": "810100050075"
        }
      },
      "status": "accepted"
    }
  ]
}
  </pre>
</details>
<br>

### Nomenclatures

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

### Validateur ressources
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