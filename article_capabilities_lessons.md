# Découverte et amorçage de projet : qu'avons-nous appris de la planification par capacités ?

Dans ce dernier article, nous allons repartir des [problèmes rencontrés avec les story maps](http://blog.sogilis.com/post/109977013776/decouverte-et-amorcage-de-projet-le-probleme) et voir comment la planification par capacités apporte des réponses plus pertinentes dans notre contexte. Cette rétrospective nous permettra de voir que l'essentiel n'est pas dans la méthode de Liz, mais bien dans sa façon d'approcher et de prioriser les problèmes - favoriser [« les individus et leurs interactions plus que les processus et les outils »](http://www.agilemanifesto.org/iso/fr/). Ceci nous mènera naturellement à une petite réflexion (une dernière leçon d'humilité) sur notre approche de l'agilité avec nos porteurs de projet.


## Quelques leçons tirées de la cartographie par capacité

### Les utilisateurs ne représentent que la partie visible des acteurs du projet

Dans le cadre d'une story map, l'accent est mis sur les activités et les cas d'utilisation du système. Cela peut conduire à se focaliser sur les utilisateurs principaux du système, au détriment d'autres acteurs moins en vue mais dont l'implication dans le projet peut être déterminante. Ainsi, au cours du développement d'une application web, nous avions fixé des pré-requis pour les navigateurs des clients. Mais nous nous sommes rendus compte bien tardivement que certains de nos collègues (impliqués indirectement dans le projet) n'avaient alors plus accès à l'application, car les pré-requis étaient trop hauts pour leur machine !

De plus, un focus trop rapide sur les utilisateurs entraîne facilement un focus sur les fonctionnalités, ce qui se fait au détriment de l'analyse des besoins et de la recherche de solutions. Le niveau de détails est trop bas pour s'imprégner des enjeux et des problématiques du projet. Plus important encore, cela peut [induire en erreur](http://lizkeogh.com/2010/02/02/theyre-not-user-stories/) sur l'acteur et le besoin réel auquel répond la fonctionnalité.

La vision du projet, avec sa proposition de valeur mais aussi son impact sur les acteurs, est à cultiver dès le début : balayer tous les acteurs du projet, essayer de comprendre leurs besoins, leur attitude et leur impact sur le projet, si celui-ci sert leurs intérêts ou bien peut être un frein. Cette analyse a aussi pour but de ne pas se fixer d'oeillères sur ce qu'il faut réaliser : le but est de satisfaire au maximum les besoins de chaque acteur du projet. La solution ne passe pas forcément par une liste de fonctionnalités !

### Le focus est sur la résolution de problèmes, pas sur les fonctionnalités

Le focus trop rapide sur les fonctionnalités peut aussi avoir des effets négatifs lors de la réalisation du projet.

- Le besoin de la fonctionnalité est peu approfondie ; il ne reste qu'une description superficielle de la fonctionnalité, de laquelle il est difficile de revenir aux sources si on cherche une solution alternative.
- La liste des fonctionnalités de la story map apparaît parfois comme un périmètre, à la manière d'un cahier des charges. Or beaucoup de choses peuvent encore changer en cours de projet.
- La granularité des fonctionnalités peut être très hétérogène et leur description aussi : les « petites » fonctionnalités auront tendance à être plus détaillées que les grosses, car plus évidentes ; conjointement la complexité des grosses peut être masquée par le manque de détails dans leur description.
- Des notions de valeur et de coût sont parfois utilisées pour aider à la priorisation des fonctionnalités. Ces notions posent des problèmes de définition (s'agit-il de la valeur en tant que nouveauté ou nécessité ? Quelle est l'échelle pour l'estimation du coût : *story points*, jour-hommes ?) Se focaliser sur ces estimations peut masquer des problèmes de dépendances : la fonctionnalité X n'est pas jugée intéressante car coûteuse, pourtant une sous-partie est nécessaire à une autre partie valorisable.

Bref, la story map peut donner une fausse impression de complétude, à la manière d'un cahier des charges, avec différents lots de fonctionnalités définis à l'avance. En cas de problème lors de la réalisation, le champ d'action pour rétablir le projet peut être limité car les acteurs auront du mal à sortir des rails de la story map.

Tout projet propose une vision différente par rapport à l'existant. Mais il existe plusieurs façons de réaliser cette vision. L'important est donc de ne pas avoir d'oeillères sur le chemin de la réalisation. Parler de capacités doit permettre de se concentrer sur le problème et le besoin à résoudre.

- En prenant une approche centrée sur le problème, il y a moins de risque de passer du temps sur les détails d'une solution (la fonctionnalité) au détriment d'autres possibilités.
- En exprimant les futures *capacités* du système, vous savez que vous devez chercher une solution pour satisfaire ces capacités. Les moyens de les satisfaire sont multiples et peuvent être remises en cause en cours de projet (nouvelles options, solutions alternatives et moins coûteuses). Le terme de capacité permet aussi plus facilement d'aborder les aspects non fonctionnels du système (robustesse, performance...)
- En cas d'échec avec une solution, il est plus facile de repartir de la capacité que d'une fonctionnalité (quel est le problème, le besoin ? Comment y répondre ?)

### La planification est basée sur le dérisquage et la valorisation du projet, pas sur la priorisation par estimation

La pratique courante issue des story maps et des méthodologies agiles est de prioriser les stories par rapport à leur valeur et leur coût estimé, pour les placer dans l'ordre dans le backlog. La notion de chemin critique, voire de MVP, est parfois abordée mais pas nécessairement approfondie. Le backlog ressemble alors à une liste de fonctionnalités à développer.

- Le suivi se base sur la réalisation d'un plan (même s'il est léger) et il peut se créer un ressenti de retard ou de travail mal fait à cause des sacrifices faits par rapport au plan (fonctionnalité ou qualité).
- La priorisation liée aux dépendances entre fonctionnalités est souvent masquée dans cette approche ; cela peut rendre la repriorisation complexe.
- Si une fonctionnalité se révèle mal estimée en cours de sprint, des décalages liés à la résolution des problèmes se créent dans le suivi de charge, ce qui peut être perturbant pour une équipe mal rôdée ; l'équipe pense prendre du retard, qui ne peut être rattrapé sauf à changer le périmètre.
- Même tard en fin de projet, on peut tomber sur une exigence complexe, mal estimée, qui rend difficile la vision sur la fin du projet.
- Plus on est ignorant sur un aspect du projet, moins on sera pertinent pour son estimation, plus on prend des risques à s'engager. Or les plans type story map tendent malgré tout à un engagement, même peu formalisé.

En se focalisant sur les risques d'échec ainsi que sur les points différenciants, l'accent est mis sur l'essentiel : trouver la prochaine étape la plus sûre et la plus rapide pour démontrer la valeur du projet, avant de passer à la suivante. L'approche vise la réalisation de la vision, la résolution des problèmes rencontrés, plutôt que la coche de fonctionnalités dans une liste.

### Traiter l'estimation comme une projection, pas un engagement

Bien que l'on sorte du cadre strict de la planification, l'estimation du coût d'un projet est la suite logique pour un porteur. Là encore, Dan North en a très bien décrit les enjeux et les écueils dans [The Perils of Estimation](http://dannorth.net/2009/07/01/the-perils-of-estimation/) et même proposé son idée dans [Blink Estimation](http://dannorth.net/2013/08/08/blink-estimation/).

Sans rentrer dans le détail de ce débat (voir tout ce qui concerne le [No Estimates](https://twitter.com/search?q=%23NoEstimates&src=typd)), la méthode de Liz apporte son petit grain de sel aux estimations. En effet, plus vous estimez que le niveau de risque est fort, plus il y a d'inconnus sur les problèmes que vous allez rencontrer, et plus votre estimation sera incertaine. Jusqu'au point où une estimation n'est plus pertinente et où vous devez commencer par une approche exploratoire, moins risquée et moins coûteuse.

Plus simplement, la question de l'estimation peut être traitée par l'équipe comme une projection dans l'avenir. Quelle horizon se donne-t-elle pour trouver une solution à ce problème ? Et quelle confiance a-t-elle dans cette horizon ? Si l'équipe n'est pas confiante, comment réduire le risque ? Si besoin, l'équipe peut renforcer son opinion en utilisant le poker planning, mais l'estimation ne doit pas se transformer en chiffrage de fonctionnalités à la carte.

### Et si le porteur de projet a déjà un cahier des charges, un backlog, des idées toutes prêtes…

Stop ! La démarche ci-dessus doit normalement pousser tout le monde à remettre en cause des fonctionnalités prématurées, à proposer d'autres solutions. Si le porteur insiste pour inclure une fonctionnalité dans votre cartographie, comment pouvez-vous la réexprimer comme une capacité, en gardant la fonctionnalité comme un exemple de solution concrète pour cette capacité ? Comme proposé par Liz, demandez au porteur **pourquoi** il veut cette fonctionnalité et jusqu'à remonter aux besoins pour pouvoir exprimer la capacité.


## Obsolète, la story map ?

Comme noté dans le premier article, la story map pose problème dans notre contexte de découverte de projet, où le domaine est souvent nouveau pour l'équipe et les pratiques agiles inconnues des porteurs de projet. La planification par capacités est plus abordable et nous permet de découvrir plus rapidement les fondamentaux d'un projet naissant, mais aussi d'organiser les premières itérations, produire des prototypes de démonstration, prévoir les prochaines étapes - et pourquoi pas servir de base à une story map qui détaillera plus les fonctionnalités.

Quand l'équipe a acquis plus de maturité sur le domaine, ses enjeux et ses problèmes, il peut être intéressant d'engager un processus orienté story map. Celle-ci permet de récapituler la vision de ce qu'on veut réaliser, la réordonner, préparer les détail des prochaines itérations, quand la vision du projet s'est stabilisé. Elle permettra alors un suivi des étapes du projet à la vue de tous, lot par lot.

Peut-on complètement se passer de la story map ? Je crois que oui. Comme noté par Dan North, des [équipes incroyablement efficaces](http://dannorth.net/2013/01/15/accelerating-agile/) se sont construites en dehors de la culture agile classique, simplement en appliquant du bon sens dans leurs pratiques. La planification par capacités n'est qu'une des pratiques supportant ce type d'approche.


## Changer encore et toujours notre approche de l'agilité

Aux origines des approches agiles, il y avait la volonté de mettre en place un cadre de communication qui évitait les échanges toxiques et non-constructifs entre les utilisateurs et les équipes techniques. En un sens, les premières méthodes agiles étaient là autant pour "protéger" l'équipe et lui permettre d'être productive que pour favoriser la communication. Encore aujourd'hui, certaines méthodes ont un côté très cadré voire cérémonieux.

De façon générale, les méthodes agiles sont là pour aider au déroulement régulier du projet, qu'il soit court ou long. Mais tout le monde a vécu un jour ou l'autre cette expérience : copier une approche qui "a marché" ailleurs. Et quand ça ne marche pas, recommencer en expliquant que la méthode n'a pas été bien suivie. Dans le pire des cas, on arrive à [l'agilité Cargo Cult](http://mikehadlow.blogspot.co.uk/2014/03/coconut-headphones-why-agile-has-failed.html), où l'équipe se déclare agile parce qu'elle applique toutes les règles, mais sans en tirer les bénéfices car elle n'a pas su s'adapter à son contexte.

Ce qui est rarement dit sur les méthodes agiles, c'est qu'elles demandent souvent une bonne maturité sur le domaine du projet pour être 100% effective. Rien n'est plus plaisant que de travailler sur un projet complexe mais où chaque itération réussit son objectif, car les enjeux sont maîtrisés, les processus de décision évidents, le Product Owner bien informé et réactif.

Mais quand nous avons affaire à de nouveaux domaines inconnus pour nous, ces éléments sont loins d'être acquis : l'équipe cherche le bon niveau de communication, les zones d'ombre sont nombreuses, les enjeux encore mal identifiés. Il est tentant, et rassurant, pour l'équipe comme pour le porteur de se retrancher derrière un process, un contrat, un cahier des charges…

De même, les outils agiles comme la story map semblent souvent simples, voire triviaux en apparence, mais demande une bonne expérience pour être bien menée. Amener des nouveaux venus à utiliser ce type d'outil dès les premiers contacts rend les choses complexes !

C'est pourquoi choisir une approche moins structurée que la story map, comme la planification par capacité, est intéressant. Le niveau d'entrée est faible, car n'imposant pas différents concepts hiérarchisés (activité, cas d'utilisation, fonctionnalité) : la "capacité" résume ces concepts tout étant suffisamment souple pour que chacun se l'approprie. A ce stade, l'essentiel pour nous est d'échanger sur le projet. L'équipe technique peut être aussi force de proposition dans la réalisation du projet, et pas une simple exécutante.

Mais dans l'approche de Liz Keogh, l'aspect le plus intéressant et révélateur est certainement la prise en considération de sa propre ignorance et des risques associés. D'abord parce qu'elle met l'accent sur le non-dit des projets au forfait, typique des SSII : sur quelles bases, sur quelles estimations la proposition de forfait a-t-elle été faite ? Quels risques ont été prises en compte (réponse : très peu, voire aucun) ? Comment l'équipe va-t-elle gérer et communiquer sur ces risques (réponse : pas prévue, la communication sera gérée en cas de crise) ?

Pour un porteur de projet, notre première proposition est donc un accompagnement. Nous voulons aider le porteur à identifier les problèmes, valider ses idées, trouver des pistes de solution. 
(et cela ne marche pas toujours). De même, la réponse que nous lui apportons n'est pas forcément une estimation de son projet mais plutôt une projection : que pouvons-nous faire, quelle est la prochaine étape ? Nous sommes ainsi acteur dans le déroulement du projet, et non pas les simples exécutants d'une solution.
