This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Agrégateur

#### Structures: Resource Profiles
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

#### Validateur
Le validateur mis à disposition des développeurs dans le cadre du projet SAS offre la possibilité tester le format des bundles de réponse générés. Il permet de vérifier que les réponses sont correctement formatées, que l'ensemble des informations obligatoires sont bien présentes et que les données codifiées exploitent les bonnes nomenclatures.
Pour que le validateur puisse effectuer correctement les contrôles au niveau de la structure, il est nécessaire de renseigner pour chacun des "resourceType" correspondant, le meta.profile "URL" ci-dessous :
- http://sas.fr/fhir/StructureDefinition/BundleAgregateur
- http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur
- http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur
- http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur
- http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur
- http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur

Ci-dessous un exemple :


Le validateur est disponible sur l'espace de test de l'ANS : https://interop.esante.gouv.fr/EVSClient/fhir/validator.seam?standard=FHIR%20(SAS)&extension=SAS. Pour faciliter les tests et conserver l'historique, nous vous recommandons de créer votre compte sur la plateforme.
Afin de tester un fichier, il suffit de sélectionner le format `JSON`, d'ajouter le fichier via le bouton `Add…`, de sélectionner le modèle `FrBundleAgregateurSAS` puis de cliquer sur `valider` :


Vous obtiendrez alors un rapport de test mettant en valeur les erreurs bloquantes et les différents warning :


### Rendez-vous

#### Structures: Resource Profiles
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
