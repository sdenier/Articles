Git has a reputation for being a geeky tool with a steep learning curve, with a CLI including lots of options, more concepts to start with than a classic SCM (stage, remote, push/pull).
 
I have a theory that once you get a grasp of what model git uses and how it performs action on it, git becomes trivial and learning git is much easier because you start to think like git to perform some revision actions. SAY… you start to play with git commands to …. and you can always dive later in git manual to discover that somebody already had the use case and there is an option which does exactly what you want in one shot (example ?)
 
Contrary to most SCM, git does not hide its model, because it is simple and robust. So the best way to work with git is to have a good understanding of what the git model is, what git can do/compute on this model, and what each git command actually performs. You don’t need a low-level, precise understanding, just a basic one, pretty conceptual. This article is dedicated to give you quick keys in learning this model.
 
So what do we need to understand how git works? Three concepts: graph, snapshot and changeset (one could easily argue that this true also for almost all SCMs, with slight difference of interpretations – but git is really good here)
 
Integrals vs derivatives (if anyone has a copy, look into internet archive ???)
 
 
Actually, the lessons are much shorter than the intro!
 
First lesson – a commit is a snapshot  : atomic, full state ; the history is a graph
A commit represents a state of your project. You can navigate between previous states, some work, some are broken, but is as simple as that. You can always say “I want my project as it was 5 weeks ago, when we made the release with feature X”
 
About the graph, not so important in first lesson
 
Second lesson –going from one state to another means computing a changeset
 
-          A changeset tells what has changed between the old state and the new one, with some context to indicate where the change happened.
-          A changeset can be computed between any two states (and that’s where git is really good)
 
Any action to transform/navigate your graph is computing a changeset (context + change) and applying it on the target state (snapshot)
 
Transform history: commit, merge, etc
Navigating (working copy): checkout
 
true when retrieving new commits, switching to branch, rebasing…
 
Case of rebasing = actually simple?
 
Third lesson – merging and handling conflicts
That’s the last one! The most difficult perhaps
 
Merging = finding a common ancestor to find all differences since…
 
Conflicts = context has changed between source of changeset and target, -> manual resolution (including for rebase)
 
PROVIDE some tips on git range as sidenotes
 
 
In the git book, there is even a full section dedicated to git internals, where they teach you how to play with the low-level commands and the git filesystem directly
http://git-scm.com/book/en/v2/Git-Internals-Plumbing-and-Porcelain
 
--
Simon Denier - Sogilis
Prestataire Photoweb