<!-- Gestion régulateurs -->

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

### Création de compte régulateur

####  Construction de la requête de base

<table>
<tbody>
<tr>
  <td width="25%"><p><strong>Interaction FHIR</strong></p></td>
  <td><p>Create<a href="#_ftn1" name="_ftnref1">[1]</a></p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Méthode http associée</strong></p></td>
  <td><p>POST</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Ressource créée</strong></p></td>
  <td><p>Practitioner</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Construction requête de base</strong></p></td>
  <td><p><code>POST[base]/Practitioner{?_format=[mime-type]}</code></p></td>
</tr>
</tbody>
</table>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/http.html#create">https://www.hl7.org/fhir/http.html#create</a> et <a href="https://www.hl7.org/fhir/http.html#general">https://www.hl7.org/fhir/http.html#general</a></p>

#### Construction de la réponse de base

##### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/bundle.html>

Si la création est un succès, le serveur répond :

-   Un header avec un code 201 Created HTTP
-   Un header Location incluant l'ID de la ressource créée par le serveur `Location: [base]/Practitioner/12345`

Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/http.html>

##### Réponse de base -- Echec

Lien vers la spécification FHIR :
<https://www.hl7.org/fhir/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un code erreur HTTP 4XX ou 5XX
-   Un body contenant une ressource OperationOutcome qui donne les
    détails sur la raison de l'échec

À titre d'information, les codes erreurs classiques sont les suivants :
- 400 (Bad request) – Le format de la requête FHIR transmise est incorrect
- 422 (Unprocessable Entity) – L'action demandée ne peut pas être réalisée à cause d’une règle interne à l’application.

Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/http.html>

#### Exemple de requête

**Requête :**

`post[BASE]/Practitioner`

**Corps de la requête :**

La requête ci-dessous correspond à la création ou mise à jour du compte de Sébastien LORIDON, dont l’identifiant national est `3456780581/11242343` et le mail `sebastien.loridon@test.com`.

{%include Practitioner-ExamplePractitionerRegul1-json-html.xhtml%}

### Mise à jour d'un compte régulateur

####  Construction de la requête de base

<table>
<tbody>
<tr>
  <td width="25%"><p><strong>Interaction FHIR</strong></p></td>
  <td><p>Conditional update<a href="#_ftn2" name="_ftnref2">[2]</a></p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Méthode http associée</strong></p></td>
  <td><p>PUT</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Ressource créée</strong></p></td>
  <td><p>Practitioner</p></td>
</tr>
<tr>
  <td width="25%"><p><strong>Construction requête de base</strong></p></td>
  <td><p><code>PUT[base]/Practitioner?identifier=[ID]{&amp;_format=[mime-type]}</code></p></td>
</tr>
</tbody>
</table>
<p><a href="#_ftnref2" name="_ftn2">[2]</a> <a href="https://www.hl7.org/fhir/http.html#cond-update">https://www.hl7.org/fhir/http.html#cond-update</a> et <a href="https://www.hl7.org/fhir/http.html#general">https://www.hl7.org/fhir/http.html#general</a></p>

#### Construction de la réponse de base

##### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/bundle.html>

Si la création est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP
-   Un header Location incluant l'ID de la ressource mise à jour par le serveur `Location: [base]/Practitioner/12345`

Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/http.html>


##### Réponse de base -- Echec

Lien vers la spécification FHIR :
<https://www.hl7.org/fhir/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un code erreur HTTP 4XX ou 5XX
-   Un body contenant une ressource OperationOutcome qui donne les
    détails sur la raison de l'échec

À titre d'information, les codes erreurs classiques sont les suivants :
- 400 (Bad request) – Le format de la requête FHIR transmise est incorrect
- 422 (Unprocessable Entity) – L'action demandée ne peut pas être réalisée à cause d’une règle interne à l’application.

### Règles de gestion

Cette section détaille les règles de gestion à utiliser au niveau des éléments retournés par la requête.
- **ID : 1 – Identifiant national du régulateur :**
  - Le régulateur n’a potentiellement pas d’identifiant national à date ou n’a pas rattaché son identifiant national à son compte SAS. Par défaut il aura un ID technique SAS. Lorsque l’ajout ou le rattachement de l’identifiant national sera effectué, l’information sera transmise dans une requête de mise à jour.
- **ID : 2 – Autorité d'affectation :**
  - Lorsque l’identifiant transmis est un ID national, le champ est valorisé à `urn:oid:1.2.250.1.71.4.2.1`. Lorsque l’identifiant transmis est un ID technique SAS, il est valorisé à `urn:oid:1.2.250.1.213.3.6`.
- **ID : 3 – Type d'identifiant :**
  - Lorsque l’identifiant transmis est un ID national, le champ type.coding.code est valorisé à `IDNPS`. Lorsque l’identifiant transmis est un ID technique SAS, il est valorisé à `INTRN`.
- **ID : 4 – Habilitation (active ou non) :**
  - Si le champ est valorisé à `true` le compte doit être habilité et actif, si le champ est valorisé à `false` le compte doit être déshabilité ou désactivé.
- **ID : 5 – Source de la requête :**
  - La requête venant de la plateforme numérique SAS, le champ meta.source sera toujours valorisé à : `urn:oid:1.2.250.1.213.3.6`.
