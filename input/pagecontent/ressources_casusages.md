Liste des ressources à utiliser par cas d'usage


### CPTS

Liste des ressources (profils,paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage CPTS

{% sql SELECT '[' || Id ||']('||Type||'-' || id || '.html)' as "Id", Type, IFNULL(Description,' ') as "Description" from Resources
where Id like '%cpts%' %}

### SOS Médecins

Liste des ressources (profils,paramètres de recherche, terminologies, exemples) à utiliser dans le cadre du cas d'usage SOS Médecins

{% sql SELECT '[' || Id ||']('||Type||'-' || id || '.html)' as "Id", Type, IFNULL(Description,' ') as "Description" from Resources
where Id like '%sos%'  %}

