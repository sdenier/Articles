# Découverte et amorçage de projet : planifier des capacités et des risques

Face à un porteur de projet en phase de démarrage, nous avons besoin d'outils pour 1) comprendre son idée et sa valeur, 2) structurer son approche pour tester au mieux son idée. Dans notre expérience, l'approche story map demande en fait une certaine maturité des process agiles et du domaine pour être pleinement efficace. Nous explorons dans cet article une approche plus terre-à-terre et pragmatique, identifiant avant tout la valeur et le risque d'un projet pour obtenir un démarrage efficace.

## Qu'attend-on de nous ?

Dans l'article précédent, nous avons expliqué comment la story map n'était pas l'outil le plus adapté pour découvrir et planifier un nouveau projet. Bien que favorisant la discussion, le focus sur les activités des utilisateurs et la planification des lots de fonctionnalité ne permet pas d'aborder les questions fondamentales du porteur de projet à ce stade :

- est-ce que mon projet marche dans la réalité ?
- est-ce qu'on a identifié les problèmes clés ?
- comment procéder pour tester au mieux les idées ?
- combien et comment investir ?

Avec la story map, ceci se traduisait par les questions suivantes :

- Est-ce que la story map correspond à la liste des fonctionnalités ? Qu'est-ce qui va rentrer dans le périmètre final ?
- Combien ça va coûter ?

Ce qui amenait immanquablement à des incompréhensions et des discussions commerciales sur le forfait de développement. Il s'agit de questions qui semblent importantes, mais qui ne correspondent en fait pas à la collaboration que nous souhaitons mettre en place avec les porteurs de projet. Pour autant, nous faisions avec et arrivions à fournir les réponses demandées.

## Petite histoire qui n'a pas marché et nous a poussé à changer

Jusqu'au jour où nous sommes tombés sur un accompagnement agile d'un projet industriel de recherche et développement. Ce projet était au stade du démarrage, avec des partenaires expérimentés chacun dans leur domaine (industrie lourde, start-up, laboratoire de recherche publique) et bien évidemment des méthodes de travail différentes. Etant sollicités sur la planification de ce projet en mode agile, nous sommes partis de façon classique sur une story map. Mais il s'est vite révélé que celle-ci ne servirait à rien car elle était inadaptée à la taille du projet, à la maturité des participants, à leur mode d'organisation, et n'apportait pas de réponses pertinentes aux questions posées par les participants.

Imaginez passer la journée à recadrer les participants, expliquer une approche centrée sur les utilisateurs, quand certains ont des problématiques de recherche en tête, d'autres des problèmes de développement industriel, le tout dérivant en une sorte de "comité de pilotage" qui ne dit pas son nom. Vous comprendrez vite que vous faites fausse route.

## La solution qui sauve la vie

Par hasard, c'est peu après ce premier échec que j'ai (re)découvert le blog de Liz Keogh et en particulier cet article nommé [Capability-based Planning and Lightweight Analysis](http://lizkeogh.com/2013/09/05/capability-based-planning-and-lightweight-analysis/). Et cet article fut une bouée de secours, nous apportant des idées et des méthodes pour aborder ce projet et de nombreux autres. Les sessions suivantes de notre projet d'accompagnement furent nettement plus positives et productives juste en s'essayant à quelques principes.

Le but de cet article n'est pas de présenter toutes les idées de Liz, rassemblées dans sa thématique [Embracing Uncertainty](http://lizkeogh.com/embracing-uncertainty/) ainsi que celles exposées par Dan North dans sa série sur [Deliberate Discovery](http://dannorth.net/2010/08/30/introducing-deliberate-discovery/). Ces lectures sont cependant vivement recommandées pour leur richesse, leur aspect didactique et pour comprendre d'où viennent ces idées (attention, il y en a pour quelques heures si vous plongez dedans !). Nous allons plutôt présenter comment nous exploitons ces idées dans notre approche de découverte d'un projet.

## Découverte de projet : comment démarrer ?

### Vision des acteurs

Comme pour la story map, nous commençons par une vision globale. Le but est ici de faire un tour rapide de toutes les personnes impactées par le projet et de noter comment ou pourquoi elles seraient impactées.

- le(s) porteur(s) de projet (*primary stakeholder*) défend la vision du projet : l'idée qui apporte une nouvelle valeur et qu'il faut donc réaliser. Ce sont ceux qui bénéficient le plus de l'idée.
- les acteurs secondaires (*secondary or incidental stakeholders*) ont des besoins ou buts qui peuvent être impactés par le projet. Le projet peut améliorer, maintenir voire même dégrader ces besoins, mais pas au point où cela deviendrait bloquant pour la réussite du projet.

Les acteurs secondaires regroupent en fait de nombreux profils, parmi lesquels on peut trouver les utilisateurs du système, les intervenants financiers, acteurs en amont ou en aval, et aussi les concurrents. On s'intéressera en particulier aux acteurs pour lesquels négliger les besoins ou buts conduiraient à l'échec du projet.

### Découverte et cartographie des capacités

La vision nous sert à identifier les acteurs les plus importants pour la réussite du projet. Pour chacun, nous pouvons explorer comment il travaille, quels artefacts il produit ou utilise, comment il interagit avec les autres acteurs. Ce travail esquisse les contours du système et de ses utilisateurs à travers les besoins, les interactions, les problèmes de chacun.

Mais pour pouvoir représenter le système pour tout le monde et le discuter, nous exprimons en fait les capacités du système. Cette dernière indique que tel besoin ou but est bien pris en compte, sans rentrer dans le détail de la fonctionnalité ou de la solution : on parlera de la capacité à supporter tel problème, telle activité, sans être obligé de figer une fonctionnalité.

PRENDRE UN EXEMPLE (RM TOOL, ENV PICTURE ?)

*La vision du porteur de projet doit apparaître dans les capacités du système.*

Il est tentant de décrire une capacité comme une fonctionnalité : l'exemple aide les participants à se mettre d'accord sur ce qu'ils veulent dire. Cependant, une fois les idées clarifiées, j'essaie si possible de remonter à un niveau d'expression plus abstrait dans l'image globale. Ainsi on ne fige pas une fonctionnalité, on laisse la porte ouverte à d'autres solutions pour cette capacité, une fois que l'expérience aura apporté d'autres aspects.

A ce stade il est fréquent de faire des allers-retours pour reformuler, scinder ou fusionner des capacités. Il est aussi facile de commencer à identifier certaines dépendances entre capacités, typiquement des dépendances de flux.

EXEMPLE

En fonction de la taille et du type du projet, il est facile d'adapter l'approche en faisant varier le niveau d'abstraction des capacités. Sur un petit projet, une capacité sera très proche d'une fonctionnalité utilisateur. Mais sur les gros projets (comme notre projet R&D), il est fréquent que les capacités soient à l'échelle de sous-systèmes réalisés par différents acteurs (et qui peuvent faire eux-mêmes l'objet d'une cartographie si besoin). Le fait de s'arrêter à des capacités d'un système, quel que soit sa taille, permet de ne pas tomber dans le piège du catalogue de fonctionnalités à la story map. On cherche avant tout à faire une carte complète, même si elle est peu détaillée.

Avec ces règles, il est fréquent que la carte initiale du système tienne en une dizaine de capacités. Un tableau blanc et des feutres, ou bien quelques post-it sont donc largement suffisants pour réaliser l'analyse.

### Identification de la valeur et du risque des capacités

Nous pouvons rentrer dans le vif du sujet, là où la méthode de Liz Keogh prend tout son sens. Suite à cette cartographie, nous avons un ensemble de capacités représentant notre projet : parmi celles-ci, certaines sont des *commodités*, c'est-à-dire qu'elles sont nécessaires au fonctionnement du système sans être innovantes. D'autres sont classées *différenciateurs*. Ce sont celles qui vont faire la différence du projet par rapport à d'autres solutions. La vision du projet est en particulier un différenciateur. Si cela ne semble pas assez différenciant, creusez encore : la différence n'est pas nécessairement exprimé par une nouvelle fonctionnalité, mais par une façon différente d'enchaîner des flux, par un business model alternatif…

DEVELOPPER UN PETIT PEU SUR COMMO vs SPOIL vs DIFF (exemples rmtool)

Vient ensuite la seconde étape, qui consiste à évaluer le risque de développer chaque capacité. La notion de risque est souvent abordée dans les projets agiles, mais par nature le risque est incertain voire inconnu - et comment évaluer quelque chose que l'on ne connaît pas ? La solution de Liz Keogh est élégante, en proposant une échelle sur un critère simple, accessible à tout le monde : elle consiste à s'auto-évaluer sur son ignorance, "ce qu'on ne connaît pas". Liz propose 5 niveaux, où 1 est le niveau minimal ("on maîtrise complètement le sujet") et 5 le maximal ("on ne sait rien sur le sujet"). Il n'y a pas de définition rigoureuse pour chaque niveau, mais les interprétations suivantes peuvent guider votre choix :

1. tout le monde sait faire cela ; cela fait partie des bases du métier
2. c'est un sujet connu dans le métier, au moins une personne dans l'équipe le connaît
3. au moins une personne dans l'entreprise a déjà fait cela, ou bien a accès à une expertise sur le sujet (la connaissance n'est pas acquise mais reste accessible)
4. personne dans l'entreprise n'a fait cela, mais d'autres entreprises le font ; il faudra donc peut–être passer par leur expertise, la formation, l'achat de composants pour acquérir la capacité (il peut s'agir de concurrents !)
5. personne à notre connaissance n'a fait cela ; cela implique a minima une phase exploratoire, voire de la pure R&D.

*Bien sûr, plus vous estimez que le niveau de risque est fort, plus il y a d'incertitudes sur les problèmes que vous allez rencontrer, moins une estimation est pertinente et plus vous devez avoir une approche exploratoire.* 

C'est certainement l'aspect le plus intéressant de la méthode de Liz. En tant que professionnels, nous sommes formés à toujours donner une réponse au client. Pourtant l'informatique est bien un domaine où il est difficile de tout connaître. Cette échelle vous encourage à être honnête avec vous-même et votre porteur de projet : les points durs se cachent derrière votre ignorance, donc identifier et reconnaître ceux-ci vous permettra de progresser plus vite vers la conclusion du projet.

### Passer du plan aux étapes

Croiser la valeur différenciante et les risques des capacités nous permet de dresser un plan d'attaque. Comme noté par [Dan North](http://dannorth.net/2010/08/30/introducing-deliberate-discovery/), si vous réfléchissez à des projets passés et notez tout ce qui a pu gêner leur réalisation, le frein principal aura été tout ce que vous ignoriez au début et n'avez pu prévoir : ces technologies que vous avez apprises en cours de route, ces fausses pistes qui semblaient prometteuses, ces changements d'objectifs liés de à nouvelles opportunités, et tous les accidents de parcours qui ont affecté la vie du projet. Suivant son principe de *découverte délibérée*, plus vite on détecte et attaque les points incertains d'un projet, plus l'équipe sera capable de se projeter sur la réalisation, plus les risques de dérive diminuent.

Par nature, le point différenciant de votre projet est celui que personne n'a jamais fait : vous ne savez donc pas combien cela va coûter ni si cela va marcher. Cela tombe bien. Comme vous ne voulez probablement pas prendre tous les risques d'un seul coup, pourquoi ne pas commencer par l'aspect de votre projet qui apporte la valeur et qui peut en même temps faire échouer le projet ?

Reconsidérez votre cartographie des capacités : comment pouvez-vous la réaliser en cherchant la valeur et en éliminant les risques ? Peut-être le projet est-il assez simple pour être réalisé en une fois. Plus probablement, il y a beaucoup d'inconnus au tableau et vous avez besoin de planifier votre projet par étape.

- Il arrive que la capacité différenciante apparaisse trop compliquée pour être aboutie en une fois. Dans ce cas il peut être possible de redécouper celle-ci en capacités moins différenciantes mais plus faciles à atteindre.

- Si votre capacité différenciante n'est pas notée comme risquée, rediscutez-la. Peut-être est-elle mal exprimée pour que les gens perçoivent le risque. Peut-être la vraie différence et le risque sont-ils dissimulés dans un certain aspect de la capacité, qu'il faut alors mettre en avant, extraire comme une capacité à part entière.

- Si vous avez plusieurs capacités différenciantes et risquées, essayez de les échelonner pour ne pas avoir plusieurs problèmes sur le feu. Il peut y avoir des priorités ou des dépendances entre capacité qui ordonneront les étapes.

- Et si certaines capacités nécessaires à votre projet sont risquées sans être différenciantes, posez-vous la question de faire baisser le risque sur cet aspect : se contenter d'une version allégée de la capacité, acheter un système tout prêt, proposer des solutions alternatives pour satisfaire la capacité.

En répétant cette analyse sur les capacités, leur valeur et leur risque, les étapes de votre projet se dessinent peu à peu : chaque étape vise à éliminer un risque tout en apportant une nouvelle valeur. Vous concentrez votre effort sur l'essentiel. Les commodités et les fonctionnalités accessoires sont limités au strict minimum, tant que les risques essentiels ne sont pas cernés et maîtrisés.

Un autre principe pour préparer votre plan d'attaque est de fixer des rendez-vous réguliers pour démontrer la valeur de votre projet. Quelle est la prochaine étape ? Quelle valeur pensez-vous pouvoir démontrer la prochaine fois ? Quand vous pouvez décrire de quoi sera capable la prochaine version du système et que vous êtes confiants dans votre capacité de le réaliser, alors vous êtes prêts pour démarrer le projet !

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




Notre approche "problem-oriented"

Mais l'aspect le plus intéressant et révélateur de cette méthode est son échelle de complexité ou ignorance. D'abord parce qu'elle met l'accent sur le non-dit des projets en mode forfait : 

Quelle proposition faisons-nous au porteur ? Comment répondre à ses questions ? Forecast vs estimation

- on devient plus acteur dans le déroulement du projet (et moins réalisateur de la solution)




Ouverture : changer encore et toujours nos méthodes agiles/notre vision de l'agilité

Chacun ses défauts lié à sa formation, son expérience, son histoire personnel. Cette solution convient à notre problème, peut-être pas au vôtre. Gardez l'esprit ouvert.