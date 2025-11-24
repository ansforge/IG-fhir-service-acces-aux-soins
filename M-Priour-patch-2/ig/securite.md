# Sécurité - Service d'Accès aux Soins v1.2.0

* [**Table of Contents**](toc.md)
* [**Autres Ressources**](autres_ressources.md)
* **Sécurité**

## Sécurité

### Agrégation de créneaux, gestion des comptes régulateurs et prise de rendez-vous

Les données véhiculées à travers ces flux sont des données relatives à la prise de rendez-vous pour des Soins Non Programmés via la plateforme SAS.

Le système consommateur dispose des points d’accès et des moyens d’authentification (authentification mTLS avec des certificats IGC-Santé) pour accéder aux créneaux de disponibilité et informations de rendez-vous.
 **HTTP encapsulé dans une liaison mTLS (1.2) avec autorité de certification IGC santé et contrôle du Common Name (CN) et Organizational Unit (OU)**

En fonction des cas d'usage, la solution éditeur est soit en mode "client" soit en mode "serveur".

Pour plus de détails sur cette implémentation, se référer à la [documentation détaillée](https://industriels.esante.gouv.fr/sites/default/files/media/document/SAS_SPEC_Securisation-des-echanges-par-mTLS_20240524_V3.2.pdf).

Il est du ressort du responsable de traitement du système cible de mettre en œuvre des dispositions de sécurité adaptées à son analyse de risques pour le service. En fonction de sa politique de sécurité, il peut choisir ou pas de mettre en œuvre les dispositions spécifiques décrites dans cette section. Les référentiels de sécurité édités par l’ANS fournissent des recommandations sur ce sujet.

### Transmission des informations de RDV aux LRM

L'échange des informations se fait au travers du Hub Santé en s'appuyant sur le protocole AMQPS Ce dernier (AMQP sécurisé par TLS) est utilisé pour sécuriser les services dans les deux sens (Client vers Hub Santé et inversement). Il permet d’assurer la confidentialité et l’authenticité des échanges. Le canal AMQPS est établi avec une authentification mutuelle des services par certificats (aussi appelé mTLS13). La connexion doit être établie avec un canal TLS 1.2. RabbitMQ gère directement la sécurisation TLS et mTLS14 : il autorise et authentifie un client grâce au certificat client présenté.

Pour plus de détails, se référer au [Dossier des Spécifications Techniques (DST)](https://hub.esante.gouv.fr/resources/Accompagnement/tech/23.09%20DST%20v1.2%20-%20Hub%20Sante%20&%20connecteurs.pdf) du Hub Santé.

