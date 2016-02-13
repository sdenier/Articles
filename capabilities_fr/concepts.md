# Concepts

Pour faire suite à notre discussion, j'ai essayé de mettre au propre les idées que j'ai retenues de mes lectures de Keogh/North, de les contraster avec des pratiques "courantes"/communément admises dans l'agilité (quitte à caricaturer) et de montrer le contraste entre les deux. Cela part aussi de mon expérience personnel, des échecs qu'on a pu avoir, et de comment ces pratiques aident dépasser ces problèmes dans mon expérience.

C'est loin d'être construit et il y a du boulot à faire pour aller à essentiel, à toi de voir ce qui te parle et te semble le plus important : on pourra creuser à ce moment là pour présenter ça en partie.


## Users vs Stakeholders

Pratique courante : identifier les utilisateurs, décrire leurs besoins et des user stories pour identifier des fonctionnalités

Défauts :

- on peut manquer un acteur important du système qui n'est pas utilisateur à proprement parler (et ne pas satisfaire ses besoins)
- trop de focus sur les fonctionnalités, au détriment de solutions alternatives moins coûteuses
- vision globale des problématiques du projet plus difficile, car le niveau de détails est déjà trop bas

Meilleure pratique : identifier les stakeholders et leurs buts, les contraintes du projet

Conséquences :

- vision des acteurs du projet, au-delà des simples utilisateurs
- réflexion sur leurs besoins, les problèmes qu'ils se posent, et ouverture vers plusieurs types de solutions (pas que des solutions dans les fonctionnalités)


## Features vs Capabilities

Pratique courante : exprimer les fonctionnalités désirées du système (avec si possible, des priorisations, de la valeur, du coût etc)

Défauts :

- l'expression de fonctionnalités "enferme" dans un périmètre à développer, qui peut être difficile à discuter/remettre en cause en cas de problème
- l'expression du besoin de la fonctionnalité n'est pas nécessairement bien faite : il est plus difficile de prendre du recul sur son importance, de proposer des solutions alternatives pour résoudre le problème à la racine
- problème de définition de la valeur : donne-t-on de la valeur uniquement par rapport à la "nouveauté/différentiation", ou bien aussi par rapport à la "nécessité" de la fonctionnalité ?
- utiliser une priorisation par coût/valeur cache certains problèmes : il y a des dépendances entre fonctionnalités (pas toujours identifiées), des fonctionnalités peuvent être obligatoires malgré leur faible valeur, il est difficile d'estimer le coût d'une fonctionnalité, peu de recherche sur les solutions alternatives
- la granularité des fonctionnalités peut être très hétérogène et leur description aussi : les "petites" fonctionnalités auront tendance à être plus détaillées que les grosses, car plus évidentes, mais cela peut masquer la complexité des grosses par le manque de détails dans leur description ?

Meilleure pratique :

- BDD, conversation avec les acteurs/utilisateurs pour exprimer leurs activités et flots de travail
- expression des "capacités" d'un système à supporter ces activités, ouvre la voie à plusieurs solutions (fonctionnalités, solution de rechange, étapes intermédiaires pour fournir une solution à moindre coût avant d'arriver à une fonctionnalité complète...)

Conséquences :

- recherche d'options, de solutions alternatives
- moins de focus sur les détails d'une solution/fonctionnalité au détriment d'autres solutions
- permet de revenir plus facilement aux fondamentaux (quel est le problème, le besoin ? comment y répondre ?) en cas d'échec sur une fonctionnalité
- le terme de capacité permet aussi plus facilement d'aborder les aspects non fonctionnels du système (type robustesse, performance...)


## Story-based Planification vs Capabilities-based Planification

Pratique courante : prendre les stories dans l'ordre de priorisation, en fonction de leur valeur/importance et de leur coût estimé

Défauts :

- la priorisation liée aux dépendances est souvent masquée dans cette approche (même s'il est nécessaire de le prendre en compte), cela peut rendre la repriorisation complexe
- si on tombe sur une story mal estimée en cours de sprint, des décalages se créent dans le suivi de charge pour résoudre le problème, ce qui peut être pertubant pour une équipe mal rôdée ; l'équipe prend du "retard", qui ne peut pas être rattrapé sauf à sacrifier le périmètre etc
- même tard en fin de projet, on peut tomber sur une story complexe, mal estimée, qui rend difficile la vision sur la fin du projet
- en bref, le suivi se base sur un plan (même léger) et il peut se créer un ressenti de retard ou de travail mal fait à cause des sacrifices faits par rapport au plan (fonctionnalité ou qualité)
- erreur fondamentale : moins on connaît de chose sur un aspect du projet, moins on sera pertinent sur son estimation, plus on prend des risques à s'engager sur cet aspect (or les plans par story mapping & co tendent malgré tout à un engagement, simplement mal formalisé)

Meilleure pratique : macro-planification des capacités basée sur l'importance et le risque, micro-planification (?) basée sur dérisquer les points les plus importants et plus de valeur

Conséquences :

- cela amène donc à estimer en plus d'une "valeur", le risque ou complexité d'une capacité, pour aborder les points risqués et importants en premier
- un tri naturel se fait pour éliminer les choses risquées et de peu valeur (recherche de solutions alternatives à moindre risque)
- en cas de problème bloquant avec un risque majeur, on échoue plus vite, on gaspille donc moins de ressources
- pour cette démarche il est important d'être honnête avec soi-même et de dire qu'on ne sait pas faire ; c'est pourquoi une échelle de valeur nominale (complexité/risque de Keogh) est intéressante : elle ne pousse pas à donner une "quantité"
- on distingue la pratique de la planification (au sens purement déroulement du projet, étapes de résolution d'un problème), de la partie estimation/gestion des ressources (cf plus bas)
- on devient plus acteur dans le déroulement du projet (et moins réalisateur d'une solution imaginaire sur papier)


## Problem Resolution (Cynefin…)

Bonnes pratiques :

- savoir identifier la nature d'un problème, appliquer le bon pattern pour ne pas gaspiller de temps/d'énergie sur les choses complexes qui n'en valent pas la peine
- "fail fast"
- garder l'esprit ouvert pour des solutions alternatives
- ne pas chercher la solution parfaite, savoir faire des essais/prendre de la dette pour ne stabiliser que quand les choses sont bien comprises

Planification & Dependencies

Bonne pratique :

- prendre en compte les dépendances entre capacités
- savoir faire des choix techniques ultra-simplifiés (dummy system/data, process manuel, etc) pour reléguer les risques non majeurs à plus tard, par exemple pour les capacités nécessaires afin de tester/démontrer au plus tôt la valeur des capacités différentiantes
- faire des démos rapides qui permettent de gagner en confiance, de tester/comprendre la valeur, de ne pas gaspiller de ressources
- n'aborder qu'un seul problème dur à la fois (et non pas tous les risques de plusieurs capacités à la fois)


## Story-based Estimation vs Expert-based Estimation

Pratique courante : story mapping, story "étalon", chiffrage relatif par des story points, etc

Défaut :

- portée du périmètre
- définition/niveau hétérogène des stories
- sélection des stories à chiffrer (lot, échantillon…)
- oubli de dépendances
- chiffrage des aspects non fonctionnel...

Bonne pratique: réunir un collège d'expert avec différents background, les faire discuter avec les clients jusqu'à ce qu'un certain nombre de zones d'ombre soit levées, leur demander les ressources estimées (et pas un "chiffrage" en jour-hommes), re-discuter en cas de désaccord profond, ...

Conséquences :

- activité moins harassante que le chiffrage à la chaîne des stories, moins de perte de temps, vision plus vaste et moins détaillé du projet, génération de beaucoup d'échange dans l'équipe et les clients basés sur la discussion plus que sur le chiffrage - le premier but est de lever des lièvres, voir s'il est possible de chiffrer (pas toujours le cas !) avant même de chiffrer
- il est plus facile de revoir avec un client trop ambitieux le redécoupage de son projet pour chiffrage, plutôt que de le faire après coup ou pire, de proposer un chiffre sur une partie inconnue
- on ne réfléchit pas en jour-homme mais terme d'équipe et de compétences
