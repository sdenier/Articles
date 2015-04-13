# Git in 10 Minutes: 3 Lessons to Understand the Git Model and Do Everything with It

Git has a reputation for being a geeky tool with a steep learning curve, including a <abbr title="Command Line Interface">CLI</abbr> with lots of options, and more concepts (staging, remote, push/pull, ...) to start with than classic revision control tools.

But git has actually a simple conceptual model and does not attempt to hide it as implementation details. Learning this model and what can be done by git upon will greatly speed up your apprenticeship of the tool.

In other words, you will start to think like git, and finding or mixing the right commands becomes much easier, occasionally diving into the online help to get the right option.

To understand how the git model works, you just need to grasp the concepts of snapshots, graph, and changesets.

> If you are already used to other revision tools but think git is too hard to learn for your needs, then continue reading, you might be surprised! However, if you have never used a revision tool before, why not [try git] (https://try.github.io/levels/1/challenges/1) first? Come back when you have played with the basic commands but want a better grasp about what is going on.

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
