Liste des ressources à utiliser par cas d'usage


### CPTS

Liste des profils à utiliser dans le cadre du cas d'usage CPTS

{% sql SELECT Id || '.html' as "Profil", Type, IFNULL(Description,' ') as "Description" from Resources
where Id like '%cpts%' %}

