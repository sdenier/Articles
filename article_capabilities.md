# Découverte et amorçage de projet : la planification par capacités et risques

## TLDR

Les méthodes agiles demandent une certaine maturité du projet et de l'équipe avant de donner leur pleine mesure. Comment faire pour démarrer au mieux un projet dans ce cadre ? Comment bien utiliser certains concepts et méthodes ? Comment cela peut aider dans les approches agiles classiques ?

## Qu'attend-on de nous ?

Dans l'article précédent, nous avons expliqué comment la story map n'était pas l'outil le plus adapté pour découvrir et planifier un nouveau projet. Bien que favorisant la discussion, le focus sur les activités des utilisateurs et la planification des lots de fonctionnalité ne permet pas d'aborder les questions fondamentales à ce stade :

- est-ce que mon projet marche dans la réalité ?
- est-ce qu'on a identifié les problèmes clés ?
- comment procéder pour tester au mieux les idées ?
- combien et comment investir ?

Avec la story map, ceci se traduisait par les questions suivantes :

- est-ce que la story map correspond à la liste des fonctionnalités qui vont être implémentées ? Qu'est-ce qui va rentrer dans le périmètre final ?
- combien ça va coûter ?

Ce qui amenait immanquablement à des incompréhensions et des discussions commerciales sur le mode forfait. Il s'agit de questions qui semblent importantes, mais qui ne correspondent en fait pas à la collaboration que nous souhaitons mettre en place avec les porteurs de projet. Pour autant, nous faisions avec et arrivions à fournir les réponses demandées.

## Petite histoire qui n'a pas marché et nous a poussé à changer

Jusqu'au jour où nous sommes tombés sur un os : un accompagnement agile d'un projet industriel de recherche et développement. Ce projet était au stade du démarrage, avec des partenaires très matures chacun dans leur domaine (industrie lourde, start-up, laboratoire de recherche publique) et bien évidemment des méthodes de travail différentes. Etant sollicités sur la planification de ce projet en mode agile, nous sommes partis de façon classique sur une story map. Mais il s'est vite révélé que celle-ci ne servirait à rien car elle était inadaptée à la taille du projet, à la maturité des participants, à leur mode d'organisation, et n'apportait pas de réponses pertinentes aux questions posées par les participants.

Imaginez passer la journée à recadrer les participants, expliquer une approche centrée sur les utilisateurs, quand certains ont des problématiques de recherche en tête, d'autres des problématiques de prototype industriel, le tout dérivant en une sorte de "comité de pilotage" qui ne dit pas son nom. Vous comprendrez vite que vous faites fausse route.

## La solution qui nous sauve la vie

Par hasard, c'est peu après ce premier échec que j'ai (re)découvert le blog de Liz Keogh et en particulier cet article nommé [Capability-based Planning and Lightweight Analysis](http://lizkeogh.com/2013/09/05/capability-based-planning-and-lightweight-analysis/). Et cet article fut un véritable révélateur, nous apportant des idées et des méthodes pour aborder ce projet et de nombreux autres. Les sessions suivantes de notre projet d'accompagnement furent nettement plus positives et productives juste en s'essayant à quelques principes.

Le but de cet article n'est pas de présenter toutes les idées de Liz, rassemblées dans sa thématique [Embracing Uncertainty](http://lizkeogh.com/embracing-uncertainty/) ainsi que celles exposées par Dan North dans sa série sur [Deliberate Discovery](http://dannorth.net/2010/08/30/introducing-deliberate-discovery/). Ces lectures sont cependant vivement recommandées pour leur richesse, leur aspect didactique et pour comprendre d'où viennent ces idées (attention, il y en a pour quelques heures si vous plongez dedans !). Nous allons plutôt présenter comment nous exploitons ces idées dans notre approche de découverte d'un projet.

## Découverte de projet : comment démarrer ?

### Vision des acteurs

Comme pour la story map, nous commençons par une vision globale. Le but est ici de faire un tour rapide de toutes les personnes impactées par le projet et de noter comment ou pourquoi elles seraient impactées.

- le(s) porteur(s) de projet (*primary stakeholder*) défend la vision du projet : l'idée qui apporte une nouvelle valeur et qu'il faut donc réaliser.
- les acteurs secondaires (*secondary or incidental stakeholders*) ont des besoins ou buts qui peuvent être impactés par le projet. Le projet peut améliorer, maintenir voire même dégrader ces besoins, mais pas au point où cela deviendrait bloquant pour la réussite du projet.

Les acteurs secondaires regroupent en fait de nombreux profils, parmi lesquels on peut trouver les utilisateurs du système, les intervenants financiers, acteurs en amont ou en aval, et aussi les concurrents. On s'intéressera en particulier aux acteurs pour lesquels négliger les besoins ou buts conduiraient à l'échec du projet.

### Découverte et cartographie des capacités

La vision nous sert à identifier les acteurs les plus importants pour la réussite du projet. Pour chacun, nous pouvons explorer comment il travaille, quels artefacts il produit ou utilise, comment il interagit avec les autres acteurs. Ce travail esquisse les contours du système et de ses utilisateurs à travers les besoins, les interactions, les problèmes de chacun.

Mais pour pouvoir représenter le système pour tout le monde et le discuter, nous exprimons en fait les capacités du système. Cette dernière indique que tel besoin ou but est bien pris en compte, sans rentrer dans le détail de la fonctionnalité ou de la solution : on parlera de la capacité à supporter tel problème, telle activité, sans être obligé de figer une fonctionnalité.

La vision du porteur de projet doit apparaître dans les capacités du système.

Il est tentant de décrire une capacité comme une fonctionnalité : l'exemple aide les participants à se mettre d'accord sur ce qu'ils veulent dire. Cependant, j'essaie si possible de remonter à un niveau d'expression plus abstrait dans l'image globale. Ainsi on ne fige pas une fonctionnalité, on laisse la porte ouverte à d'autres solutions pour cette capacité, une fois que l'expérience aura apporté d'autres aspects.

A ce stade il est fréquent de faire des allers-retours pour reformuler, scinder ou fusionner des capacités. Il est aussi facile de commencer à identifier certaines dépendances entre capacités, typiquement des dépendances de flux. EXEMPLE

Cette méthode s'adapte très bien à tout système : il suffit d'adapter le niveau d'abstraction des capacités au type et à la taille du système. Sur un petit projet, une capacité serait très proche d'une fonctionnalité utilisateur. Mais sur les gros projets (comme notre projet R&D), il est fréquent que les capacités soient à l'échelle de sous-systèmes réalisés par différents acteurs (et qui peuvent faire eux-mêmes l'objet d'une cartographie si besoin). Le fait de s'arrêter à des capacités d'un système, quel que soit sa taille, permet de ne pas tomber dans le piège du catalogue de fonctionnalités à la story map. On cherche avant tout à faire une carte complète, même si elle est peu détaillée.

Avec ces règles, il est fréquent que la carte initiale du système tienne en une dizaine de capacités. Un tableau blanc et des feutres, ou bien quelques post-it sont donc largement suffisants pour réaliser l'atelier.


### Identification de la valeur et du risque des capacités

Nous pouvons rentrer dans le vif du sujet, là où la méthode de Liz Keogh prend tout son sel. Suite à cette cartographie, nous avons un ensemble de capacités représentant notre projet : parmi celles-ci, certaines sont des *commodités*, c'est-à-dire qu'elles sont nécessaires au fonctionnement du système sans être innovantes. D'autres sont classées *spoilers* ou *différenciateurs*. Ce sont celles qui vont faire la différence pour le projet. La vision du projet est en particulier un différenciateur. Si cela ne semble pas assez différenciant, creusez encore : la différence n'est pas nécessairement exprimé par une nouvelle fonctionnalité, mais par une façon différente d'enchaîner des flux, par un business model alternatif…

DEVELOPPER UN PETIT PEU SUR COMMO vs SPOIL vs DIFF (exemples)

Vient ensuite la seconde étape, qui consiste à évaluer le risque de développer chaque capacité. La notion de risque est souvent abordée dans les projets agiles, mais par nature le risque est incertain voire inconnu - comment évaluer quelque chose que l'on ne connaît pas ? La solution de Liz Keogh est élégante, en proposant une échelle sur un critère objectif et simple, compréhensible par tout le monde : elle consiste à s'auto-évaluer sur "ce qu'on ne connaît pas". Liz propose 5 niveaux. Il n'y a pas de définition rigoureuse pour chaque niveau, mais les interprétations suivantes peuvent guider votre choix :

1. tout le monde sait faire cela ; cela fait partie des standards de l'industrie
2. plusieurs personnes ont déjà fait cela dans notre équipe ; la compétence est là même si elle n'est pas partagée par tout le monde
3. une personne a déjà fait cela dans l'entreprise (c'est donc une personne clé, ce qui a des implications sur sa disponibilité, le besoin de formation)
4. personne dans l'entreprise n'a fait cela, mais d'autres entreprises le font ; il faudra donc peut–être passer par leur expertise, la formation, l'achat de composants pour acquérir la capacité (il peut s'agir de concurrents !)
5. personne à notre connaissance n'a fait cela ; cela implique a minima une phase exploratoire, voire de la pure R&D.

C'est certainement l'aspect le plus intéressant de la méthode de Liz. En tant que professionnels, nous sommes formés à toujours donner une réponse au client. Pourtant l'informatique est bien un domaine où il est difficile de tout connaître. Cette échelle vous encourage à être honnête avec vous-même et votre porteur de projet : les points durs se cachent derrière votre ignorance, donc identifier et reconnaître ceux-ci vous permettra de progresser plus vite vers la conclusion du projet.


### Passer du plan aux étapes

Croiser la valeur différenciante et les risques des capacités nous permet de dresser un plan d'attaque. Comme noté par [Dan North](http://dannorth.net/2010/08/30/introducing-deliberate-discovery/), si vous réfléchissez à des projets passés et notez tout ce qui a pu gêner leur réalisation, le frein principal aura été tout ce que vous ignoriez au début et n'avez pu prévoir : ces technologies que vous avez apprises en cours de route, ces fausses pistes qui semblaient prometteuses, ces changements d'objectifs liés de à nouvelles opportunités, et tous les accidents de parcours qui ont affecté la vie de projets. Suivant son principe de *découverte délibérée*, plus vite on détecte et attaque les points incertains d'un projet, plus l'équipe sera capable de se projeter sur la réalisation, plus les risques de dérive diminuent.

Par nature, le point différenciant de votre projet est celui que personne n'a jamais fait : vous ne savez donc pas combien cela va coûter ni si cela va marcher. Cela tombe bien. Comme vous ne voulez probablement pas prendre tous les risques d'un seul coup, pourquoi ne pas commencer par l'aspect de votre projet qui apporte la valeur et qui peut en même temps faire échouer le projet ?

Reconsidérez votre cartographie des capacités : comment pouvez-vous la réaliser en cherchant la valeur et en éliminant les risques ? Peut-être le projet est-il assez simple pour être réalisé en une fois. Plus probablement, il y a beaucoup d'inconnus au tableau et vous avez besoin de planifier votre projet par étape.

- Il arrive que la capacité différenciante apparaisse trop compliquée pour être aboutie en une fois. Dans ce cas il peut être possible de redécouper celle-ci en capacités moins différenciantes mais plus faciles à atteindre.

- Si votre capacité différenciante n'est pas notée comme risquée, rediscutez-la. Peut-être est-elle mal exprimée pour que les gens perçoivent le risque. Peut-être la vraie différence et le risque sont-ils dissimulés dans un certain aspect de la capacité, qu'il faut alors mettre en avant, extraire comme une capacité à part entière.

- Si vous avez plusieurs capacités différenciantes et risquées, essayez de les échelonner pour ne pas avoir plusieurs problèmes sur le feu. Il peut y avoir des priorités ou des dépendances entre capacité qui ordonneront les étapes.

- Et si certaines capacités nécessaires à votre projet sont risquées sans être différentiantes, posez-vous la question de faire baisser le risque sur cet aspect : se contenter d'une version allégée de la capacité, acheter un système tout prêt, proposer des solutions alternatives pour satisfaire la capacité.

En répétant cette analyse sur les capacités, leur valeur et leur risque, les étapes de votre projet se dessinent peu à peu : chaque étape vise à éliminer un risque tout en apportant une nouvelle valeur. Vous concentrez votre effort sur l'essentiel. Les commodités et les "nice to have" sont limités au strict minimum, tant que les risques essentiels ne sont pas cernés et maîtrisés.

Une autre façon de challenger votre plan d'attaque est de se fixer des rendez-vous réguliers pour démontrer la valeur de votre projet. Quelle est la prochaine étape ? Quelle valeur pensez-vous pouvoir démontrer la prochaine fois ? Jusqu'à quand êtes-vous confiants ?


## Quelques leçons tirées de la cartographie par capacité

Pour bien comprendre les différences avec notre façon de faire précédente, il est utile de revenir sur les différences avec les story maps classiques.


Agile Cargo cult : quand on applique à la lettre les principes et les méthodes de l'agilité, sans comprendre d'où ils viennent, sans les adapter au contexte, au final en ne retirant aucun bénéfice de ces principes.



Pratiques courantes vs challenges apportées par la méthode (cf concepts.md)

story map vs capability red : when, why?


## Changer encore et toujours notre vision de l'agilité

Ouverture : changer encore et toujours nos méthodes agiles/notre vision de l'agilité

forecast vs estimation : savoir se projeter (confusion entre exactitude/justesse et précision/(in)certitude)

Mais l'aspect le plus intéressant et révélateur de cette méthode est son échelle de complexité ou ignorance. D'abord parce qu'elle met l'accent sur le non-dit des projets en mode forfait : 


Quelle proposition faisons-nous au porteur ? Comment répondre à ces questions

Sortir sa tête des méthodes et métriques "standards"

Notre approche "problem-oriented"

http://mikehadlow.blogspot.co.uk/2014/03/coconut-headphones-why-agile-has-failed.html