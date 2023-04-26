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

**Réponse simplifiée :**

`
HTTP 200 OK
  resourceType: Bundle
  type: searchset
  total: 4
  Slot1 (match)
  Schedule1
  Practitioner1
  PractitionerRole1
  Slot2 (match)
  Schedule2
  Practitioner2
  PractitionerRole2
  Slot3 (match)
  Schedule3
  Practitioner3
  PractitionerRole3
  Slot4 (match)
  Schedule4
  Practitioner4
  PractitionerRole4

`

**Réponse complète :**

`
{
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
  "entry": [
    {
      "fullUrl": "https://exemple.com/ans-sas/Slot/1636102800",
      "resource": {
        "resourceType": "Slot",
        "id": "1636102800",
        "meta": {
          "profile": [
            "http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur"
          ],
          "security": [
            {
              "system": "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
              "code": "PUBLIC"
            }
          ]
        },
        "serviceType": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                "code": "AMB"
              }
            ]
          },
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                "code": "VR"
              }
            ]
          },
          {
            "text": "Visite de contrôle"
          }
        ],
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
            "coding": [
              {
                "code": "SM05",
                "system": "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale"
              }
            ]
          },
          {
            "text": "Médecine générale (polyvalente)"
          }
        ],
        "appointmentType": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v2-0276",
              "code": "ROUTINE"
            }
          ]
        },
        "schedule": {
          "reference": "Schedule/8b24a507-89bd-49f6-ad5a-f703163abde4"
        },
        "status": "free",
        "start": "2021-11-05T09:00:00.000+00:00",
        "end": "2021-11-05T09:30:00.000+00:00",
        "comment": "https://exemple.com/rdv/com/"
      }
    },
    {
      "fullUrl": "https://exemple.interop/fhir/Schedule/8b24a507-89bd-49f6-ad5a-f703163abde4",
      "resource": {
        "resourceType": "Schedule",
        "id": "8b24a507-89bd-49f6-ad5a-f703163abde4",
        "meta": {
          "profile": [
            "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
          ]
        },
        "actor": [
          {
            "reference": "Practitioner/2fd27ae6-06b9-41d3-9fb7-b840da8d3296"
          },
          {
            "reference": "PractitionerRole/8d704bd7-d4a6-4b6d-807f-d7402342f247"
          }
        ]
      }
    },
    {
      "fullUrl": "https://exemple.interop/fhir/Practitioner/2fd27ae6-06b9-41d3-9fb7-b840da8d3296",
      "resource": {
        "resourceType": "Practitioner",
        "id": "2fd27ae6-06b9-41d3-9fb7-b840da8d3296",
        "meta": {
          "profile": [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"
          ]
        },
        "identifier": [
          {
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
        ],
        "name": [
          {
            "family": "THOMAS",
            "given": [
              "Sébastien"
            ]
          }
        ]
      }
    },
    {
      "fullUrl": "https://exemple.interop/fhir/PractitionerRole/8d704bd7-d4a6-4b6d-807f-d7402342f247",
      "resource": {
        "resourceType": "PractitionerRole",
        "id": "8d704bd7-d4a6-4b6d-807f-d7402342f247",
        "meta": {
          "profile": [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"
          ]
        },
        "contained": [
          {
            "resourceType": "Location",
            "id": "1",
            "meta": {
              "profile": [
                "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur"
              ]
            },
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
                      "code": "INTRN"
                    }
                  ]
                },
                "system": "urn:oid 1.1.111.1.111.1.1.1",
                "value": "1"
              }
            ],
            "address": {
              "line": [
                "1 rue Mme DELMAS"
              ],
              "city": "AGEN",
              "postalCode": "47000"
            }
          }
        ],
        "practitioner": {
          "reference": "Practitioner/2fd27ae6-06b9-41d3-9fb7-b840da8d3296"
        },
        "organization": {
          "identifier": {
            "system": "urn:oid:1.2.250.1.71.4.2.2",
            "type": {
              "coding": [
                {
                  "system": "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                  "code": "IDNST"
                }
              ]
            },
            "value": "1810004421"
          }
        },
        "location": [
          {
            "reference": "#1"
          }
        ]
      }
    },
    {
      "fullUrl": "https://exemple.com/ans-sas/Slot/1636110000",
      "resource": {
        "resourceType": "Slot",
        "id": "1636110000",
        "meta": {
          "profile": [
            "http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur"
          ],
          "security": [
            {
              "system": "https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau",
              "code": "PRO"
            }
          ]
        },
        "serviceType": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                "code": "AMB"
              }
            ]
          },
          {
            "text": "Visite urgente"
          }
        ],
        "specialty": [
          {
            "text": "Médecine générale (polyvalente)"
          }
        ],
        "appointmentType": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v2-0276",
              "code": "WALKIN"
            }
          ]
        },
        "schedule": {
          "reference": "Schedule/abbe2be1-a05e-4329-b20b-180f76ac8b2b"
        },
        "status": "free",
        "start": "2021-11-05T11:00:00.000+00:00",
        "end": "2021-11-05T11:30:00.000+00:00"
      }
    },
    {
      "fullUrl": "https://exemple.interop/fhir/Schedule/abbe2be1-a05e-4329-b20b-180f76ac8b2b",
      "resource": {
        "resourceType": "Schedule",
        "id": "abbe2be1-a05e-4329-b20b-180f76ac8b2b",
        "meta": {
          "profile": [
            "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
          ]
        },
        "actor": [
          {
            "reference": "Practitioner/2fd27ae6-06b9-41d3-9fb7-b840da8d3296"
          },
          {
            "reference": "PractitionerRole/fdad395b-c5e6-4b59-b81b-ca10d31eba8b"
          }
        ]
      }
    },
    {
      "fullUrl": "https://exemple.interop/fhir/PractitionerRole/fdad395b-c5e6-4b59-b81b-ca10d31eba8b",
      "resource": {
        "resourceType": "PractitionerRole",
        "id": "fdad395b-c5e6-4b59-b81b-ca10d31eba8b",
        "meta": {
          "profile": [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"
          ]
        },
        "contained": [
          {
            "resourceType": "Location",
            "id": "2",
            "meta": {
              "profile": [
                "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur"
              ]
            },
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
                      "code": "INTRN"
                    }
                  ]
                },
                "system": "urn:oid: 1.1.111.1.111.1.1.1",
                "value": "2"
              }
            ],
            "address": {
              "line": [
                "30 rue Mme DELMAS"
              ],
              "city": "AGEN",
              "postalCode": "47000"
            }
          }
        ],
        "practitioner": {
          "reference": "Practitioner/2fd27ae6-06b9-41d3-9fb7-b840da8d3296"
        },
        "organization": {
          "identifier": {
            "system": "urn:oid:1.2.250.1.71.4.2.2",
            "type": {
              "coding": [
                {
                  "system": "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                  "code": "IDNST"
                }
              ]
            },
            "value": "1810004956"
          }
        },
        "location": [
          {
            "reference": "#2"
          }
        ]
      }
    },
    {
      "fullUrl": "https://exemple.com/ans-sas/Slot/1636035600",
      "resource": {
        "resourceType": "Slot",
        "id": "1636035600",
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
            }
          ]
        },
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
            "text": "Visite de contrôle"
          },
          {
            "text": "Consultation de suivi pneumologie"
          }
        ],
        "specialty": [
          {
            "text": "Pneumologie"
          }
        ],
        "appointmentType": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v2-0276",
              "code": "ROUTINE"
            }
          ]
        },
        "schedule": {
          "reference": "Schedule/a0e524f4-14e8-4791-8e95-1a6f2aa2ec80"
        },
        "status": "free",
        "start": "2021-11-04T14:20:00.000+00:00",
        "end": "2021-11-04T14:40:00.000+00:00",
        "comment": "https://exemple.com/rdv/com/"
      }
    },
    {
      "fullUrl": "https://exemple.interop/fhir/Schedule/a0e524f4-14e8-4791-8e95-1a6f2aa2ec80",
      "resource": {
        "resourceType": "Schedule",
        "id": "a0e524f4-14e8-4791-8e95-1a6f2aa2ec80",
        "meta": {
          "profile": [
            "http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur"
          ]
        },
        "actor": [
          {
            "reference": "Practitioner/813222df-d939-47fb-b294-144320dc7c5c"
          },
          {
            "reference": "PractitionerRole/ac7aeb0a-51cb-409d-8374-d5198c67520c"
          }
        ]
      }
    },
    {
      "fullUrl": "https://exemple.interop/fhir/Practitioner/813222df-d939-47fb-b294-144320dc7c5c",
      "resource": {
        "resourceType": "Practitioner",
        "id": "813222df-d939-47fb-b294-144320dc7c5c",
        "meta": {
          "profile": [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur"
          ]
        },
        "identifier": [
          {
            "type": {
              "coding": [
                {
                  "system": "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                  "code": "IDNPS"
                }
              ]
            },
            "system": "urn:oid:1.2.250.1.71.4.2.1",
            "value": "810002673899"
          }
        ],
        "name": [
          {
            "family": "MARCEL",
            "given": [
              "Guillaume"
            ]
          }
        ]
      }
    },
    {
      "fullUrl": "https://exemple.interop/fhir/PractitionerRole/ac7aeb0a-51cb-409d-8374-d5198c67520c",
      "resource": {
        "resourceType": "PractitionerRole",
        "id": "ac7aeb0a-51cb-409d-8374-d5198c67520c",
        "meta": {
          "profile": [
            "http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur"
          ]
        },
        "contained": [
          {
            "resourceType": "Location",
            "id": "1",
            "meta": {
              "profile": [
                "http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur"
              ]
            },
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://interopsante.org/fhir/CodeSystem/fr-location-identifier-type",
                      "code": "INTRN"
                    }
                  ]
                },
                "system": "urn:oid:1.1.111.1.111.1.1.1",
                "value": "1"
              }
            ],
            "address": {
              "line": [
                "1 rue Mme DELMAS"
              ],
              "city": "AGEN",
              "postalCode": "47000"
            }
          }
        ],
        "practitioner": {
          "reference": "Practitioner/813222df-d939-47fb-b294-144320dc7c5c"
        },
        "organization": {
          "identifier": {
            "system": "urn:oid:1.2.250.1.71.4.2.2",
            "type": {
              "coding": [
                {
                  "system": "http://interopsante.org/fhir/CodeSystem/fr-v2-0203",
                  "code": "IDNST"
                }
              ]
            },
            "value": "1810004421"
          }
        },
        "location": [
          {
            "reference": "#1"
          }
        ],
        "telecom": [
          {
            "system": "phone",
            "value": "+33658913859"
          }
        ]
      }
    },
    {
      "fullUrl": "https://exemple.com/ans-sas/Slot/1636036800",
      "resource": {
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
            }
          ]
        },
        "serviceType": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                "code": "HH"
              }
            ]
          },
          {
            "text": "Visite de contrôle"
          },
          {
            "text": "Consultation de suivi pneumologique"
          }
        ],
        "specialty": [
          {
            "text": "Pneumologie"
          },
          {
            "text": "Médecine générale (polyvalente)"
          }
        ],
        "appointmentType": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v2-0276",
              "code": "ROUTINE"
            }
          ]
        },
        "schedule": {
          "reference": "Schedule/a0e524f4-14e8-4791-8e95-1a6f2aa2ec80"
        },
        "status": "free",
        "start": "2021-11-04T14:40:00.000+00:00",
        "end": "2021-11-04T15:00:00.000+00:00",
        "comment": "https://exemple.com/rdv/com/"
      }
    }
  ]
}

`
