Liste des ressources à utiliser par cas d'usage

### PS à titre individuel

Liste des ressources (profils,paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage PS à titre individuel (y compris les ressources communes aux autres cas d'usage)

{% sql SELECT '[' || Id ||']('||Type||'-' || id || '.html)' as "Id", Type, IFNULL(Description,' ') as "Description" from Resources
where Id not like '%sos%' and  Id not like '%cpts%' and Id not like 'Example%'and Type != 'ImplementationGuide' %}

### CPTS

Liste des ressources (profils,paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage CPTS

{% sql SELECT '[' || Id ||']('||Type||'-' || id || '.html)' as "Id", Type, IFNULL(Description,' ') as "Description" from Resources
where Id like '%cpts%'and Id not like 'Example%' %}

### SOS Médecins

Liste des ressources (profils,paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage SOS Médecins

{% sql SELECT '[' || Id ||']('||Type||'-' || id || '.html)' as "Id", Type, IFNULL(Description,' ') as "Description" from Resources
where Id like '%sos%' and Id not like 'Example%' %}

