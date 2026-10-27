# ExampleBundleSOS - Service d'Accès aux Soins v1.2.0

## Exemple Bundle: ExampleBundleSOS



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ExampleBundleSOS",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-bundle-aggregator"]
  },
  "type" : "searchset",
  "total" : 4,
  "link" : [{
    "relation" : "self",
    "url" : "https://editeur.fr/Schedule?_revinclude=Slot:schedule&_include=Schedule:actor:Location&_include:iterate=Location:organization&_has:Slot:schedule:start=ge2023-08-18T09:00:00+02:00&_has:Slot:schedule:start=le2023-08-20T08:00:00+02:00&_has:Slot:schedule:status=free&actor:Location.organization.identifier=urn:oid:1.2.250.1.71.4.2.2%7C334173748400020,urn:oid:1.2.250.1.71.4.2.2%7C392080466300010&_count=1000"
  }],
  "entry" : [{
    "fullUrl" : "https://exemple.com/ans-sas/Slot/ExampleSlotSOS1",
    "resource" : {
      "resourceType" : "Slot",
      "id" : "ExampleSlotSOS1",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator"],
        "security" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
          "code" : "PUBLIC"
        },
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
          "code" : "SNP"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Slot_ExampleSlotSOS1\"> </a><p class=\"res-header-id\"><b>Narratif généré : Slot ExampleSlotSOS1</b></p><a name=\"ExampleSlotSOS1\"> </a><a name=\"hcExampleSlotSOS1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-slot-aggregator.html\">FrSlotAgregateurSOS</a></p><p style=\"margin-bottom: 0px\">Label de sécurités: <a href=\"https://smt.esante.gouv.fr/fhir/CodeSystem/TRE-R314-TypeCreneau\">Créneau accessible par le grand public (Détails : code TRE_R314_TypeCreneau PUBLIC = 'Créneau accessible par le grand public')</a>, <a href=\"https://smt.esante.gouv.fr/fhir/CodeSystem/TRE-R314-TypeCreneau\">Créneau accessible par les Régulateurs et Organisateurs de Soins Non Programmés (Détails : code TRE_R314_TypeCreneau SNP = 'Créneau accessible par les Régulateurs et Organisateurs de Soins Non Programmés')</a></p></div><p><b>serviceType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v3-ActCode AMB}\">ambulatory</span>, <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v3-ActCode VR}\">virtual</span></p><p><b>appointmentType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v2-0276 ROUTINE}\">Routine appointment - default if not valued</span></p><p><b>schedule</b>: <a href=\"Schedule-ExampleScheduleSOS1.html\">Schedule</a></p><p><b>status</b>: Free</p><p><b>start</b>: 2023-08-18 09:00:00+0200</p><p><b>end</b>: 2023-08-18 09:30:00+0200</p><p><b>comment</b>: http://www.editeur.com/agenda-pfg/creneau1</p></div></div>"
      },
      "serviceType" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "AMB"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "VR"
        }]
      }],
      "appointmentType" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
          "code" : "ROUTINE"
        }]
      },
      "schedule" : {
        "reference" : "Schedule/ExampleScheduleSOS1"
      },
      "status" : "free",
      "start" : "2023-08-18T09:00:00.000+02:00",
      "end" : "2023-08-18T09:30:00.000+02:00",
      "comment" : "http://www.editeur.com/agenda-pfg/creneau1"
    },
    "search" : {
      "mode" : "include"
    }
  },
  {
    "fullUrl" : "https://exemple.com/ans-sas/Schedule/ExampleScheduleSOS1",
    "resource" : {
      "resourceType" : "Schedule",
      "id" : "ExampleScheduleSOS1",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Schedule_ExampleScheduleSOS1\"> </a><p class=\"res-header-id\"><b>Narratif généré : Schedule ExampleScheduleSOS1</b></p><a name=\"ExampleScheduleSOS1\"> </a><a name=\"hcExampleScheduleSOS1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-schedule-aggregator.html\">FrScheduleAgregateurSOS</a></p></div><p><b>actor</b>: <a href=\"Location-1111111111.html\">Centre de consultation Rennes Nord (Identifiant interne: 1111111111)</a></p></div></div>"
      },
      "actor" : [{
        "reference" : "Location/1111111111"
      }]
    },
    "search" : {
      "mode" : "match"
    }
  },
  {
    "fullUrl" : "https://exemple.com/ans-sas/Location/1111111111",
    "resource" : {
      "resourceType" : "Location",
      "id" : "1111111111",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Location_1111111111\"> </a><p class=\"res-header-id\"><b>Narratif généré : Localisation 1111111111</b></p><a name=\"1111111111\"> </a><a name=\"hc1111111111\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-location-aggregator.html\">FrLocationAgregateurSOS</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Centre de consultation Rennes Nord (Identifiant interne: 1111111111)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Physical location\">Address:</td><td colspan=\"3\">320 avenue Général Georges Patton RENNES 35700 </td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to make contact with the location\">Coordonnées</td><td colspan=\"3\"><a href=\"tel:+33193246789\">+33193246789</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization responsible for the provisioning and upkeep of the location\">Managed By:</td><td colspan=\"3\"><a href=\"Organization-ExampleOrgaSOS1.html\">SOS Médecins de Rennes (Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS: 334173748400020)</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"When the location is (and is not) open\">Hours:</td><td colspan=\"3\"><ul><li>Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday: 08:00:00 - 19:00:00</li></ul></td></tr></table></div></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
            "code" : "INTRN"
          }]
        },
        "system" : "https://editeur.com",
        "value" : "1111111111"
      }],
      "name" : "Centre de consultation Rennes Nord",
      "telecom" : [{
        "system" : "phone",
        "value" : "+33193246789"
      }],
      "address" : {
        "line" : ["320 avenue Général Georges Patton"],
        "city" : "RENNES",
        "postalCode" : "35700"
      },
      "managingOrganization" : {
        "reference" : "Organization/ExampleOrgaSOS1"
      },
      "hoursOfOperation" : [{
        "daysOfWeek" : ["tue", "wed", "thu", "fri", "sat", "sun"],
        "openingTime" : "08:00:00",
        "closingTime" : "19:00:00"
      }]
    },
    "search" : {
      "mode" : "include"
    }
  },
  {
    "fullUrl" : "https://exemple.com/ans-sas/Organization/ExampleOrgaSOS1",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "ExampleOrgaSOS1",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Organization_ExampleOrgaSOS1\"> </a><p class=\"res-header-id\"><b>Narratif généré : Organisation ExampleOrgaSOS1</b></p><a name=\"ExampleOrgaSOS1\"> </a><a name=\"hcExampleOrgaSOS1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-organization-aggregator.html\">FrOrganizationAgregateurSOS</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">SOS Médecins de Rennes (Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS: 334173748400020)</p><hr/></div></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
            "code" : "IDNST"
          }]
        },
        "system" : "urn:oid:1.2.250.1.71.4.2.2",
        "value" : "334173748400020"
      }],
      "name" : "SOS Médecins de Rennes"
    },
    "search" : {
      "mode" : "include"
    }
  },
  {
    "fullUrl" : "https://exemple.com/ans-sas/Slot/ExampleSlotSOS2",
    "resource" : {
      "resourceType" : "Slot",
      "id" : "ExampleSlotSOS2",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator"],
        "security" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
          "code" : "PUBLIC"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Slot_ExampleSlotSOS2\"> </a><p class=\"res-header-id\"><b>Narratif généré : Slot ExampleSlotSOS2</b></p><a name=\"ExampleSlotSOS2\"> </a><a name=\"hcExampleSlotSOS2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-slot-aggregator.html\">FrSlotAgregateurSOS</a></p><p style=\"margin-bottom: 0px\">Label de sécurité: <a href=\"https://smt.esante.gouv.fr/fhir/CodeSystem/TRE-R314-TypeCreneau\">Créneau accessible par le grand public (Détails : code TRE_R314_TypeCreneau PUBLIC = 'Créneau accessible par le grand public')</a></p></div><p><b>serviceType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v3-ActCode AMB}\">ambulatory</span></p><p><b>appointmentType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v2-0276 ROUTINE}\">Routine appointment - default if not valued</span></p><p><b>schedule</b>: <a href=\"Schedule-ExampleScheduleSOS2.html\">Schedule</a></p><p><b>status</b>: Free</p><p><b>start</b>: 2023-08-19 11:00:00+0200</p><p><b>end</b>: 2023-08-19 11:30:00+0200</p><p><b>comment</b>: http://www.editeur.com/agenda-pfg/creneau2</p></div></div>"
      },
      "serviceType" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "AMB"
        }]
      }],
      "appointmentType" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
          "code" : "ROUTINE"
        }]
      },
      "schedule" : {
        "reference" : "Schedule/ExampleScheduleSOS2"
      },
      "status" : "free",
      "start" : "2023-08-19T11:00:00.000+02:00",
      "end" : "2023-08-19T11:30:00.000+02:00",
      "comment" : "http://www.editeur.com/agenda-pfg/creneau2"
    },
    "search" : {
      "mode" : "include"
    }
  },
  {
    "fullUrl" : "https://exemple.com/ans-sas/Schedule/ExampleScheduleSOS2",
    "resource" : {
      "resourceType" : "Schedule",
      "id" : "ExampleScheduleSOS2",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Schedule_ExampleScheduleSOS2\"> </a><p class=\"res-header-id\"><b>Narratif généré : Schedule ExampleScheduleSOS2</b></p><a name=\"ExampleScheduleSOS2\"> </a><a name=\"hcExampleScheduleSOS2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-schedule-aggregator.html\">FrScheduleAgregateurSOS</a></p></div><p><b>actor</b>: <a href=\"Location-2222222222.html\">Centre de consultation Rennes Cleunay (Identifiant interne: 2222222222)</a></p></div></div>"
      },
      "actor" : [{
        "reference" : "Location/2222222222"
      }]
    },
    "search" : {
      "mode" : "match"
    }
  },
  {
    "fullUrl" : "https://exemple.com/ans-sas/Location/2222222222",
    "resource" : {
      "resourceType" : "Location",
      "id" : "2222222222",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Location_2222222222\"> </a><p class=\"res-header-id\"><b>Narratif généré : Localisation 2222222222</b></p><a name=\"2222222222\"> </a><a name=\"hc2222222222\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-location-aggregator.html\">FrLocationAgregateurSOS</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Centre de consultation Rennes Cleunay (Identifiant interne: 2222222222)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Physical location\">Address:</td><td colspan=\"3\">106 rue Eugène Pottier RENNES 35000 </td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to make contact with the location\">Coordonnées</td><td colspan=\"3\"><a href=\"tel:+33145249912\">+33145249912</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization responsible for the provisioning and upkeep of the location\">Managed By:</td><td colspan=\"3\"><a href=\"Organization-ExampleOrgaSOS1.html\">SOS Médecins de Rennes (Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS: 334173748400020)</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"When the location is (and is not) open\">Hours:</td><td colspan=\"3\"><ul><li>Monday, Tuesday, Wednesday, Thursday: 09:00:00 - 21:00:00</li></ul></td></tr></table></div></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
            "code" : "INTRN"
          }]
        },
        "system" : "https://editeur.com",
        "value" : "2222222222"
      }],
      "name" : "Centre de consultation Rennes Cleunay",
      "telecom" : [{
        "system" : "phone",
        "value" : "+33145249912"
      }],
      "address" : {
        "line" : ["106 rue Eugène Pottier"],
        "city" : "RENNES",
        "postalCode" : "35000"
      },
      "managingOrganization" : {
        "reference" : "Organization/ExampleOrgaSOS1"
      },
      "hoursOfOperation" : [{
        "daysOfWeek" : ["mon", "tue", "wed", "thu"],
        "openingTime" : "09:00:00",
        "closingTime" : "21:00:00"
      }]
    },
    "search" : {
      "mode" : "include"
    }
  },
  {
    "fullUrl" : "https://exemple.com/ans-sas/Slot/ExampleSlotSOS3",
    "resource" : {
      "resourceType" : "Slot",
      "id" : "ExampleSlotSOS3",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator"],
        "security" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
          "code" : "PUBLIC"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Slot_ExampleSlotSOS3\"> </a><p class=\"res-header-id\"><b>Narratif généré : Slot ExampleSlotSOS3</b></p><a name=\"ExampleSlotSOS3\"> </a><a name=\"hcExampleSlotSOS3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-slot-aggregator.html\">FrSlotAgregateurSOS</a></p><p style=\"margin-bottom: 0px\">Label de sécurité: <a href=\"https://smt.esante.gouv.fr/fhir/CodeSystem/TRE-R314-TypeCreneau\">Créneau accessible par le grand public (Détails : code TRE_R314_TypeCreneau PUBLIC = 'Créneau accessible par le grand public')</a></p></div><p><b>serviceType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v3-ActCode VR}\">virtual</span></p><p><b>appointmentType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v2-0276 ROUTINE}\">Routine appointment - default if not valued</span></p><p><b>schedule</b>: <a href=\"Schedule-ExampleScheduleSOS3.html\">Schedule</a></p><p><b>status</b>: Free</p><p><b>start</b>: 2023-08-18 14:20:00+0200</p><p><b>end</b>: 2023-08-18 14:40:00+0200</p><p><b>comment</b>: http://www.editeur.com/agenda-pfg/creneau3</p></div></div>"
      },
      "serviceType" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "VR"
        }]
      }],
      "appointmentType" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
          "code" : "ROUTINE"
        }]
      },
      "schedule" : {
        "reference" : "Schedule/ExampleScheduleSOS3"
      },
      "status" : "free",
      "start" : "2023-08-18T14:20:00.000+02:00",
      "end" : "2023-08-18T14:40:00.000+02:00",
      "comment" : "http://www.editeur.com/agenda-pfg/creneau3"
    },
    "search" : {
      "mode" : "include"
    }
  },
  {
    "fullUrl" : "https://exemple.com/ans-sas/Schedule/ExampleScheduleSOS3",
    "resource" : {
      "resourceType" : "Schedule",
      "id" : "ExampleScheduleSOS3",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-schedule-aggregator"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Schedule_ExampleScheduleSOS3\"> </a><p class=\"res-header-id\"><b>Narratif généré : Schedule ExampleScheduleSOS3</b></p><a name=\"ExampleScheduleSOS3\"> </a><a name=\"hcExampleScheduleSOS3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-schedule-aggregator.html\">FrScheduleAgregateurSOS</a></p></div><p><b>actor</b>: <a href=\"Location-3333333333.html\">Centre de consultation Lorient (Identifiant interne: 3333333333)</a></p></div></div>"
      },
      "actor" : [{
        "reference" : "Location/3333333333"
      }]
    },
    "search" : {
      "mode" : "match"
    }
  },
  {
    "fullUrl" : "https://exemple.com/ans-sas/Location/3333333333",
    "resource" : {
      "resourceType" : "Location",
      "id" : "3333333333",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-location-aggregator"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Location_3333333333\"> </a><p class=\"res-header-id\"><b>Narratif généré : Localisation 3333333333</b></p><a name=\"3333333333\"> </a><a name=\"hc3333333333\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-location-aggregator.html\">FrLocationAgregateurSOS</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Centre de consultation Lorient (Identifiant interne: 3333333333)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Physical location\">Address:</td><td colspan=\"3\">12 impasse Royer Dubail LORIENT 56100 </td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to make contact with the location\">Coordonnées</td><td colspan=\"3\"><a href=\"tel:+33139555992\">+33139555992</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization responsible for the provisioning and upkeep of the location\">Managed By:</td><td colspan=\"3\"><a href=\"Organization-ExampleOrgaSOS2.html\">SOS Médecins Lorient et agglomération (Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS: 392080466300010)</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"When the location is (and is not) open\">Hours:</td><td colspan=\"3\"><ul><li>Tuesday, Thursday, Saturday: 11:00:00 - 18:00:00</li></ul></td></tr></table></div></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
            "code" : "INTRN"
          }]
        },
        "system" : "https://editeur.com",
        "value" : "3333333333"
      }],
      "name" : "Centre de consultation Lorient",
      "telecom" : [{
        "system" : "phone",
        "value" : "+33139555992"
      }],
      "address" : {
        "line" : ["12 impasse Royer Dubail"],
        "city" : "LORIENT",
        "postalCode" : "56100"
      },
      "managingOrganization" : {
        "reference" : "Organization/ExampleOrgaSOS2"
      },
      "hoursOfOperation" : [{
        "daysOfWeek" : ["tue", "thu", "sat"],
        "openingTime" : "11:00:00",
        "closingTime" : "18:00:00"
      }]
    },
    "search" : {
      "mode" : "include"
    }
  },
  {
    "fullUrl" : "https://exemple.com/ans-sas/Organization/ExampleOrgaSOS2",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "ExampleOrgaSOS2",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-organization-aggregator"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Organization_ExampleOrgaSOS2\"> </a><p class=\"res-header-id\"><b>Narratif généré : Organisation ExampleOrgaSOS2</b></p><a name=\"ExampleOrgaSOS2\"> </a><a name=\"hcExampleOrgaSOS2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-organization-aggregator.html\">FrOrganizationAgregateurSOS</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">SOS Médecins Lorient et agglomération (Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS: 392080466300010)</p><hr/></div></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
            "code" : "IDNST"
          }]
        },
        "system" : "urn:oid:1.2.250.1.71.4.2.2",
        "value" : "392080466300010"
      }],
      "name" : "SOS Médecins Lorient et agglomération"
    },
    "search" : {
      "mode" : "include"
    }
  },
  {
    "fullUrl" : "https://exemple.com/ans-sas/Slot/ExampleSlotSOS4",
    "resource" : {
      "resourceType" : "Slot",
      "id" : "ExampleSlotSOS4",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/sas/StructureDefinition/sas-sos-slot-aggregator"],
        "security" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
          "code" : "PUBLIC"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Slot_ExampleSlotSOS4\"> </a><p class=\"res-header-id\"><b>Narratif généré : Slot ExampleSlotSOS4</b></p><a name=\"ExampleSlotSOS4\"> </a><a name=\"hcExampleSlotSOS4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-sas-sos-slot-aggregator.html\">FrSlotAgregateurSOS</a></p><p style=\"margin-bottom: 0px\">Label de sécurité: <a href=\"https://smt.esante.gouv.fr/fhir/CodeSystem/TRE-R314-TypeCreneau\">Créneau accessible par le grand public (Détails : code TRE_R314_TypeCreneau PUBLIC = 'Créneau accessible par le grand public')</a></p></div><p><b>serviceType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v3-ActCode AMB}\">ambulatory</span></p><p><b>appointmentType</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/v2-0276 ROUTINE}\">Routine appointment - default if not valued</span></p><p><b>schedule</b>: <a href=\"Schedule-ExampleScheduleSOS3.html\">Schedule</a></p><p><b>status</b>: Free</p><p><b>start</b>: 2023-08-18 14:40:00+0200</p><p><b>end</b>: 2023-08-18 15:00:00+0200</p><p><b>comment</b>: http://www.editeur.com/agenda-pfg/creneau4</p></div></div>"
      },
      "serviceType" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "AMB"
        }]
      }],
      "appointmentType" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
          "code" : "ROUTINE"
        }]
      },
      "schedule" : {
        "reference" : "Schedule/ExampleScheduleSOS3"
      },
      "status" : "free",
      "start" : "2023-08-18T14:40:00.000+02:00",
      "end" : "2023-08-18T15:00:00.000+02:00",
      "comment" : "http://www.editeur.com/agenda-pfg/creneau4"
    },
    "search" : {
      "mode" : "include"
    }
  }]
}

```
