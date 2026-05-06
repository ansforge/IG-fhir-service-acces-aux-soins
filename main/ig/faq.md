# FAQ - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Autres Ressources**](autres_ressources.md)
* **FAQ**

## FAQ

Cette section regroupe les réponses aux questions les plus fréquemment posées au cours des travaux de développements menés par les éditeurs, et les tests d'intégration.

### Agrégateur PS à titre individuel - CPTS

#### Quel est le format à utiliser afin de transmettre un OID dans un élément System ?

L'OID doit être précédé du préfixe `urn:oid:`, comme dans l'exemple suivant : "system": "urn:oid:1.2.250.1.71.4.2.2".

urn:oid:1.2.250.1.71.4.2.1 = IDNPS
 urn:oid:1.2.250.1.71.4.2.2 = IDNST

#### Quels codes sont attendus afin de décrire le type d'identifiant de professionnel (élément identifier.type.coding.code des ressources Practitioner), ou de structure (élément organization.identifier.type.coding.code des ressources Location), transmis ?

Les valeurs IDNPS (ID National de PS) et IDNST (ID National de STructure), présentes dans la nomenclature [http://interopsante.org/fhir/CodeSystem/fr-v2-0203](http://interopsante.org/fhir/CodeSystem/fr-v2-0203) sont attendues.

#### Quels champs de l'élément identifier des ressources FrLocation et FrPractitioner sont obligatoires ?

Les éléments `identifier.system`, `identifier.type` et `identifier.value` sont obligatoires.

#### Quelle URL doit être transmise dans l'élément comment ?

Il est attendu l'URL de redirection vers l'agenda du PS concerné et non l'URL du créneau.

#### A quel niveau la ressource FrLocation doit-elle être transmise ?

Les ressources locations doivent être contenues `contained` dans la ressource `PractitionerRole` associée. Par ailleurs, au niveau de la ressource `PractitionerRole`, la référence vers la ressource `Location` doit être indiquée.

#### Quelle est la ressource discriminante au niveau de la structure de réponse JSON ?

Il est attendu dans le fichier de réponse JSON d'avoir 1 ressource `Schedule` pour 1 ressource `PractitionerRole`. Cela se traduit par le fait d’avoir 1 agenda pour 1 lieu de consultation. Dans la structure du fichier de réponse, un PS aura ainsi autant d'agendas que de lieux de consultation.

#### Quelles sont les ressources à transmettre lorsqu'un créneau de disponibilité transmis est mis en visibilité d'une ou plusieurs CPTS ?

Il est attendu dans le fichier de réponse JSON d’avoir la relation : 1 ressource HealthcareService pour 1 ressource Organization (modélisant la structure CPTS).
 Dans la structure du fichier de réponse, si un créneau est associé à plusieurs CPTS, alors il y aura autant de références à de ressources HealthcareService qu’il y a de CPTS.

#### Comment intégrer les ID nationaux de structure (FINESS, SIRET, RPPS rang) ?

| | |
| :--- | :--- |
| **Description** | **Comportement attendu** |
| Gestion des préfixesdes ID nationauxde PS et de Structure | Quel que soit le format de l'ID national renseigné au niveau de la solution logicielle éditeur (préfixé ou pas) : * Les créneaux associés aux PS doivent remonter
* Les ID renseignés dans la réponse sont bien préfixés
 Rappel concernant les préfixes attendus : - Pour les ID nationaux des PS : * Préfixe "0" pour ADELI
* Préfixe "8" pour RPPS
 - Pour les ID nationaux de structure : * Préfixe "0" pour les identifiants de cabinet ADELI (ADELI rang)
* Préfixe "1" pour les FINESS
* Préfixe "3" pour les SIRET
* Préfixe "4" pour les identifiants de cabinet RPPS (RPPS rang)
 - Pour l'identifiant de structure, respecter cet ordre : * Le FINESS (les établissements sanitaires, sociaux et médico-sociaux ont un FINESS)
* Si pas de FINESS le SIRET
* Si ni FINESS ni SIRET alors le RPPS rang/ADELI rang (c'est le cas des cabinets libéraux)
  |

Les éditeurs ont la possibilité de récupérer les référentiels nationaux des professionnels de santé et de leurs structures associées via l'annuaire santé de l'ANS qui propose deux modalités d'accès :

| | |
| :--- | :--- |
| **Canal** | **Processus** |
| Extractions à plat | **Par le téléchargement des fichiers plats : Extractions en libre accès - [L'Annuaire Santé](https://annuaire.sante.fr/web/site-pro/extractions-publiques)** * Intitulé du dossier à télécharger : ps_libreacces
* Intitulé du fichier cible : PS_LibreAcces_Personne_activite
 Les données sont ensuite récupérables : * colonne "Numéro FINESS site" pour FINESS (sans préfixe)
* colonne "Numéro SIRET site" pour SIRET (sans préfixe)
* colonne "Ancien identifiant de la structure" pour RPPS rang ou Adeli rang (avec préfixe)
 La donnée "ancien identifiant de la structure" prend la valeur FINESS ou SIRET (avec préfixe) s'ils sont connus, sinon le champ sera complété avec la donnée RPPS_rang ou Adeli_Rang (avec préfixe). Documentation de référence : [Annuaire_sante_fr_DSFT_Extractions_donnees_libre_acces_V2.3.1](https://esante.gouv.fr/sites/default/files/media_entity/documents/Annuaire_sante_fr_DSFT_Extractions_donnees_libre_acces_V2.3.1.pdf)  |
| Interfaces FHIR | **Par la récupération via une API mise à disposition par l'ANS** Une API en libre accès, permettant d'exposer les données des référentiels Personnes physiques/Personnes morales au format JSON, structurés selon la norme d'interopérabilité FHIR est mise à disposition avec la documentation associée ci-dessous : <https://ansforge.github.io/annuaire-sante-fhir-documentation/>  |

#### Quelles sont les principales erreurs rencontrées au cours des tests ?

| | | |
| :--- | :--- | :--- |
| **ID** | **Description** | **Comportement attendu** |
| 1 | Gestion des préfixes des IDde PS et de Structure | Quel que soit le format de l'ID renseigné au niveau de la solution logicielle (préfixé ou pas) : * Les créneaux associés aux PS doivent remonter
* Les ID renseignés dans la réponse sont bien préfixés.
 Rappel concernant les préfixes attendus : - Pour les ID nationaux des PS : * Préfixe "0" pour ADELI
* Préfixe "8" pour RPPS
 - Pour les ID nationaux de structure : * Préfixe "0" pour les identifiants de cabinet ADELI
* Préfixe "1" pour les FINESS
* Préfixe "3" pour les SIRET
* Préfixe "4" pour les identifiants de cabinet RPPS
  |
| 2 | Format du numéro de téléphone | Une logique corrigeant le format du numéro de téléphone renseigné dans la solution logicielle doit être mise en oeuvre. Rappel du format attendu : **+33XXXXXXXXX** ```` { "telecom": [ { "system": "phone", "value": "+33XXXXXXXXX" } ] } ````  |
| 3 | Spécialité et compétences | L'ensemble des spécialités ou compétences associées aux créneaux, ou au PS, doivent être transmises. Si l'information est codifiée au niveau de l'application, il doit être transmis au sein d'un élément structuré coding. Sinon, le libellé doit être transmis sous forme de texte au niveau de l'élément text. Exemple : ```` "specialty": [ { "coding": [ { "code": "SM54", "system": "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale" } ] }, { "text": "ORL" }] ````  |
| 4 | Type de créneau | L'ensemble des types associés aux créneaux doivent être transmis, sous forme codifiée, au niveau de l'élément meta.security. Exemple : ```` "resourceType": "Slot", "id": "1636036800", "meta": { "profile": [ "http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur" ], "security": [ { "system": "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau", "code": "PUBLIC" }, { "system": "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau", "code": "PRO" }, { "system": "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau", "code": "SNP" }, { "system": "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau", "code": "CPTS" } ] } ````  |
| 5 | Type et motif de consultation | Au niveau de l'élément serviceType : * L'ensemble des types de consultation associés aux créneaux doivent être transmis, sous forme codifiée
* L'ensemble des motifs de consultation associés aux créneaux doivent être transmis, sous forme de texte libre
 Exemple : ```` "serviceType": [ { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "VR" } ] }, { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "AMB" } ] }, { "text": "Suivi médical" }, { "text": "Pédiatrie" } ] ````  |
| 6 | Créneau de type CPTS | Dans le cas d'un créneau mis en visibilité d'une (ou plusieurs) CPTS, des données supplémentaires sont à renseigner au sein de la ressource Slot, au niveau du serviceType. - Le type de soins correspondant aux structures de CPTS Exemple : ```` "serviceType": [ { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "VR" } ] }, { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "AMB" } ] }, { "text": "Suivi médical" }, { "text": "Pédiatrie" }, { "coding": [ { "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement", "code": "604" } ], "extension": [ { "url": "http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType", "valueReference": { "reference": "HealthcareService/e9e31708-9550-4197-8c32-ae541b6a5cbd" } } ] } ] ```` - Il sera également attendu de transmettre les ressources HealthcareService et Organization correspondantes (cf. tableau de valeur et nomenclature 2.3.1 et 2.3.2)  |
| 7 | Gestion des multiples lieuxde consultation | Lorsqu'un PS dispose de créneaux associés à différents lieux de consultation, il est attendu que l'ensemble des créneaux soient remontés, et soient associés au bon lieu de consultation. |
| 8 | Gestion des multiples PS | Lorsqu'une recherche est faite sur plusieurs PS ayant des créneaux disponibles dans la solution logicielle, il est attendu que l'ensemble des créneaux soient remontés, et soient associés au bon PS. |
| 9 | Gestion de l'absence de créneauxet agenda PS | Lorsqu'aucun créneau n'est disponible ou qu'aucun des PS de la recherche n'est présent dans la solution logicielle, un bundle de réponse vide est attendu. Exemple : ```` "resourceType": "Bundle", "id": "8cbb33dc-779e-45e9-a5f6-ea66101288c5", "meta": { "profile": [ "http://sas.fr/fhir/StructureDefinition/BundleAgregateur" ] }, "type": "searchset", "total": 0, "link": [ { "relation": "self", "url": "https://exemple.com/ans-sas/Slot/?_include=Slot:schedule&_include:iterate=Schedule:actor&status=free&start=ge2021-11-04T14:19:35.760+00:00&start=le2021-11-06T23:59:59.999+00:00&schedule.actor:Practitioner.identifier=urn:oid:1.2.250.1.71.4.2.1%7C810002673899,urn:oid:1.2.250.1.71.4.2.1%7C810100050075&_count=1000" } ] ````  |
| 10 | Eléments vide | Lorsqu'une information optionnelle n'est pas renseignée dans la solution logicielle, l'élément correspondant ne doit pas être transmis au niveau de la réponse. Il ne faut pas transmettre un élément vide. |
| 11 | Créneau mis en visibilité de 2 CPTS | Lorsqu’un créneau est mis en visibilité de plusieurs CPTS, les ressources associées pour faire le lien avec chacune de ces CPTS sont attendues :  Exemple : ```` "resourceType" : "Slot", "id" : "ExampleSlotCPTS2", "meta" : { "profile" : [ 🔗 "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-cpts-slot-aggregator" ], "security" : [ { "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau", "code" : "PUBLIC" }, { "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau", "code" : "CPTS" } ] }, "serviceType" : [ { "coding" : [ { "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code" : "AMB" } ], "text" : "Visite de contrôle" }, { "extension" : [ { "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType", "valueReference" : { 🔗 "reference" : "HealthcareService/ExampleHealthcareServiceCPTS1" } } ], "coding" : [ { "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement", "code" : "604" } ] }, { "extension" : [ { "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Slot.serviceType", "valueReference" : { 🔗 "reference" : "HealthcareService/ExampleHealthcareServiceCPTS2" } } ], "coding" : [ { "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement", "code" : "604" } ] } ], "specialty" : [ { "coding" : [ { "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale", "code" : "SM54" } ] } ], "appointmentType" : { "coding" : [ { "system" : "http://terminology.hl7.org/CodeSystem/v2-0276", "code" : "ROUTINE" } ] }, "schedule" : { 🔗 "reference" : "Schedule/ExampleSchedule" }, "status" : "free", "start" : "2024-06-12T16:40:00.000+02:00", "end" : "2024-06-12T17:00:00.000+02:00", "comment" : "https://exemple.com/rdv/com/" ````  |
| 12 | Créneau non rattaché à une CPTS |  Si pour une ressource Slot, le type de créneau ne contient pas la valorisation `CPTS` (ID 14) mais uniquement PUBLIC, PRO et/ou SNP, alors aucune donnée supplémentaire n’est attendue. On est dans la configuration du flux d'agrégation de disponibilités INT_R01 (PS à titre individuel) qui a déjà été implémenté par l'éditeur.  |

### Agrégateur SOS Médecins

#### Quel est le format à utiliser afin de transmettre un OID dans un élément System ?

L’OID doit être précédé du préfixe `urn:oid:`, comme dans l’exemple suivant : "system": "urn:oid:1.2.250.1.71.4.2.2" (pour les IDNST).

#### Quels champs de l’élément identifier des ressources FrLocation et FrOrganization sont obligatoires ?

Les éléments `identifier.system`, `identifier.type` et `identifier.value` sont obligatoires.

#### Quelle URL doit être transmise dans l’élément comment ?

Il est attendu l’URL de redirection vers l’agenda du point fixe de garde (PFG) et dans la mesure du possible vers le créneau sélectionné directement.

#### Quelle est la ressource discriminante au niveau de la structure de réponse JSON ?

Il est attendu dans le fichier de réponse JSON d’avoir 1 ressource Schedule pour 1 ressource Location. Cela se traduit par le fait d’avoir 1 agenda pour 1 point fixe de garde (lieu de consultation). Dans la structure du fichier de réponse, une association SOS Médecins aura ainsi autant d’agendas que de points fixes de garde (PFG).

#### Quelles sont les principales erreurs rencontrées au cours des tests ?

Le tableau ci-dessous présente les erreurs rencontrées de manière récurrente lors de la phase de recette connectée. Il est recommandé de porter une attention particulière à cette section :

| | | |
| :--- | :--- | :--- |
| **ID** | **Description** | **Comportement attendu** |
| 1 | Gestion des préfixes des ID de Structure | Quel que soit le format de l'ID renseigné au niveau de la solution logicielle (préfixé ou pas) : * Les créneaux associés aux PFG doivent remonter
* Les ID renseignés dans la réponse sont bien préfixés.
 Rappel concernant les préfixes attendus : Pour les ID nationaux de structure : * Préfixe "0" pour les identifiants de cabinet ADELI
* Préfixe "1" pour les FINESS
* Préfixe "3" pour les SIRET
* Préfixe "4" pour les identifiants de cabinet RPPS
  |
| 2 | Format du numéro de téléphone | Une logique corrigeant le format du numéro de téléphone renseigné dans la solution logicielle doit être mise en oeuvre. Rappel du format attendu : **+33XXXXXXXXX** ```` "telecom": [ { "system": "phone", "value": "+33XXXXXXXXX" } ] ````  |
| 3 | Type de créneau | L'ensemble des types associés aux créneaux doivent être transmis, sous forme codifiée, au niveau de l'élément meta.security. Pour le cas d’usage SOS Médecins, les codes applicables sont : PUBLIC et SNP Exemple : ```` "resourceType": "Slot", "id": "1636036800", "meta": { "profile": [ "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator" ], "security": [ { "system": "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau", "code": "PUBLIC" }, { "system": "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau", "code": "SNP" } ] } ````  |
| 4 | Gestion des multiples PFG | Lorsqu’une association SOS Médecins dispose de créneaux associés à différents PFG, il est attendu que l’ensemble des créneaux soient remontés et soient associés au bon PFG. |
| 5 | Gestion de l'absence de créneaux pour uneassociation SOS Médecins | Lorsqu’aucun créneau n’est disponible ou qu’aucune association SOS Médecins de la recherche n’est présent dans la solution logicielle, un bundle de réponse vide est attendu Exemple : ```` "resourceType": "Bundle", "id": "8cbb33dc-779e-45e9-a5f6-ea66101288c5", "meta": { "profile": [ "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-bundle-aggregator" ] }, "type": "searchset", "total": 0, "link": [ { "relation": "self", "url": "https://editeur.fr/Schedule?_revinclude=Slot:schedule&_include=Schedule:actor:Location&_include:iterate=Location:organization&_has:Slot:schedule:start=ge2023-08-18T09:00:00+02:00&_has:Slot:schedule:start=le2023-08-20T08:00:00+02:00&_has:Slot:schedule:status=free&actor:Location.organization.identifier=urn:oid:1.2.250.1.71.4.2.2%7C334173748400020,urn:oid:1.2.250.1.71.4.2.2%7C392080466300010&_count=1000" } ] ````  |
| 6 | Eléments vide | Lorsqu'une information optionnelle n'est pas renseignée dans la solution logicielle, l'élément correspondant ne doit pas être transmis au niveau de la réponse. Il ne faut pas transmettre un élément vide. |

### Gestion des comptes régulateurs

Cette section regroupe les réponses aux questions les plus fréquemment posées au cours des travaux de développements menés par les éditeurs, et les tests d’intégration.

**Pourrions-nous avoir un exemple d’appel dans le cas d’une modification de l’identifiant d’un compte régulateur ?**

L’exemple ci-dessous concerne la modification de l’identifiant du compte du régulateur Jules MARIUS, initialement associé à l’ID technique SAS `b6e39355-8a61-4556-b340-36f7b95fec6a`. La valorisation de l’élément `identifier.value` à `810002673899` indique le nouvel identifiant à prendre en compte.

Requête curl -X PUT EDITEUR.fr/Practitioner?identifier=urn:oid:1.2.250.1.213.3.6|b6e39355-8a61-4556-b340-36f7b95fec6a -H 'Accept: application/json+fhir' -d

Résultat

**Pourrions-nous avoir un exemple d’appel dans le cas d’une modification de l’identifiant d’un compte régulateur ?**

L’exemple ci-dessous concerne la désactivation du compte du régulateur Jules MARIUS. La valorisation de l’élément `active` à `false` indique que le compte doit être désactivé.

Requête curl -X PUT EDITEUR.fr/Practitioner?identifier=urn:oid:1.2.250.1.71.4.2.1|810002673899 -H 'Accept: application/json+fhir' -d

Résultat

**Est-il nécessaire d’utiliser un nouveau endpoint pour la création des comptes régulateurs dans la solution logicielle éditeur ?**

Non, le endpoint attendu pour l’envoi des requêtes POST et PUT relatif à la gestion des comptes régulateurs doit être le même que celui transmis et utilisé pour le flux d’agrégation de créneaux de disponibilités.

### Gestion des RDV

#### Comment faire la distinction entre un ID national et un ID technique ?

Un ID national possède une structure bien définie dont les spécificités sont explicitées ici. Un identifiant technique SAS prendra la forme d'un UUID (ex. b6e39355-8a61-4556-b340-36f7b95fec6a) où une REGEX peut-être implémentée côté éditeur. Cf. [règles de gestion comptes régulateurs](./specifications_techniques-ps-gestion_regulateur.md#r%C3%A8gles-de-gestion), au sein de la requête, les champs `identifier.system` (autorité d'affectation) et `identifier.type` (type d'identifiant) permettent d'indiquer s'il s'agit d'un identifiant technique SAS ou d'un identifiant national. 


### Transmission des informations de RDV aux LRM

A venir

