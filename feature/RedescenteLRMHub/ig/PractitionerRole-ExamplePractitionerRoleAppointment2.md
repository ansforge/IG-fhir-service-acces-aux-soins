# ExamplePractitionerRoleAppointment2 - Service d'Accès aux Soins v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExamplePractitionerRoleAppointment2**

## Example PractitionerRole: ExamplePractitionerRoleAppointment2

Profil: [SASPractitionerRoleLRM](StructureDefinition-sas-practitioner-role-lrm.md)

**practitioner**: [Practitioner Jean Dupont](Practitioner-ExamplePractitionerLRM.md)

**organization**: [Organization CPTS DU HAUT BUGEY](Organization-ExampleSasOrganization3.md)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ExamplePractitionerRoleAppointment2",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-practitioner-role-lrm"
    ]
  },
  "practitioner" : {
    "reference" : "Practitioner/ExamplePractitionerLRM"
  },
  "organization" : {
    "reference" : "Organization/ExampleSasOrganization3"
  }
}

```
