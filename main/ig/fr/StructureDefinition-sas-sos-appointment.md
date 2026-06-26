# FrAppointmentSASSOS - Service d'Accès aux Soins v1.2.0

## Profil de ressource: FrAppointmentSASSOS 

 
Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Appointment/12345678](Appointment-12345678.md)
* CapabilityStatements utilisant ce Profil: [Profil SAS gestionnaire d'agenda RDV SOS](CapabilityStatement-SAS-GestionnaireAgenda-RDVSOS.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.sas|current/StructureDefinition/sas-sos-appointment)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrAppointment](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrAppointment) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrAppointment](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrAppointment) 

** Résumé **

Obligatoire : 7 éléments(5 éléments obligatoire(s) imbriqué(s))
 Must-Support : 1 élément
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FrOrganization (http://interopsante.org/fhir/StructureDefinition/FrOrganization)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization)
* [FrPractitioner (http://interopsante.org/fhir/StructureDefinition/FrPractitioner)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner)
* [FrPatient (http://interopsante.org/fhir/StructureDefinition/FrPatient)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPatient)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FrAppointment](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrAppointment) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FrAppointment](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrAppointment) 

** Résumé **

Obligatoire : 7 éléments(5 éléments obligatoire(s) imbriqué(s))
 Must-Support : 1 élément
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FrOrganization (http://interopsante.org/fhir/StructureDefinition/FrOrganization)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization)
* [FrPractitioner (http://interopsante.org/fhir/StructureDefinition/FrPractitioner)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner)
* [FrPatient (http://interopsante.org/fhir/StructureDefinition/FrPatient)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPatient)

 

Autres représentations du profil : [CSV](../StructureDefinition-sas-sos-appointment.csv), [Excel](../StructureDefinition-sas-sos-appointment.xlsx), [Schematron](../StructureDefinition-sas-sos-appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sas-sos-appointment",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-appointment",
  "version" : "1.2.0",
  "name" : "FrAppointmentSASSOS",
  "status" : "active",
  "date" : "2026-06-26T14:40:16+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de Slot, dérivé de FrSlot, pour le service d’agrégation de créneaux de la plateforme SAS - cas d’usage SOS Médecins",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "http://interopsante.org/fhir/StructureDefinition/FrAppointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.extension",
      "path" : "Appointment.extension",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Appointment.extension:appointmentOperator",
      "path" : "Appointment.extension",
      "sliceName" : "appointmentOperator",
      "min" : 1
    },
    {
      "id" : "Appointment.extension:appointmentOperator.extension",
      "path" : "Appointment.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Appointment.extension:appointmentOperator.value[x]",
      "path" : "Appointment.extension.value[x]",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference",
      "path" : "Appointment.extension.value[x]",
      "sliceName" : "valueReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://interopsante.org/fhir/StructureDefinition/FrOrganization",
        "http://interopsante.org/fhir/StructureDefinition/FrPractitioner",
        "http://interopsante.org/fhir/StructureDefinition/FrPatient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier.type",
      "path" : "Appointment.extension.value[x].identifier.type",
      "min" : 1
    },
    {
      "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier.type.coding",
      "path" : "Appointment.extension.value[x].identifier.type.coding",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-typeidentifiant"
      }
    },
    {
      "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier.type.coding.code",
      "path" : "Appointment.extension.value[x].identifier.type.coding.code",
      "min" : 1
    },
    {
      "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier.system",
      "path" : "Appointment.extension.value[x].identifier.system",
      "min" : 1
    },
    {
      "id" : "Appointment.extension:appointmentOperator.value[x]:valueReference.identifier.value",
      "path" : "Appointment.extension.value[x].identifier.value",
      "min" : 1
    },
    {
      "id" : "Appointment.identifier",
      "path" : "Appointment.identifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Appointment.identifier.system",
      "path" : "Appointment.identifier.system",
      "min" : 1
    },
    {
      "id" : "Appointment.identifier.value",
      "path" : "Appointment.identifier.value",
      "min" : 1
    },
    {
      "id" : "Appointment.start",
      "path" : "Appointment.start",
      "min" : 1
    },
    {
      "id" : "Appointment.end",
      "path" : "Appointment.end",
      "min" : 1
    },
    {
      "id" : "Appointment.created",
      "path" : "Appointment.created",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.status",
      "path" : "Appointment.participant.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/sas/ValueSet/sas-valueset-participant-status"
      }
    }]
  }
}

```
