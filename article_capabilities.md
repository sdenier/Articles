# Découverte et amorçage de projet : planifier des capacités et des risques

Face à un porteur de projet en phase de démarrage, nous avons besoin d'outils pour 1) comprendre son idée et sa valeur, 2) structurer son approche pour développer et tester au mieux son idée. Dans notre expérience, l'approche story map demande en fait une certaine maturité des process agiles et du domaine pour être pleinement efficace. Nous explorons dans cet article une approche plus terre-à-terre et pragmatique, identifiant avant tout la valeur et le risque d'un projet pour obtenir un démarrage efficace.

## Qu'attend-on de nous ?

Dans l'article précédent, nous avons expliqué pourquoi la story map n'était pas l'outil le plus adapté pour découvrir et planifier un nouveau projet. Bien que favorisant la discussion, le focus sur les activités des utilisateurs et les lots de fonctionnalité ne permet pas d'aborder les questions fondamentales du porteur de projet à ce stade :

- la valeur proposée par le projet est-elle bien identifiée ?
- est-ce qu'on a repéré les problèmes clés ?
- comment procéder pour développer et tester au mieux les idées ?
- combien et comment investir ?

A l'issue d'une story map, ceci se traduit malheureusement souvent par les questions suivantes :

- est-ce que la story map correspond à la liste des fonctionnalités ? Qu'est-ce qui va rentrer dans le périmètre final ?
- combien ça va coûter ?

Ce qui amène immanquablement à des incompréhensions et des discussions commerciales sur le forfait de développement. Ces questions qui semblent importantes ne rendent pas service à un projet en phase de démarrage, car elles figent trop les attentes. Ce n'est pas le genre de collaboration que nous souhaitons mettre en place avec les porteurs de projet. Pour autant, nous faisions avec et arrivions à fournir les réponses demandées.

## Petite histoire qui n'a pas marché et nous a poussé à changer

Jusqu'au jour où nous avons accompagné un projet industriel de recherche et développement. Ce projet était au stade du démarrage, avec des partenaires expérimentés chacun dans leur domaine (industrie lourde, start-up, laboratoire de recherche publique) et bien évidemment des méthodes de travail différentes. Etant sollicités sur la planification de ce projet en mode agile, nous sommes partis de façon classique sur une story map. Mais il s'est vite révélé que celle-ci ne servirait à rien car elle était inadaptée à la taille du projet, à la maturité des partenaires, à leur mode d'organisation, et n'apportait pas de réponses pertinentes aux questions posées par les participants.

Imaginez passer la journée à recadrer les participants, expliquer une approche centrée sur les utilisateurs, quand certains ont des problématiques de recherche en tête, d'autres des problèmes de développement industriel, le tout dérivant en une sorte de « comité de pilotage » qui ne dit pas son nom. Vous comprendrez vite que vous faites fausse route.

## La solution qui sauve la vie

Par hasard, c'est peu après cet échec que j'ai (re)découvert le blog de Liz Keogh et en particulier son article intitulé [Capability-based Planning and Lightweight Analysis](http://lizkeogh.com/2013/09/05/capability-based-planning-and-lightweight-analysis/). Et cet article fut une bouée de secours, nous apportant des idées et des méthodes pour aborder ce projet et de nombreux autres. Les sessions suivantes de notre projet d'accompagnement furent nettement plus positives et productives juste en s'essayant à quelques principes.

Le but de cet article n'est pas de présenter toutes les idées de Liz, rassemblées dans sa thématique [Embracing Uncertainty](http://lizkeogh.com/embracing-uncertainty/) ainsi que celles exposées par Dan North dans sa série sur [Deliberate Discovery](http://dannorth.net/2010/08/30/introducing-deliberate-discovery/). Ces lectures sont cependant vivement recommandées pour leur richesse, leur aspect didactique et pour comprendre d'où viennent ces idées (attention, il y en a pour quelques heures si vous plongez dedans !). Nous allons plutôt présenter comment nous exploitons ces idées dans notre approche de découverte d'un projet.

## Découverte de projet : comment démarrer ?

### Vision des acteurs

Comme pour la story map, nous commençons par une vision globale. Le but est ici de faire un tour rapide de toutes les personnes impactées par le projet et de noter comment ou pourquoi elles seraient impactées.

- Le porteur de projet (*primary stakeholder*) a la vision du projet : l'idée qui apporte une nouvelle valeur et qu'il faut donc réaliser. C'est lui qui va défendre le projet, prendre les décisions, car il espère en tirer un bénéfice.
- Les acteurs secondaires (*secondary or incidental stakeholders*) ont des besoins ou buts que le projet va impacter. Ils peuvent se sentir concernés (ou non) par la vision du projet. Mais si jamais le projet devenait gênant pour leurs propres besoins, cela deviendrait un point de blocage. Bien qu'ils ne soient pas moteurs du projet, il faut donc prendre en compte leurs besoins.

Les acteurs secondaires regroupent de nombreux profils. La majorité des futurs utilisateurs du système sont en fait des acteurs secondaires. On peut trouver aussi les intervenants financiers, des acteurs en amont ou en aval, ou encore les concurrents. On s'intéressera en particulier aux acteurs pour lesquels négliger les besoins ou buts conduiraient à l'échec du projet.

### Découverte et cartographie des capacités

La vision nous sert à identifier les acteurs les plus importants pour la réussite du projet. Pour chacun, nous pouvons explorer comment il travaille, quels artefacts il produit ou utilise, comment il interagit avec les autres acteurs. Ce travail esquisse les contours du système et de ses utilisateurs à travers les besoins, les interactions, les problèmes de chacun.

Mais pour pouvoir représenter le système pour tout le monde et le discuter, nous exprimons en fait ses capacités. Cette dernière indique que tel besoin ou but est bien pris en compte, sans rentrer dans le détail de la fonctionnalité ou de la solution : on parlera de la capacité à supporter tel problème, telle activité, sans être obligé de figer une fonctionnalité. Par exemple, on peut parler de capacité pour :

- visualiser des métriques
- gérer un planning
- comparer des produits entre eux
- commander des billets en ligne

Plus la capacité est importante et différenciante pour l'acteur, plus il est intéressant d'en discuter et d'être spécifique dans son intitulé. Plus la capacité est standard (une « commodité »), moins il est nécessaire de passer du temps dessus. Par exemple, la capacité à commenter sur des sites Internet est généralement survolé, car il existe des solutions toutes prêtes - à moins, bien sûr, que le projet porte justement sur une nouvelle approche des commentaires.

Il est tentant de décrire une capacité comme une fonctionnalité : l'exemple aide les participants à se mettre d'accord sur ce qu'ils veulent dire. Cependant, une fois les idées clarifiées, j'essaie si possible de remonter à un niveau d'expression plus abstrait. Ainsi on ne fige pas une fonctionnalité, on laisse la porte ouverte à d'autres solutions pour cette capacité, une fois que d'autres aspects auront enrichi notre connaissance du projet.

A ce stage, il est fréquent de faire des allers-retours pour reformuler, scinder ou fusionner des capacités. Il est aussi facile de commencer à identifier certaines dépendances entre capacités.

> \- Pour la capacité à « visualiser des métriques », nous allons avoir besoin de données ? D'où viennent-elles ?  
> \- Notre analyste tient à jour un fichier Excel des produits avec les mesures.  
> \- Nous allons donc avoir besoin d'une capacité à importer des données, ou bien avons-nous une autre solution ?

En fonction de la taille et du type du projet, il est facile d'adapter l'approche en faisant varier le niveau d'abstraction des capacités. Sur un petit projet, une capacité sera très proche d'une fonctionnalité utilisateur. Mais sur les gros projets (comme notre cas de R&D), il est fréquent que les capacités soient à l'échelle de sous-systèmes réalisés par différents acteurs (et qui peuvent faire eux-mêmes l'objet d'une cartographie si besoin). J'ai ainsi noté une fois la capacité de démontrer un prototype d'architecture (re-découpé en plusieurs capacités) car c'était une étape importante dans la vie du projet. Le fait de s'arrêter à des capacités d'un système, quel que soit sa taille, permet de ne pas tomber dans le piège du catalogue de fonctionnalités à la story map. On cherche avant tout à faire une carte complète, même si elle est peu détaillée.

Avec ces règles, il est fréquent que la carte initiale du système tienne en une dizaine de capacités. Un tableau blanc et des feutres, ou bien quelques post-it sont donc largement suffisants pour réaliser l'analyse.

### Identification de la valeur et du risque des capacités

Nous pouvons rentrer dans le vif du sujet, là où la méthode de Liz Keogh prend tout son sens. Suite à cette cartographie, nous avons un ensemble de capacités représentant notre projet : parmi celles-ci, certaines sont des *commodités*, c'est-à-dire qu'elles sont nécessaires au fonctionnement du système sans être innovantes. D'autres sont classées *différenciateurs*. Ce sont celles qui vont faire la différence du projet par rapport à d'autres solutions. Vous pouvez aussi identifier des *spoilers* : cette fonctionnalité innovante du concurrent qui marche tellement bien qu'elle devient obligatoire pour intéresser le marché (autrement dit, un spoiler est un différenciateur en train de devenir une commodité).

Prenons un système de suivi de compétition :

- différentiateur : le suivi des concurrents avec mixage GPS et caméra embarquée
- commodité : la sortie des résultats officiels
- spoiler : une fonction de replay après la course

La vision du projet est bien sûr un différenciateur. Si cela ne semble pas assez différenciant, creusez encore : la différence n'est pas nécessairement exprimée par une nouvelle fonctionnalité, mais par une façon différente d'enchaîner des activités, par un modèle de business alternatif…

Vient ensuite la seconde étape, qui consiste à évaluer le risque de développer chaque capacité. Cette notion est souvent abordée dans les projets agiles, mais par nature le risque est incertain voire inconnu - et comment évaluer quelque chose que l'on ne connaît pas ? La solution de Liz Keogh est élégante, en proposant une échelle sur un critère simple, accessible à tout le monde : elle consiste à s'auto-évaluer sur son ignorance, « ce qu'on ne connaît pas ». Liz propose 5 niveaux, où 1 est le niveau minimal (« on maîtrise complètement le sujet ») et 5 le maximal (« on ne sait rien sur le sujet »). Il n'y a pas de définition rigoureuse pour chaque niveau, mais les interprétations suivantes peuvent guider votre choix.

1. Tout le monde sait faire cela ; cela fait partie des bases du métier.
2. C'est un sujet connu dans le métier, au moins une personne dans l'équipe le connaît.
3. Qu moins une personne dans l'entreprise a déjà fait cela, ou bien a accès à une expertise sur le sujet (la connaissance n'est pas acquise mais reste accessible).
4. Personne dans l'entreprise n'a fait cela, mais d'autres entreprises le font ; il faudra donc peut–être passer par leur expertise, la formation, l'achat de composants pour acquérir la capacité (il peut s'agir de concurrents).
5. Personne à notre connaissance n'a fait cela ; cela implique a minima une phase exploratoire, voire de la pure R&D.

C'est certainement l'aspect le plus intéressant de la méthode de Liz. En tant que professionnels, nous sommes formés à toujours donner une réponse au client. Pourtant l'informatique est bien un domaine où il est difficile de tout connaître. Cette échelle vous encourage à être honnête avec vous-même et votre porteur de projet : les points durs se cachent derrière votre ignorance, donc identifier et reconnaître ceux-ci vous permettra de progresser plus vite vers la conclusion du projet.

### Passer du plan aux étapes

Croiser la valeur différenciante et les risques des capacités nous permet de dresser un plan d'attaque. Comme noté par [Dan North](http://dannorth.net/2010/08/30/introducing-deliberate-discovery/), si vous réfléchissez à des projets passés et notez tout ce qui a pu gêner leur réalisation, le frein principal aura été tout ce que vous ignoriez au début et n'avez pu prévoir : ces technologies que vous avez apprises en cours de route, ces fausses pistes qui semblaient prometteuses, ces changements d'objectifs liés de à nouvelles opportunités, et tous les accidents de parcours qui ont affecté la vie du projet. Suivant son principe de *découverte délibérée*, plus vite on détecte et attaque les points incertains d'un projet, plus l'équipe sera capable de se projeter sur la réalisation, plus les risques de dérive diminuent.

Par nature, le point différenciant de votre projet est celui que personne n'a jamais fait : vous ne savez donc pas combien cela va coûter ni si cela va marcher. Cela tombe bien. Comme vous ne voulez probablement pas prendre tous les risques d'un seul coup, pourquoi ne pas commencer par l'aspect de votre projet qui apporte la valeur et qui peut en même temps le faire échouer ?

Reconsidérez votre cartographie des capacités : comment pouvez-vous la réaliser en cherchant la valeur et en éliminant les risques ? Peut-être le projet est-il assez simple pour être réalisé en une fois. Plus probablement, il y a beaucoup d'inconnus au tableau et vous avez besoin de planifier votre projet par étape.

- Il arrive que la capacité différenciante apparaisse trop compliquée pour être aboutie en une fois. Dans ce cas il peut être possible de redécouper celle-ci en capacités moins différenciantes mais plus faciles à atteindre.

- Si votre capacité différenciante n'est pas notée comme risquée, rediscutez-la. Peut-être est-elle mal exprimée pour que les gens perçoivent le risque. Peut-être la vraie différence et le risque sont-ils dissimulés dans un certain aspect de la capacité, qu'il faut alors mettre en avant, extraire comme une capacité à part entière.

- Si vous avez plusieurs capacités différenciantes et risquées, essayez de les échelonner pour ne pas avoir plusieurs problèmes sur le feu. Il peut y avoir des priorités ou des dépendances entre capacités qui ordonneront les étapes.

- Et si certaines capacités nécessaires à votre projet sont risquées sans être différenciantes, posez-vous la question de faire baisser le risque sur cet aspect : se contenter d'une version allégée de la capacité, acheter un système tout prêt, proposer des solutions alternatives pour satisfaire la capacité.

En répétant cette analyse sur les capacités, leur valeur et leur risque, les étapes de votre projet se dessinent peu à peu : chaque étape vise à éliminer un risque tout en apportant une nouvelle valeur. Vous concentrez votre effort sur l'essentiel. Les commodités et les fonctionnalités accessoires sont limités au strict minimum, tant que les risques essentiels ne sont pas cernés et maîtrisés.

## Après la cartographie, place à l'action…

Un autre principe pour préparer votre plan d'attaque est de fixer des rendez-vous réguliers pour démontrer la valeur de votre projet. Quelle est la prochaine étape ? Quelle valeur pensez-vous pouvoir démontrer la prochaine fois ? Quand vous pouvez décrire de quoi sera capable la prochaine version du système et que vous êtes confiants dans votre capacité de le réaliser, alors vous êtes prêts pour démarrer le projet !

Après cette présentation générale de la méthode, nous verrons dans le prochain article quelques leçons issues de notre expérience. Nous pourrons les comparer avec <a href="http://blog.sogilis.com/post/109977013776/decouverte-et-amorcage-de-projet-le-probleme">l'approche story map</a> et voir comment cela affecte notre vision de l'accompagnement agile.

<div itemprop="author" itemscope="" itemtype="http://schema.org/Person">
  <img itemprop="image" src="http://www.gravatar.com/avatar/58778f8cc14e8a484568a663266c3029.png" alt="Simon Denier">
  <a href="mailto:simon+blog@sogilis.com"><span itemprop="name" rel="author"><i class="fa fa-user" /> Simon Denier</span></a>
  <a href="http://twitter.com/simondenier"><span class="share-link-twitter" rel="twitter"><i class="fa fa-twitter" /> simondenier</span></a>
  <a href="https://github.com/sdenier"><span rel="github"><i class="fa fa-github" /> sdenier</span></a>
  <a href="https://plus.google.com/100056946931947086533?rel=author"><span class="share-link-google-plus" rel="gplus"><i class="fa fa-google-plus" /> +SimonDenier</span></a>
</div>
