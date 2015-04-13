# Git in 5 Minutes: 3 Lessons to Understand the Git Model and Do Everything with It

Git has a reputation for being a geeky tool with a steep learning curve, a <abbr title="Command Line Interface">CLI</abbr> including lots of options, and more concepts (staging, remote, push/pull, ...) to start with than classic revision control tools.

I have a theory that once you get a grasp of what model git uses and how it performs action on it, git becomes trivial and learning git is much easier because you start to think like git to perform some revision actions. SAY… you start to play with git commands to …. and you can always dive later in git manual to discover that somebody already had the use case and there is an option which does exactly what you want in one shot (example ?)

Contrary to most SCM, git does not hide its model, because it is simple and robust. So the best way to work with git is to have a good understanding of what the git model is, what git can do/compute on this model, and what each git command actually performs. You don’t need a low-level, precise understanding, just a basic one, pretty conceptual. This article is dedicated to give you quick keys in learning this model.

> You know what a SCM, a commit, a branch are (say you use SVN), but you never made the jump to git because you think it is too hard to learn for your needs? Then this article is for you.
> 
> On the contrary, if you have no previous knowledge of SCM and are looking for a place to learn git, maybe you should just [try git] (https://try.github.io/levels/1/challenges/1) and come back later.

## Git Stores Snapshots (aka Commits) of your Project

is a Snapshot of the Full Project

This one is super easy, you probably already know it.

commit action = new snapshot

## Git Stores Relationships between Commits (aka History) as a Graph

## Git Can Compute Changes between any Two Commits of your Project

What is a changeset (then a patch)

What does it mean to compute a changes using the graph

## Git Commands in Action

### Updating the Working Copy (Switching between Branches, Pulling)

### Cherry-picking

### Rebasing

### Merging

## Advanced: what about Conflicts?

http://codicesoftware.blogspot.com/2011/09/merge-recursive-strategy.html

## Conclusion

A bit more to learn (like how git manages branches and tags as labels on the graph, how commits are actually immutable, and what happens with new/discarded commits, git fetch/push/pull)
