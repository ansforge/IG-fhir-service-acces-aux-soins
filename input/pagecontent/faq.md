Cette section regroupe les réponses aux questions les plus fréquemment posées au cours des travaux de développements menés par les éditeurs, et les tests d'intégration.

### Agrégateur

#### Quel est le format à utiliser afin de transmettre un OID dans un élément `System` ?

<p>L'OID doit être précédé du préfixe `urn:oid:`, comme dans l'exemple suivant : "system": "urn:oid:1.2.250.1.71.4.2.2".</p>
urn:oid:1.2.250.1.71.4.2.1 = IDNPS<br>
urn:oid:1.2.250.1.71.4.2.2 = IDNST

#### Quels codes sont attendus afin de décrire le type d'identifiant de professionnel (élément `identifier.type.coding.code` des ressources `Practitioner`), ou de structure (élément `organization.identifier.type.coding.code` des ressources `Location`), transmis ?

Les valeurs IDNPS (ID National de PS) et IDNST (ID National de STructure), présentes dans la nomenclature http://interopsante.org/fhir/CodeSystem/fr-v2-0203 sont attendues.

#### Quels champs de l'élément identifier des ressources `FrLocation` et `FrPractitioner` sont obligatoires ?

Les éléments `identifier.system`, `identifier.type` et `identifier.value` sont obligatoires.

#### Quelle URL doit être transmise dans l'élément `comment` ?

Il est attendu l'URL de redirection vers l'agenda du PS concerné et non l'URL du créneau.

#### A quel niveau la ressource `FrLocation` doit-elle être transmise ?

Les ressources locations doivent être contenues `contained` dans la ressource `PractitionerRole` associée. Par ailleurs, au niveau de la ressource `PractitionerRole`, la référence vers la ressource `Location` doit être indiquée.

#### Quelle est la ressource discriminante au niveau de la structure du fichier de réponse JSON ?

Il est attendu dans le fichier de réponse JSON d'avoir 1 ressource `Schedule` pour 1 ressource `PractitionerRole`. Cela se traduit par le fait d’avoir 1 agenda pour 1 lieu de consultation. Dans la structure du fichier de réponse, un PS aura ainsi autant d'agendas que de lieux de consultation.

#### Comment intégrer les ID nationaux de structure (FINESS, SIRET, RPPS rang) ?

<table>
<tbody>
<tr>
  <td width="30%"><p><strong>Description</strong></p></td>
  <td><p><strong>Comportement attendu</strong></p></td>
</tr>
<tr>
  <td><p>Gestion des préfixes<br>des ID nationaux<br>de PS et de Structure</p></td>
  <td>
    <p>Quel que soit le format de l'ID national renseigné au niveau de la solution logicielle éditeur (préfixé ou pas) :<br>
    <ul>
      <li>Les créneaux associés aux PS doivent remonter</li>
      <li>Les ID renseignés dans la réponse sont bien préfixés</li>
    </ul>
    Rappel concernant les préfixes attendus :<br><br>
    - Pour les ID nationaux des PS :<br>
    <ul>
      <li>Préfixe "0" pour ADELI</li>
      <li>Préfixe "8" pour RPPS</li>
    </ul>
    - Pour les ID nationaux de structure :<br>
    <ul>
      <li>Préfixe "0" pour les identifiants de cabinet ADELI (ADELI rang)</li>
      <li>Préfixe "1" pour les FINESS</li>
      <li>Préfixe "3" pour les SIRET</li>
      <li>Préfixe "4" pour les identifiants de cabinet RPPS (RPPS rang)</li>
    </ul>
    - Pour l'identifiant de structure, respecter cet ordre :<br>
    <ul>
      <li>Le FINESS (les établissements sanitaires, sociaux et médico-sociaux ont un FINESS)</li>
      <li>Si pas de FINESS le SIRET</li>
      <li>Si ni FINESS ni SIRET alors le RPPS rang/ADELI rang (c'est le cas des cabinets libéraux)</li>
    </ul>
    </p>
  </td>
</tr>
</tbody>
</table>

Les éditeurs ont la possibilité de récupérer les référentiels nationaux des professionnels de santé et de leurs structures associées via l'annuaire santé de l'ANS qui propose deux modalités d'accès :

<table>
<tbody>
<tr>
  <td width="30%"><p><strong>Canal</strong></p></td>
  <td><p><strong>Processus</strong></p></td>
</tr>
<tr>
  <td><p>Extractions à plat</p></td>
  <td>
    <p><strong>Par le téléchargement des fichiers plats : Extractions en libre accès - <a href="https://annuaire.sante.fr/web/site-pro/extractions-publiques">L'Annuaire Santé</a></strong>
    <ul>
      <li>Intitulé du dossier à télécharger : ps_libreacces</li>
      <li>Intitulé du fichier cible : PS_LibreAcces_Personne_activite</li>
    </ul>
    Les données sont ensuite récupérables :<br>
    <ul>
      <li>colonne "Numéro FINESS site" pour FINESS (sans préfixe)</li>
      <li>colonne "Numéro SIRET site" pour SIRET (sans préfixe)</li>
      <li>colonne "Ancien identifiant de la structure" pour RPPS rang ou Adeli rang (avec préfixe)</li>
    </ul>
    La donnée "ancien identifiant de la structure" prend la valeur FINESS ou SIRET (avec préfixe) s'ils sont connus, sinon le champ sera complété avec la donnée RPPS_rang ou Adeli_Rang (avec préfixe).<br>
    Documentation de référence : <a href="https://esante.gouv.fr/sites/default/files/media_entity/documents/Annuaire_sante_fr_DSFT_Extractions_donnees_libre_acces_V2.3.1.pdf">Annuaire_sante_fr_DSFT_Extractions_donnees_libre_acces_V2.3.1</a>
    </p>
  </td>
</tr>
<tr>
  <td><p>Interfaces FHIR</p></td>
  <td>
    <p><strong>Par la récupération via une API mise à disposition par l'ANS</strong><br>
    De nouvelles interfaces sont en cours de co-construction avec les éditeurs.<br>
    Ces nouveaux services permettront d'exposer les données des référentiels Personnes physiques/Personnes morales au format JSON, structurés selon la norme d'interopérabilité FHIR. Une première version sera mise à disposition à l'été 2022.<br>
    Les StructureDefinition ont été publiées et sont accessibles sur : https://simplifier.net/Modelisationdesstructuresetdesprofessionnels
    </p>
  </td>
</tr>
</tbody>
</table>

#### Quelles sont les principales erreurs rencontrées au cours des tests ?

<table>
<tbody>
<tr>
  <td width="5%"><p><strong>ID</strong></p></td>
  <td width="30%"><p><strong>Description</strong></p></td>
  <td><p><strong>Comportement attendu</strong></p></td>
</tr>
<tr>
  <td><p>1</p></td>
  <td><p>Gestion des préfixes des ID<br>de PS et de Structure</p></td>
  <td>
    <p>Quel que soit le format de l'ID renseigné au niveau de la solution logicielle (préfixé ou pas) :<br>
    <ul>
      <li>Les créneaux associés aux PS doivent remonter</li>
      <li>Les ID renseignés dans la réponse sont bien préfixés.</li>
    </ul>
    Rappel concernant les préfixes attendus :<br><br>
    - Pour les ID nationaux des PS :<br>
    <ul>
      <li>Préfixe "0" pour ADELI</li>
      <li>Préfixe "8" pour RPPS</li>
    </ul>
    - Pour les ID nationaux de structure :<br>
    <ul>
      <li>Préfixe "0" pour les identifiants de cabinet ADELI</li>
      <li>Préfixe "1" pour les FINESS</li>
      <li>Préfixe "3" pour les SIRET</li>
      <li>Préfixe "4" pour les identifiants de cabinet RPPS</li>
    </ul>
    </p>
  </td>
</tr>
<tr>
  <td><p>2</p></td>
  <td><p>Format du numéro de téléphone</p></td>
  <td>
    <p>Une logique corrigeant le format du numéro de téléphone renseigné dans la solution logicielle doit être mise en oeuvre.<br>
    Rappel du format attendu : <strong>+33XXXXXXXXX</strong>
    <code><pre>
      "telecom": [
        {
          "system": "phone",
          "value": "+33XXXXXXXXX"
        }
      ]
    </pre></code>
    </p>
  </td>
</tr>
<tr>
  <td><p>3</p></td>
  <td><p>Spécialité et compétences</p></td>
  <td>
  <p>L'ensemble des spécialités ou compétences associées aux créneaux, ou au PS, doivent être transmises. Si l'information est codifiée au niveau de l'application, il doit être transmis au sein d'un élément structuré coding. Sinon, le libellé doit être transmis sous forme de texte au niveau de l'élément text.<br>
  Exemple :
  <code><pre>
    "specialty": [
      {
        "coding": [
          {
            "code": "SM54",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale"
          }
        ]
      },
      {
        "text": "ORL"
      },
  </pre></code>
  </p>
  </td>
</tr>
<tr>
  <td><p>4</p></td>
  <td><p>Type de créneau</p></td>
  <td><p>L'ensemble des types associés aux créneaux doivent être transmis, sous forme codifiée, au niveau de l'élément meta.security.<br>
  Exemple :
  <code><pre>
    "resourceType": "Slot",
    "id": "1636036800",
    "meta": {
      "profile": [
        "http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur"
      ],
      "security": [
        {
          "system": "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
          "code": "PUBLIC"
        },
        {
          "system": "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
          "code": "PRO"
        },
        {
          "system": "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
          "code": "SNP"
        }
      ]
    },
  </pre></code>
  </p>
  </td>
</tr>
<tr>
  <td><p>5</p></td>
  <td><p>Type et motif de consultation</p></td>
  <td>
    <p>Au niveau de l'élément serviceType :
      <ul>
        <li>L'ensemble des types de consultation associés aux créneaux doivent être transmis, sous forme codifiée</li>
        <li>L'ensemble des motifs de consultation associés aux créneaux doivent être transmis, sous forme de texte libre</li>
      </ul>
      Exemple :
      <code><pre>
        "serviceType": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                "code": "VR"
              }
            ]
          },
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                "code": "AMB"
              }
            ]
          },
          {
            "text": "Suivi médical"
          },
          {
            "text": "Pédiatrie"
          }
        ],
      </pre></code>
    </p>
  </td>
</tr>
<tr>
  <td><p>6</p></td>
  <td><p>Gestion des multiples lieux<br>de consultation</p></td>
  <td><p>Lorsqu'un PS dispose de créneaux associés à différents lieux de consultation, il est attendu que l'ensemble des créneaux soient remontés, et soient associés au bon lieu de consultation.</p></td>
</tr>
<tr>
  <td><p>7</p></td>
  <td><p>Gestion des multiples PS</p></td>
  <td><p>Lorsqu'une recherche est faite sur plusieurs PS ayant des créneaux disponibles dans la solution logicielle, il est attendu que l'ensemble des créneaux soient remontés, et soient associés au bon PS.</p></td>
</tr>
<tr>
  <td><p>8</p></td>
  <td><p>Gestion de l'absence de créneaux<br>et agenda PS</p></td>
  <td><p>Lorsqu'aucun créneau n'est disponible ou qu'aucun des PS de la recherche n'est présent dans la solution logicielle, un bundle de réponse vide est attendu.<br>
  Exemple :
  <code><pre>
    "resourceType": "Bundle",
    "id": "8cbb33dc-779e-45e9-a5f6-ea66101288c5",
    "meta": {
      "profile": [
        "http://sas.fr/fhir/StructureDefinition/BundleAgregateur"
      ]
    },
    "type": "searchset",
    "total": 4,
    "link": [
      {
        "relation": "self",
        "url": "https://exemple.com/ans-sas/Slot/?_include=Slot:schedule&_include:iterate=Schedule:actor&status=free&start=ge2021-11-04T14:19:35.760+00:00&start=le2021-11-06T23:59:59.999+00:00&schedule.actor:Practitioner.identifier=urn:oid:1.2.250.1.71.4.2.1%7C810002673899,urn:oid:1.2.250.1.71.4.2.1%7C810100050075&_count=1000"
      }
    ],
  </pre></code>
  </p>
  </td>
</tr>
<tr>
  <td><p>9</p></td>
  <td><p>Eléments vide</p></td>
  <td><p>Lorsqu'une information optionnelle n'est pas renseignée dans la solution logicielle, l'élément correspondant ne doit pas être transmis au niveau de la réponse. Il ne faut pas transmettre un élément vide.</p></td>
</tr>
</tbody>
</table>

### Rendez-vous

#### Comment faire la distinction entre un ID national et un ID technique ?

Un ID national possède une structure bien définie dont les spécificités sont explicitées ici. Un identifiant technique SAS prendra la forme d'un UUID (ex. b6e39355-8a61-4556-b340-36f7b95fec6a) où une REGEX peut-être implémentée côté éditeur.
Dans les spécifications **SAS_SPEC INT_R02_Gestion des comptes régulateurs**, au sein de la requête, les champs `identifier.system` (autorité d'affectation) et `identifier.type` (type d'identifiant) permettent d'indiquer s'il s'agit d'un identifiant technique SAS ou d'un identifiant national.