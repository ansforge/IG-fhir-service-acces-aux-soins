<!-- Recherche des créneaux -->
### Caractéristiques de l'API
Cette requête s'appuie sur le flux 3A du volet d'agenda partagé du CI-SIS.

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
https://www.hl7.org/fhir/http.html

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

### Exemple de requête

**Requête :**

`get[BASE]/Slot?_include=Slot:schedule&_include:iterate=Schedule:actor&start=ge2021-01-02T10:00:00&start=le2021-01-06T10:00:00&schedule.actor:Practitioner.identifier=urn:oid:1.2.250.1.71.4.2.1|810101288385, urn:oid:1.2.250.1.71.4.2.1|800001288385,urn:oid:1.2.250.1.71.4.2.1|810106738385&status=free`

**Réponse "simplifiée" :**

```json
HTTP 200 OK
  resourceType: Bundle
  type: searchset
  total: 4
  Slot1 (match)
  Slot2 (match)
  Slot3 (match)
  Slot4 (match)

```

