Liste des ressources à utiliser par cas d'usage

### PS à titre individuel

Liste des ressources (profils, paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage PS à titre individuel (y compris les ressources communes aux autres cas d'usage)

{% sql {
  "query" : "select Id, Type, Description, Web from Resources where Id not like '%sos%' and Id not like '%cpts%' and Id not like 'Example%' and Id not like '%lrm%' and Type in ('StructureDefinition', 'ValueSet', 'SearchParameter')",
  "class" : "lines",
  "columns" : [
    { "title" : "Identifiant", "type" : "link", "source" : "Id", "target" : "Web"},
    { "title" : "Type", "type" : "markdown", "source" : "Type"},
    { "title" : "Description", "type" : "markdown", "source" : "Description"}
  ]
} %}

### CPTS

Liste des ressources (profils, paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage CPTS

{% sql {
  "query" : "select Id, Type, Description, Web from Resources where Id like '%cpts%' and Id not like 'Example%' and Type in ('StructureDefinition', 'ValueSet', 'SearchParameter')",
  "class" : "lines",
  "columns" : [
    { "title" : "Identifiant", "type" : "link", "source" : "Id", "target" : "Web"},
    { "title" : "Type", "type" : "markdown", "source" : "Type"},
    { "title" : "Description", "type" : "markdown", "source" : "Description"}
  ]
} %}

### SOS Médecins

Liste des ressources (profils, paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage SOS Médecins

{% sql {
  "query" : "select Id, Type, Description, Web from Resources where Id like '%sos%' and Id not like 'Example%' ",
  "class" : "lines",
  "columns" : [
    { "title" : "Identifiant", "type" : "link", "source" : "Id", "target" : "Web"},
    { "title" : "Type", "type" : "markdown", "source" : "Type"},
    { "title" : "Description", "type" : "markdown", "source" : "Description"}
  ]
} %}

### Transmission des informations de rendez-vous aux LRM

Liste des ressources (profils, paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage de redescente des informations de RDV aux LRM

{% sql {
  "query" : "select Id, Type, Description, Web from Resources where Id like '%lrm%' and Id not like 'Example%' ",
  "class" : "lines",
  "columns" : [
    { "title" : "Identifiant", "type" : "link", "source" : "Id", "target" : "Web"},
    { "title" : "Type", "type" : "markdown", "source" : "Type"},
    { "title" : "Description", "type" : "markdown", "source" : "Description"}
  ]
} %}
