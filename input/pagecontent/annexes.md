
### Correspondance des environnements ANS/SAS et éditeurs

Dans le cadre de la recette connectée avec la plateforme numérique SAS, nous avons trois environnements qui sont mis à disposition : Recette, Pré-production et Production.
En fonction du nombre d'environnements identifiés côté éditeur nous pouvons avoir les configurations suivantes :
- Soit en raccordement un pour un si l'éditeur propose également trois environnements :
  - Recette <> Recette
  - Pré-production <> Pré-production
  - Production <> Production
- Soit en raccordement simplifié si l'éditeur propose deux environnements :
  - Recette ANS <> Pré-production éditeur
  - Pré-production ANS <> Pré-production éditeur
  - Production <> Production
Il est attendu de la part de l'éditeur de communiquer les endpoints correspondants à chaque environnement à l'ANS.

### Endpoints de la plateforme SAS

Le tableau ci-dessous présente les endpoints de la plateforme numérique SAS par environnement à renseigner pour les échanges.

<table>
<tbody>
<tr>
  <td width="25%"><p><strong>Environnement</strong></p></td>
  <td><p><strong>URL serveur plateforme numérique SAS</strong></p></td>
</tr>
<tr>
  <td ><p>Recette</p></td>
  <td><p><a href="https://sas-agregateur.integration.santefr.esante.gouv.fr/">https://sas-agregateur.integration.santefr.esante.gouv.fr/</a></p></td>
</tr>
<tr>
  <td><p>Pré-production</p></td>
  <td><p><a href="https://sas-agregateur.preproduction.santefr.esante.gouv.fr/">https://sas-agregateur.preproduction.santefr.esante.gouv.fr/</a></p></td>
</tr>
<tr>
  <td><p>Production</p></td>
  <td><p><a href="https://sas-agregateur.production.santefr.esante.gouv.fr/">https://sas-agregateur.production.santefr.esante.gouv.fr/</a></p></td>
</tr>
</tbody>
</table>

### Filtrage par adresses IP

<p>Pour des raisons de sécurité, il arrive que certains éditeurs souhaitent mettre en place un filtrage IP supplémentaire. Vous trouverez ainsi les informations nécessaires ci-dessous :</p>
<br>**Recette ANS**
- IP Publique : 193.41.222.248
<br>**Pré-production ANS**
- IP Publique : 31.15.27.36
<br>**Production ANS**
- IP Publique : 31.15.27.13

### Sécurisation des échanges par mTLS

#### Cinématique mTLS

Le contrôle d'accès aux solutions logicielles s'effectue par la vérification de la validité du certificat présenté par le client. Il s'agit d’une version du protocole TLS appelée **Mutual TLS** (mTLS).

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="schema_mtls.jpg" alt="Mutual TLS Handshake" title="Mutual TLS Handshake">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 1 - Mutual TLS Handshake</b>
        </td>
    </tr>
</table>

Le certificat présenté par le client doit être issu de l'IGC Santé. Il est de type AUTH_CLI de la gamme élémentaire et du domaine organisation. Ces certificats sont à installer dans les trust-stores des solutions logicielles.

Autorités IGC Santé certifiant l'environnement de PRODUCTION : <http://igc-sante.esante.gouv.fr/PC/#ca> :
- ACR-EL.cer (<http://igc-sante.esante.gouv.fr/AC/ACR-EL.cer>)
- ACI-EL-ORG.cer (<http://igc-sante.esante.gouv.fr/AC/ACI-EL-ORG.cer>)

Autorités IGC Santé certifiant les environnements de RECETTE et PREPRODUCTION : <http://igc-sante.esante.gouv.fr/PC%20TEST/> :
- ACR-EL-TEST.cer (<http://igc-sante.esante.gouv.fr/AC%20TEST/ACR-EL-TEST.cer>)
- ACI-EL-ORG-TEST.cer (<http://igc-sante.esante.gouv.fr/AC%20TEST/ACI-EL-ORG-TEST.cer>)

Il est également demandé d'ajouter un second niveau de contrôle lors de l'authentification du client sur le Common Name (CN) du certificat. Il s'agit d’une chaîne de caractère unique pour chaque client et environnement.
Ce contrôle permet également de rejeter un certificat compromis dans le cas où les protocoles de révocation ont pu être mis en place.

#### Révocation des certificats clients

Afin de parer à toutes compromissions de certificats clients, ceux-ci peuvent être révoqués à tout moment. Nous recommandons aux solutions logicielles d'implémenter une méthode de vérification des révocations de ces certificats.
L'IGC Santé prend en charge deux méthodes de révocations TLS : CRL et OCSP. Vous trouverez ci-dessous les liens vers la documentation IGC associée :
- <https://integrateurs-cps.asipsante.fr/node/179>
- <https://integrateurs-cps.asipsante.fr/sites/default/files/170719_Guide_pratiques_verification_etat_certificats.pdf>
A noter qu'en cas d’impossibilité de mettre à jour les listes CRL, un mécanisme de débrayage pourrait être mis en place.

##### Certificate Revocation List (CRL)

Ce protocole est basé sur la consultation de liste de certificats révoqués (CRL) : <https://datatracker.ietf.org/doc/html/rfc5280#section-5>
Tous les matins à partir de 7h les listes de révocations CRL sont mises à jour par l'IGC Santé.

##### Online Certificate Status Protocol (OCSP)

Ce protocole est une alternative aux CRL et permet d'effectuer une vérification "à la demande" : <https://datatracker.ietf.org/doc/html/rfc2560>
L'ANS met à disposition des utilisateurs des certificats produits par l'IGC Santé (uniquement) un service OCSP à l'adresse : <http://ocsp.esante.gouv.fr>

#### Sécurisation des échanges avec la solution éditeur dans le rôle SERVEUR

La plateforme numérique SAS (client) utilise un certificat IGC Santé qui est contrôlé par la solution logicielle éditeur (serveur).

##### Flux concernés

Les flux concernés par les modalités de sécurisation des échanges entre la plateforme numérique SAS et les solutions logicielles éditeurs dans le rôle **SERVEUR** sont précisées ci-dessous :
- [Agrégation des créneaux de disponibilités](specifications_techniques_1.html)
- Gestion des comptes régulateurs

##### Contrôles attendus sur les certificats et Common Name

Comme présenté dans le chapitre précédent, de manière schématique, nous allons effectuer des appels HTTPS classiques (TLS 1.2) en y ajoutant un certificat "TLS client" (mTLS).
Côté éditeur, il est attendu de :
- Configurer le "terminateur HTTPS" pour qu'il vérifie que l'appel se fasse bien avec un **certificat signé par les Autorité de Certifications (CA) de l'IGC Santé**.
- Ajouter un second niveau de sécurité dans votre application en **vérifiant le Common Name (CN) du certificat**, qui sera une chaine de caractères uniques pour chaque client et environnement.

#### Sécurisation des échanges avec la solution éditeur dans le rôle CLIENT

Les solutions logicielles vont effectuer des appels HTTPS classiques (TLS 1.2) vers la plateforme numérique SAS en y ajoutant un certificat "TLS client" (mTLS).
Afin d'établir la double authentification, la solution logicielle éditeur (client) utilise le certificat émis par IGC Santé et devra le présenter lors de chaque requête transmise à la plateforme numérique SAS (serveur).

<p>Ci-dessous les informations utiles pour chacun des environnements ANS :</p>
<br>**Recette ANS**
- Certificat MTLS (<http://igc-sante.esante.gouv.fr/PC%20TEST/>) :
  - Racines : ACR-EL-TEST.cer (<http://igc-sante.esante.gouv.fr/AC%20TEST/ACR-EL-TEST.cer>)
  - Intermédiaires : ACI-EL-ORG-TEST.cer (<http://igc-sante.esante.gouv.fr/AC%20TEST/ACI-EL-ORG-TEST.cer>)
- C = FR, ST = Paris (75), O = CABINET MLLE DENTISTE0023419, OU = 499700234190004, CN = sas-agregateur-recette
<br>**Pré-production ANS**
- Certificat MTLS (<http://igc-sante.esante.gouv.fr/PC%20TEST/>) :
  - Racines : ACR-EL-TEST.cer (<http://igc-sante.esante.gouv.fr/AC%20TEST/ACR-EL-TEST.cer>)
  - Intermédiaires : ACI-EL-ORG-TEST.cer (<http://igc-sante.esante.gouv.fr/AC%20TEST/ACI-EL-ORG-TEST.cer>)
- C = FR, ST = Paris (75), O = CABINET M. MASSEUR0034394, OU = 499700343942006, CN = sas-aggregator-preproduction
<br>**Production ANS**
- Certificat MTLS (<http://igc-sante.esante.gouv.fr/PC/#ca>) :
  - Racines : ACR-EL.cer (<http://igc-sante.esante.gouv.fr/AC/ACR-EL.cer>)
  - Intermédiaires : ACI-EL-ORG.cer (<http://igc-sante.esante.gouv.fr/AC/ACI-EL-ORG.cer>)
- C = FR, ST = Paris (75), O = AGENCE DES SYSTEMES D'INFORMATION PARTAG, OU = 318751275100020, CN = sas-aggregator-production

Tout un ensemble de tests seront ensuite réalisés par les équipes projet afin de vérifier et valider la conformité de l'implémentation.

##### Flux concernés

Les flux concernés par les modalités de sécurisation des échanges entre la plateforme numérique SAS et les solutions logicielles éditeurs dans le rôle **CLIENT** sont précisées ci-dessous :
- [Création de rendez-vous](specifications_techniques_2.html)
- [Mise à jour de rendez-vous](specifications_techniques_3.html)
