Liste des ressources à utiliser par cas d'usage


### CPTS

Liste des ressources (profils,paramètres de recherche, terminologiesn exemples) à utiliser dans le cadre du cas d'usage CPTS

{% sql SELECT '[' || Id ||']('||Type||'-' || id || '.html)' as "Id", Type, IFNULL(Description,' ') as "Description" from Resources
where Id like '%cpts%' %}

