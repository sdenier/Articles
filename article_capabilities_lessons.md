
## Quelques leçons tirées de la cartographie par capacité

Pour bien comprendre les apports de cette méthode, il est utile de revenir sur quelques défauts constatés par expérience dans l'approche story map.

### Les utilisateurs ne représentent que la partie visible des acteurs du projet

Dans le cadre d'une story map, l'accent est souvent mis sur les utilisateurs qui seront amenés à utiliser le système, au détriment d'autres acteurs plus "passifs" mais dont l'implication dans le projet peut être déterminante.

TROUVER UN EXEMPLE ? (est-il important de s'occuper des capacités Facebook du projet pour le community manager tandis que l'impact du projet sur le directeur de production est ignoré).

Un focus trop rapide sur les utilisateurs entraîne facilement un focus sur les fonctionnalités, ce qui se fait au détriment de l'analyse des besoins et de la recherche de solutions. Le niveau de détails est trop bas pour s'imprégner des enjeux et des problématiques du projet.

La vision du projet, avec sa proposition de valeur mais aussi son impact sur les acteurs, est à cultiver dès le début : balayer tous les acteurs du projet, essayer de comprendre leurs besoins, leur attitude et leur impact sur le projet, si celui-ci sert leurs intérêts ou bien peut être un frein. Cette analyse a aussi pour but de ne pas se fixer d'oeillères sur ce qu'il faut réaliser : le but est de satisfaire au maximum les besoins de chaque acteur du projet. La solution ne passe pas forcément par une liste de fonctionnalités !

### Le focus doit être sur les capacités à résoudre des problèmes, pas sur les fonctionnalités

Un focus trop rapide sur les fonctionnalités, typique en story map, peut avoir des effets négatifs lors de la réalisation du projet.

- Le besoin de la fonctionnalité est peu approfondie ; il ne reste qu'une description superficielle de la fonctionnalité, de laquelle il est difficile de repartir ou revenir en sources si on cherche une solution alternative.
- La liste des fonctionnalités de la story map apparaît parfois comme un périmètre, à la manière d'un cahier des charges. Beaucoup de choses peuvent encore changer en cours de projet.
- La granularité des fonctionnalités peut être très hétérogène et leur description aussi : les "petites" fonctionnalités auront tendance à être plus détaillées que les grosses, car plus évidentes ; conjointement la complexité des grosses peut être masquée par le manque de détails dans leur description.
- des notions de valeur et de coût sont parfois utilisées pour aider à la priorisation des fonctionnalités. Ces notions posent des problèmes de définition (s'agit-il de la valeur en tant que nouveauté ou nécessité ? Quelle est l'échelle pour l'estimation du coût : *story points*, jour-hommes ? Se focaliser sur ces estimations peut masquer des problèmes de dépendances (la fonctionnalité X n'est pas jugée très intéressante, pourtant une sous-partie est nécessaire à une autre partie valorisable).

Bref, la story map peut donner une fausse impression de complétude, à la manière d'un cahier des charges, avec différents lots de fonctionnalités à réaliser définis à l'avance. En cas de problème lors de la réalisation, le champ d'action pour rétablir le projet peut être limité car les acteurs auront du mal à sortir des rails de la story map.

Tout projet propose une vision différente par rapport à l'existant. Mais il existe plusieurs façons de réaliser cette vision. L'important est donc de ne pas avoir d'oeillères sur le chemin de la réalisation.

- En prenant une approche centrée sur le problème, il y a moins de risque de passer du temps sur les détails d'une solution (la fonctionnalité) au détriment d'autres possibilités.
- En exprimant les futures "capacités" du système, vous savez que vous devez chercher une solution pour satisfaire ces capacités. Les moyens de les satisfaire sont multiples et peuvent être remises en cause en cours de projet (nouvelles options, solutions alternatives et moins coûteuses). Le terme de capacité permet aussi plus facilement d'aborder les aspects non fonctionnels du système (robustesse, performance...)
- En cas d'échec avec une solution, il est plus facile de repartir de la capacité que d'une fonctionnalité (quel est le problème, le besoin ? comment y répondre ?)

### La planification est basée sur le dérisquage et la vie du projet

La pratique courante issue des story maps et des méthodologies agiles est de prioriser les stories par rapport à leur valeur et leur coût estimé, pour les placer dans l'ordre dans le backlog. La notion de chemin critique, voire de MVP, est parfois abordée mais pas nécessairement approfondie. Le backlog ressemble alors à une liste de fonctionnalités à développer.

- Le suivi se base sur la réalisation d'un plan (même s'il est léger) et il peut se créer un ressenti de retard ou de travail mal fait à cause des sacrifices faits par rapport au plan (fonctionnalité ou qualité).
- La priorisation liée aux dépendances entre fonctionnalités est souvent masquée dans cette approche (même s'il est nécessaire de la prendre en compte), cela peut rendre la repriorisation complexe.
- Si une fonctionnalité se révèle mal estimée en cours de sprint, des décalages lié à la résolution des problèmes se créent dans le suivi de charge, ce qui peut être perturbant pour une équipe mal rôdée ; l'équipe prend du "retard", qui ne peut être rattrapé sauf à changer le périmètre.
- Même tard en fin de projet, on peut tomber sur une exigence complexe, mal estimée, qui rend difficile la vision sur la fin du projet.
- Plus on est ignorant sur un aspect du projet, moins on sera pertinent pour son estimation, plus on prend des risques à s'engager. Or les plans type story map tendent malgré tout à un engagement, même peu formalisé.

En se focalisant sur les risques de faire échouer le projet ainsi que sur la valeur différenciante, l'accent est mis sur un point essentiel : trouver la prochaine étape la plus sûre et la plus rapide pour démontrer la valeur du projet, avant de passer à la suivante. L'approche est centrée sur la réalisation de la vision, la résolution des problèmes rencontrés, plutôt que de cocher une liste de fonctionnalités.

### L'estimation est une projection d'expert, pas une collection de chiffrage ni un moyen de pilotage


forecast vs estimation : savoir se projeter (confusion entre exactitude/justesse et précision/(in)certitude)


- en cas de problème bloquant avec un risque majeur, on échoue plus vite, on gaspille donc moins de ressources
- pour cette démarche il est important d'être honnête avec soi-même et de dire qu'on ne sait pas faire ; c'est pourquoi une échelle de valeur nominale (complexité/risque de Keogh) est intéressante : elle ne pousse pas à donner une "quantité"
- on distingue la planification (au sens purement déroulement du projet, étapes de résolution d'un problème), de l'estimation/gestion des ressources

### Quand passer à l'étape suivante ?

Risque de rester dans le vague, le flou, l'abstrait. Il faut pouvoir prendre des actions concrètes à l'issue, pour la prochaine étape. En même temps,  pas besoin de creuser loin le détail, il suffit d'avoir assez d'éléments pour cette prochaine étape, anticiper un peu les suivantes, et pouvoir dire stop si besoin.

### Le porteur de projet a déjà un cahier des charges, un backlog, des idées toutes prêtes

Stop ! La démarche ci-dessus doit normalement pousser tout le monde à remettre en cause des fonctionnalités prématurées, à proposer d'autres solutions. Si le porteur insiste pour inclure une fonctionnalité dans votre cartographie, comment pouvez-vous la ré-exprimer comme une capacité, en gardant la fonctionnalité comme un exemple de solution concrète pour cette capacité ?

## story map vs capability red : when, why?

Story map = super pour récapituler la vision de ce qu'on veut réaliser, la réordonner, préparer les détail des prochaines itérations, quand la vision du projet est à peu près stable (au moins jusqu'au prochain lot).

Capability map = découvrir un projet, organiser les premières itérations (type spike, démo, proto), éventuellement préparer des story maps pour décrire des futures itérations, recentrer un projet sur ses fondamentaux.

## Changer encore et toujours notre vision de l'agilité

Agile Cargo cult / Band wagon : quand on applique à la lettre les principes et les méthodes de l'agilité, sans comprendre d'où ils viennent, sans les adapter au contexte, au final en ne retirant aucun bénéfice de ces principes.

http://mikehadlow.blogspot.co.uk/2014/03/coconut-headphones-why-agile-has-failed.html

malheureusement, les outils proposés par l'agilité = maturité de l'équipe et du projet pour donner leur pleine mesure. Rien ne remplace l'expérience, mais on a besoin d'autres approches moins codifiées dès qu'il s'agit d'aborder un nouveau domaine.

Aux origines des approches agiles (XP), il y avait la volonté de mettre en place un cadre de communication qui évitait les échanges toxiques et non-constructifs entre les utilisateurs et les équipes techniques. En un sens, les premières méthodes agiles étaient là autant pour "protéger" l'équipe et lui permettre d'être productive que pour favoriser la communication. C'est pourquoi certaines méthodes ont un côté très cadré, au point que certaines équipes semblent sectaires par rapport à leurs règles. Au point qu'elles peuvent sembler isolées, derrière des murs de verre - et le risque est grand dans ce cas que la communication passe mal. La relation client-équipe passe alors par l'intermédiaire du backlog. Nous ne privilégions pas forcément cette approche en début de projet, car la communication, l'identification de problèmes et la recherche de solutions en commun prime sur les autres aspects à ce stade. L'engagement dans un processus plus orienté story map peut venir plus tard, quand l'équipe aura atteint la maturité sur le domaine et les enjeux et les problèmes. Elle permettra alors un suivi des étapes du projet à la vue de tous.

Une erreur fondamentale est de voir l'équipe technique comme de simples exécutants, sans force de proposition.

Approche moins structurée qu'une story map, mais c'est justement son intérêt : fournir une approche avec un très faible niveau d'entrée, ne nécessitant pas une expérience de certains concepts "diffus" (Persona, ), le concept de "capacité" étant souple chacun mettant ce qu'il veut derrière les "capacités". L'essentiel étant d'échanger pour identifier les problèmes et trouver des solutions.

Notre approche "problem-oriented" : on veut faire plus que réaliser un projet, on veut d'abord aider les porteurs à identifier des problèmes, valider des idées, trouver des solutions.

Mais l'aspect le plus intéressant et révélateur de cette méthode est son échelle de complexité ou ignorance. D'abord parce qu'elle met l'accent sur le non-dit des projets en mode forfait : 

Quelle proposition faisons-nous au porteur ? Comment répondre à ses questions ? Forecast vs estimation

- on devient plus acteur dans le déroulement du projet (et moins réalisateur de la solution)




Ouverture : changer encore et toujours nos méthodes agiles/notre vision de l'agilité

Chacun ses défauts lié à sa formation, son expérience, son histoire personnel. Cette solution convient à notre problème, peut-être pas au vôtre. Gardez l'esprit ouvert.
