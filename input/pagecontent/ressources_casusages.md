Liste des ressources à utiliser par cas d'usage


### CPTS

Liste des profils à utiliser dans le cadre du cas d'usage CPTS

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description FROM Resources WHERE Type in ('StructureDefinition','ValueSet') and Description like "%CPTS%" %}

<!-- like "%Profil%" rajouté car induit une erreur si vide -->