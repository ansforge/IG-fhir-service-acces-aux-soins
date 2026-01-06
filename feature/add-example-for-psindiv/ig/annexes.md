# Annexes - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Autres Ressources**](autres_ressources.md)
* **Annexes**

## Annexes

## Performance attendue des solutions logicielles interfacées - volet agrégateur

L'agrégateur de disponibilités SAS appelle de manière synchrone l'ensemble des solutions éditeurs interfacées pour une liste de 1 à 25 PS. Pour des raisons de qualité de service et d'expérience utilisateur, il est attendu de la part des solutions logicielles éditeurs de garantir un temps de réponse inférieure à 7 secondes qui pourra évoluer à l'usage. Passé ce délai, la plateforme numérique SAS déclenchera un "time-out" et toute réponse réceptionnée par la suite ne sera pas prise en compte.

## Hypothèses de volumétrie

### Agregation de créneaux

A titre d'information, une estimation est donnée ci-dessous de la volumétrie de requêtes émises en une heure par la plateforme numérique SAS :

* **Nb appels max / heure** ~ 3000

Il s'agit d'estimation et ce nombre pourrait être dépassé en cas de pic de charge. Hypothèses retenues pour l'estimation :

* Nb appels aux SAMU par jour = 125 000
* Nb appels réorientés aux OSNP par jour = 16 000
* Contingence = 15%
* Nb recherches dans la plateforme numérique SAS par appel = 4

### Gestion des comptes régulateurs

A titre d’information, le tableau ci-dessous contient une estimation de la volumétrie de comptes régulateurs à prévoir et un ordre de grandeur sur le nombre d’appels :

| | | |
| :--- | :--- | :--- |
| **Nombre total de comptes** | 1000 | 3500 |
| **Nombre de compres à créer quotidiennement** | < 1 | < 2 |
| **Nombre de mises à jour quotidiennes** | < 3 | < 10 |

## Correspondance des environnements ANS/SAS et éditeurs

Dans le cadre de la recette connectée avec la plateforme numérique SAS, nous avons trois environnements qui sont mis à disposition : Recette, Pré-production et Production. En fonction du nombre d'environnements identifiés côté éditeur nous pouvons avoir les configurations suivantes :

* Soit en raccordement un pour un si l'éditeur propose également trois environnements : 
* Recette <> Recette
* Pré-production <> Pré-production
* Production <> Production
 
* Soit en raccordement simplifié si l'éditeur propose deux environnements : 
* Recette ANS <> Pré-production éditeur
* Pré-production ANS <> Pré-production éditeur
* Production <> Production
 

Il est attendu de la part de l'éditeur de communiquer les endpoints correspondants à chaque environnement à l'ANS.

