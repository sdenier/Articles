# Découverte et amorçage de projet : le problème avec les story maps

Tout projet commence par une phase d'élaboration et de maturation des idées, que ce soit sur la problématique et les objectifs, le financement, le commercial, et bien sûr la technique. L'équipe technique se retrouve alors confrontée à la question de la réalisation : que doit-on faire, quels sont les délais, combien ça va coûter ? Un des outils mis en avant pour planifier un projet en mode agile est la story map. Or notre expérience avec les story maps s'est révélée très hétérogène voire paradoxale. En particulier elle n'est pas forcément pertinente pour répondre aux questions essentielles en début de projet : combien investir et quelle est la prochaine étape ? Cet article fouille quelques-uns des défauts constatés avec l'approche story map, avant d'aborder la prochaine fois une autre approche basée sur les capacités et les risques.

## Petit rappel : ce qu'est une story map

Une story map est un atelier rassemblant différents acteurs d'un projet (PO, utilisateurs, développeurs) en vue de planifier les futures fonctionnalités du système. Elle se déroule suivant les étapes ci-dessous :

1. décrire la vision du projet ;
2. identifier les acteurs en lien avec le projet (parties prenantes, utilisateurs, bénéficiaires…) et leurs besoins ;
3. lister les activités de chaque acteur ;
4. pour chaque activité, identifier des cas d'utilisation ;
5. classer les cas d'utilisation par lots, suivant des critères de nécessité et de valeur.

La story map est un processus itératif : les activités et cas d'utilisation sont raffinés au fur et à mesure de l'atelier. A l'issue du processus, les cas d'utilisation seront déclinés en stories pour décrire les fonctionnalités et rentreront dans le backlog suivant la priorité décidée par les lots.


## La story map comme outil de découverte d'un projet ?

Les porteurs de projet qui viennent nous voir sont à la recherche d'expertise sur la partie technique et fonctionnelle de leur projet aussi bien que sur la planification pour mener à bien un produit minimum viable. 

Ces porteurs arrivent avec des maturités différentes vis-à-vis de leur projet. Certains vivent dans le domaine depuis des années et se lancent sur une idée mûrement réfléchie. D'autres se lancent dans l'aventure et découvrent la problématique en même temps qu'ils proposent des solutions. Nous en avons vu arriver dans nos locaux avec des cahiers de charges denses et illisibles, tandis que d'autres avaient toutes leurs idées en tête et s'adaptaient très vite à nos méthodes de travail.

Nous avions donc besoin d'une méthode pour nous aider à découvrir rapidement un projet et à encadrer les clients lors des phases de découverte. La story map semblait un outil intéressant pour cela. De plus, en utilisant cet outil, nous avons une chance d'être actif dans la recherche d'informations (a contrario d'une lecture d'un cahier des charges, plus passive et fastidieuse), donc de dénicher des points obscurs, interpeller le porteur de projets et le faire sortir de ses habitudes, et d'exposer de futurs clients à nos méthodes :

- format workshop favorisant la discussion entre participants ;
- post-it pour garder les idées concises et essentielles ;
- focus sur les utilisateurs ;
- priorisation et construction des lots dynamiques, en groupe…
- vision complète et amélioration incrémentale pour favoriser le raffinement des points clés.

Sur le papier, la story map a donc tout pour plaire. Pourtant notre expérience avec les story maps en découverte de projet s'est révélée très hétérogène voire paradoxale. Parfois cela marchait bien, révélant les différents aspects du projet. Régulièrement le résultat ne semblait pas à la hauteur des efforts fournis lors de la session. Et dans au moins deux cas, la story map s'est révélée complètement inadaptée. Or c'est une étape structurante dans la vie d'un projet, d'autant plus qu'il s'agit souvent du premier contact entre l'équipe technique et le porteur de projet. Il est donc frustrant de commencer par une session de travail qui ne marche pas à 100%.

## Même joueur essaye encore

En bon agilistes, nous avons essayé d'adapter l'outil et ses règles pour rendre les story maps plus faciles à gérer, plus pertinentes pour tout le monde : essayer d'extraire les besoins de chaque acteur, garder un haut niveau d'abstraction pour les activités, recadrer dès qu'on s'attarde trop sur le détail, faire exprimer aux participants leur flot de travail…

Malgré cette adaptation au fil de l'eau, les story maps se finissaient souvent pour nous sur les constats suivant :

- c'est usant, voire stressant, et malgré nos efforts nous n'étions pas sûr d'avoir une vision correcte du projet !
- d'une story map à l'autre, le niveau d'expression et d'abstraction était très différent et ne permettait pas la même exploitation des résultats : tel aspect évoqué par les participants n'apparaissait pas clairement dans la story map, tel autre manquait de précision et entraînait des incompréhensions et des décisions mal ajustées…

## Les problèmes des story maps en découverte de projet

Pourquoi donc cela ne marche pas toujours comme prévu ? Plusieurs problèmes récurrents peuvent apparaître.

### Les concepts : activité, cas d'utilisation, fonctionnalité ?

Il est parfois difficile d'expliquer la nuance entre activité, cas d'utilisation ou fonctionnalité, face à des clients qui découvrent la méthode. De plus ces concepts doivent être calibrés en fonction de la taille du projet. Souvent une activité est d'abord exprimée comme une fonctionnalité ; il faut ensuite la reformuler de façon plus abstraite en cours de session, quand la confusion s'installe entre activité et fonctionnalité.

### Granularité hétérogène des activités et cas d'utilisation

La granularité des activités et cas d'utilisation est très variable au sein d'une story map. A la manière de la [loi de futilité de Parkinson](http://fr.wikipedia.org/wiki/Loi_de_futilité_de_Parkinson), des aspects "simples" de la story map se retrouvent au même niveau d'expression que des aspects complexes, entretenant une certaine confusion sur les points durs du projet. En essayant de balayer toutes les activités du projet, les aspects les plus difficiles ne sont pas nécessairement les plus approfondis.

### Granularité hétérogène entre différentes story maps

La granularité entre différentes story maps est aussi très hétérogène. Cela n'est pas surprenant, mais ce qui pour un "petit" projet est décrit comme une activité, recouvrant plusieurs cas d'utilisations, peut s'exprimer comme un simple cas d'utilisation pour un projet plus important, car il est impossible de rentrer dans les détails. Il y a donc nécessairement une perte d'information entre les deux, ce qui est perturbant quand on doit juger de la complexité d'une activité.

### L'effet rush

Afin de profiter au maximum de la présence des participants, nous faisions des sessions intenses d'une demie journée à une journée complète, parfois plus, ce qui entraînait souvent des "rushs" en fin de session pour faire le tour des activités dans le temps imparti, au détriment de la qualité de la discussion.

### C'est difficile sur de gros projets

Clairement, la story map n'a jamais marché quand nous avons essayé sur de gros projets. Cela demande encore plus de maturité, de temps de découverte du domaine. Le focus sur les activités et les cas d'utilisation n'est pas au bon niveau pour découvrir ces projets.

### Le focus "utilisateur" n'est pas forcément adapté

Même si la story map est censée abordée tous les acteurs concernés par le projet, le focus sur les activités et les interactions avec le système conduit naturellement à mettre l'accent sur les seuls utilisateurs. Mais suivant le stade du projet, ce n'est pas forcément pertinent : il peut être tout aussi important de se concentrer sur d'autres parties prenantes, non utilisatrices, mais qui seraient impactées par le projet et pourraient y mettre un terme.

### La story map rend difficilement compte des aspects techniques

Le format story map permet difficilement de mettre l'accent sur des problématiques techniques, non-fonctionnelles. Or, celles-ci peuvent être structurantes pour un projet, en particulier en phase de démarrage et de démonstration technologique.

### La story map ne rend pas compte des points à explorer

Les doutes ou besoins exprimés par le porteur ou par l'équipe n'apparaissent pas nécessairement. Les zones d'ombre n'étant pas clairement identifiées, certaines décisions semblent figer dans le marbre. Entre autres, les problèmes d'ordre technique sont souvent évacués au motif que le sujet est prématuré et qu'il faut se concentrer sur le fonctionnel. C'est bien sûr souvent vrai, mais cela n'empêche pas de prendre en compte un problème technique fondamental dans la découverte d'un projet.

### La story map fige le périmètre des fonctionnalités

Malgré toutes les précautions et les règles de bonne conduite, le résultat le plus tangible d'une story map est la liste des cas d'utilisation, qui se transforment vite en liste des fonctionnalités attendues, ce qui a tendance à figer le périmètre trop tôt.


## Le vrai problème avec les story maps : les attentes contrariées

Malgré ces inconvénients, nous croyions quand même dans la valeur de la story map à ce stade car elle permet avant tout la discussion et l'échange. Mais alors, pourquoi la story map peut-elle se montrer vraiment inadaptée dans cette phase du projet ? Tout simplement parce que les résultats et les attentes liés à ce travail peuvent être radicalement différents des deux côtés.

*Equipe technique*

- Nous avons une première vue de fonctionnalités minimales, nous pouvons commencer au plus vite pour fournir un PMV.
- Quand voulez-vous commencer ?

*Porteur de projet*

- Est-ce que la story map correspond à la liste des fonctionnalités ? Qu'est-ce qui va rentrer dans le périmètre final ?
- Combien ça va coûter ?

Bizarrement, cette dernière question provoquait toujours chez nous une sensation de malaise. Une story map ne permet pas de fournir une meilleure estimation qu'une autre méthode (tout au plus favorise-t-elle la comparaison pour un chiffrage relatif *). Il nous manquait toujours des informations cruciales au moment du chiffrage pour être serein. Au final, nous nous sentions piégés dans les vieilles habitudes de chiffrage du cahier des charges.

De plus, la story map ne nous offrait pas toujours une vision claire sur la prochaine étape : peut-on commencer tout de suite ? Y a-t-il d'autres étapes non techniques à valider d'abord ?

On dit "si tu as un marteau dans la tête, alors toutes les vis ressemblent à un clou". Quand on a un bel outil en main, il est facile de regarder tous les problèmes par son prisme, même quand il est inadapté à la situation. C'est ce qui se passe avec la story map pour la découverte d'un projet. Elle ne permet bien souvent pas de répondre aux questions essentielles du porteur de projet en phase de découverte : est-ce que mon projet marche dans la réalité ? Est-ce qu'on a identifié les problèmes clés ? Combien investir et comment procéder pour tester au mieux les idées ?

Bien sûr, il ne s'agit pas de remettre en cause la story map comme outil de planification de projet, quand celui-ci devient plus mature, que le périmètre des fonctionnalités se dessine et que les priorités sont identifiées. Simplement, elle ne peut pas venir trop tôt lors de la découverte d'un projet, car elle risque de figer des décisions sur les fonctionnalités à un moment où celles-ci sont encore méconnues et de donner un mauvais retour sur la portée, la complexité et les risques d'un projet.

(*) Sur le sujet délicat des estimations, comment les faire, les exploiter intelligemment et les éviter quand ce n'est pas utile, je recommande Dan North et aussi tout ce qui touche au mouvement NoEstimates. Mais c'est un autre sujet.

http://dannorth.net/2009/07/01/the-perils-of-estimation/
http://dannorth.net/2010/08/30/introducing-deliberate-discovery/
