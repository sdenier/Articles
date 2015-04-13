# Git in 10 Minutes: 3 Concepts to Understand the Git Model and Do Everything with It

Git has a reputation for being a geeky tool with a steep learning curve, including a <abbr title="Command Line Interface">CLI</abbr> with lots of options, and more concepts (staging, remote, push/pull, ...) to start with than classic revision control tools.

But git has actually a simple conceptual model and does not attempt to hide it as implementation details. Learning this model and what can be done by git upon will greatly speed up your apprenticeship of the tool.

In other words, you will start to think like git, and finding or mixing the right commands becomes much easier, occasionally diving into the online help to get the right option.

To understand how the git model works, you just need to grasp the concepts of snapshots, graph, and changesets.

> If you are already used to other revision tools but think git is too hard to learn for your needs, then continue reading, you might be surprised! However, if you have never used a revision tool before, why not [try git] (https://try.github.io/levels/1/challenges/1) first? Come back when you have played with the basic commands but want a better grasp about what is going on.

## Git Stores Snapshots (aka Commits) of your Project

We start with an easy one. A commit is snapshot of all files in your project, starting from the root. In other words, it is a copy of all tracked files at the time of creating the commit.

The reason it starts from the project root folder is that you should always save a consistent version of your project, including related changes across all subfolders (and not forgetting one in the process).

With this guarantee, we can be sure that checking out a commit will give us that exact state we saved, be it a release version, a buggy one which needs a fix, or a work in progress.

## Git Represents Relationships between Commits (aka History) as a Graph

In any revision control system, commits do not exist in isolation but are linked through a parent-child relationship, which remembers where a commit comes from (what was the previous state before the commit).

So you can start to view the history of your project as a line of successive states. The above figure presents a common representation of history in a git repository, where the arrow indicates that node X knows that its parent is node Y (in git, parent commits do not know about their children).

When two commits share the same parent, you start to have divergent branches. Each line can continue to grow in concurrent ways.

When time has come to merge two branches together, git creates a commit with two parents. The result is that the history is now a directed graph of commits.

The concept of graph to represent the history of a project seems like pretty intuitive, even an obvious choice. You might be surprised by the fact that not all revision control tools use a graph as a first class representation. For example, Subversion works with independent directory-trees to represent branches and only stores branch/merge as meta-data: the lack of a full graph representation leads to some problematic merge cases.

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
