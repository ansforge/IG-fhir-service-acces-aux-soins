# ExamplePractitionerRoleAppointment1 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExamplePractitionerRoleAppointment1**

## Example PractitionerRole: ExamplePractitionerRoleAppointment1

Profil: [SASPractitionerRoleLRM](StructureDefinition-sas-practitioner-role-lrm.md)

**practitioner**: [Practitioner Jean Dupont](Practitioner-ExamplePractitionerLRM.md)

**organization**: [Organization SOS Médecins de Rennes](Organization-ExampleSasOrganization1.md)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ExamplePractitionerRoleAppointment1",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-role-lrm"
    ]
  },
  "practitioner" : {
    "reference" : "Practitioner/ExamplePractitionerLRM"
  },
  "organization" : {
    "reference" : "Organization/ExampleSasOrganization1"
  }
}

```
