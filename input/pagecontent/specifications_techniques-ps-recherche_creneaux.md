<!-- Recherche des créneaux -->
### Caractéristiques de l'API
Cette requête s'appuie sur le flux 3A du volet d'agenda partagé du [CI-SIS volet Gestion Agenda Partagés](https://esante.gouv.fr/sites/default/files/media_entity/documents/CISIS-TEC_SPECIFICATIONS_TECHNIQUES-GESTION_AGENDAS_PARTAGES_V1.0.pdf).  

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
<https://www.hl7.org/fhir/http.html>

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

La requête ci-dessous correspond à une recherche de créneaux disponibles entre le 02 janvier 2021 à 10h et le 06 janvier 2021 à 10h pour les PS correspondant aux RPPS préfixés : 810101288385, 800001288385 ou 810106738385.

**Requête :**

`get[BASE]/Slot?_include=Slot:schedule&_include:iterate=Schedule:actor&start=ge2021-01-02T10:00:00&start=le2021-01-06T10:00:00&schedule.actor:Practitioner.identifier=urn:oid:1.2.250.1.71.4.2.1|810101288385, urn:oid:1.2.250.1.71.4.2.1|800001288385,urn:oid:1.2.250.1.71.4.2.1|810106738385&status=free`

**Réponse simplifiée :**

<details>
  <summary>Déplier pour accéder au détail de l'exemple de réponse simplifiée</summary>
  <pre>
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
  </pre>
</details>
<br>

**Corps de la réponse complète :**

La réponse ci-dessous correspond à :
1. 2 créneaux disponibles pour Docteur Sébastien THOMAS (RPPS : 810100050075)
  - 1 créneau au 1 rue Mme Delmas (47000). L'ID de la structure associée est 1810004421. Le 5 novembre 2021 de 9h à 9h30 ayant les caractéristiques suivantes :
    - Avec prise de RDV,
    - Visible du grand public,
    - Au cabinet ou en téléconsultation
    - Pour le motif `Visite de contrôle`
    - Les spécialités codifiées associées sont SM54, SM05. La spécialité non codifée associée est `Médecine générale polyvalente`. 
  - 1 créneau au 30 rue Mme Delmas (47000). L'ID de la structure associée est 1810004956. Le 5 novembre 2021 de 11h à 11h30 ayant les caractéristiques suivantes :
    - Sans prise de RDV,
    - Visible des professionnels,
    - Au cabinet,
    - Pour le motif `Visite urgente`
    - La spécialité codifiée associée est SM54
1. 2 créneaux disponibles pour Médecin Guillaume MARCEL (RPPS : 810002673899) au 1 rue Mme Delmas (47000). L'ID de la structure associée est 1810004421
  - 1 créneau le 4 novembre 2021 de 14h20 à 14h40 ayant les caractéristiques suivantes :
    - Avec prise de RDV,
    - Visible des professionnels et du grand public,
    - En téléconsultation
    - Pour le motif `Visite de contrôle`
    - La spécialité codifiée associée est SM41
  - 1 créneau le 4 novembre 2021 de 14h40 à 15h00 ayant les caractéristiques suivantes :
    - Avec prise de RDV,
    - Visible des professionnels et du grand public,
    - A domicile
    - Pour le motif `Visite de contrôle` et `Consultation de suivi pneumologique`
    - Les spécialités codifiées associées sont SM41 et SM54

<details>
  <summary>Déplier pour accéder au détail de l'exemple de réponse complète au format json</summary>
  <pre>
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
  </pre>
</details>
<br>

### Nomenclatures

Cette section détaille les nomenclatures à utiliser afin de renseigner les différents éléments codifiés de la réponse.
- **ID : 3 – Statut du créneau :**
  - L'utilisation de la nomenclature standard slotstatus (<http://hl7.org/fhir/R4/valueset-slotstatus.html>) est attendue. Cependant, la plateforme numérique SAS ne récupérant que des créneaux disponibles, ce champ aura systématiquement la valeur `free`.
- **ID : 13 – Spécialités ou compétences particulières du PS associées au créneau :**
  - Dans le cadre du profil FrSlot, l'élément specialty est lié à la nomenclature des spécialités ordinales du MOS (<https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale/>). La plateforme numérique SAS sera cependant en mesure de traiter d'autres compétences ou spécialités transmises sous la forme d'une donnée structurée au sein de l'élément `coding`, ou sous la forme d’un texte libre au niveau de l'élément `text`.
- **ID : 14 – Type de créneau :**
  - Afin de répondre aux besoins de la plateforme numérique SAS, une nomenclature dédiée a été mise en oeuvre (<https://mos.esante.gouv.fr/NOS/TRE_R314-TypeCreneau/FHIR/TRE-R314-TypeCreneau>). 3 types de créneaux sont présentés ci-dessous. A noter qu'un créneau peut porter une combinaison de ces valeurs :
    - PUBLIC – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible par le grand public
    - PRO – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible à l'ensemble des PS
    - SNP – Créneau de soins défini par un professionnel de santé ou son délégataire dans son logiciel de prise de RDV accessible par les Régulateurs et OSNP
- **ID : 15 – Type de consultation :**
  - L'utilisation de la nomenclature standard ActEncounterCode (<https://www.hl7.org/fhir/v3/ActEncounterCode/vs.html>) est attendue. Cette nomenclature contient différentes notions, cependant, la plateforme numérique SAS gère les 3 types de créneaux ci-dessous. A noter qu'un créneau peut porter une combinaison de ces valeurs :
    - AMB – Consultation au cabinet
    - HH – Consultation à domicile
    - VR – Téléconsultation
- **ID : 17 – URL de redirection pour la prise de RDV :**
  - Il est attendu l'URL de redirection vers l'agenda du PS concerné. Si l'utilisateur vient du SAS et n'est pas authentifié, il est demandé de le rediriger vers la page d'authentification de la solution éditeur avant d'accéder à l'agenda du PS. Afin de faciliter l'implémentation de la règle métier, la PTF numérique SAS ajoute un paramètre `origin` à l'URL transmise par l'éditeur au moment de la redirection pour identifier la provenance.
- **ID : 18 – Créneau avec ou sans RDV :**
  - L'utilisation de la nomenclature standard AppointmentReasonCodes (<https://www.hl7.org/fhir/v2/0276/index.html>) est attendue. Cette nomenclature contient différentes notions, cependant, la plateforme numérique SAS gère les 2 valeurs ci-dessous :
    - ROUTINE – Créneau avec prise de RDV possible.
    - WALKIN – Créneau sans prise de RDV possible

### Validateur ressources
Le validateur mis à disposition des développeurs dans le cadre du projet SAS offre la possibilité tester le format des bundles de réponse générés. Il permet de vérifier que les réponses sont correctement formatées, que l'ensemble des informations obligatoires sont bien présentes et que les données codifiées exploitent les bonnes nomenclatures.
Pour que le validateur puisse effectuer correctement les contrôles au niveau de la structure, il est nécessaire de renseigner pour chacun des "resourceType" correspondant, le meta.profile "URL" ci-dessous :
- http://sas.fr/fhir/StructureDefinition/BundleAgregateur
- http://sas.fr/fhir/StructureDefinition/FrLocationAgregateur
- http://sas.fr/fhir/StructureDefinition/FrPractitionerAgregateur
- http://sas.fr/fhir/StructureDefinition/FrPractitionerRoleExerciceAgregateur
- http://sas.fr/fhir/StructureDefinition/FrScheduleAgregateur
- http://sas.fr/fhir/StructureDefinition/FrSlotAgregateur

Ci-dessous un exemple :

```
"resourceType": "Bundle",
"id": "8cbb33dc-779e-45e9-a5f6-ea66101288c5",
"meta": {
  "profile": [
    "http://sas.fr/fhir/StructureDefinition/BundleAgregateur"
  ]
},
```

Le validateur est disponible sur l'espace de test de l'ANS : <https://interop.esante.gouv.fr/evs/fhir/validator.seam?standard=37>. Pour faciliter les tests et conserver l'historique, nous vous recommandons de créer votre compte sur la plateforme.
Afin de tester un fichier, il suffit de sélectionner le format `JSON`, d'ajouter le fichier via le bouton `Add…`, de sélectionner le modèle `FrBundleAgregateurSAS` puis de cliquer sur `valider` :

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="validateur_creneaux-PS_1.png" alt="Accès au validateur agrégateur de créneaux" title="Accès au validateur agrégateur de créneaux">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 1 - Accès au validateur agrégateur de créneaux</b>
        </td>
    </tr>
</table>

Vous obtiendrez alors un rapport de test mettant en valeur les erreurs bloquantes et les différents warnings :

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="validateur_creneaux-PS_2.png" alt="Rapport validateur agrégateur de créneaux" title="Rapport validateur agrégateur de créneaux">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 2 - Rapport validateur agrégateur de créneaux</b>
        </td>
    </tr>
</table>
<br><br>