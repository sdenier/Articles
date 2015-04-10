# Git in 5 Minutes: 3 Lessons to Understand the Git Model and Do Everything with It

Git has a reputation for being a geeky tool with a steep learning curve, with a CLI including lots of options, and more concepts to start with than a classic SCM (such as stage, remote, push/pull).

I have a theory that once you get a grasp of what model git uses and how it performs action on it, git becomes trivial and learning git is much easier because you start to think like git to perform some revision actions. SAY… you start to play with git commands to …. and you can always dive later in git manual to discover that somebody already had the use case and there is an option which does exactly what you want in one shot (example ?)

Contrary to most SCM, git does not hide its model, because it is simple and robust. So the best way to work with git is to have a good understanding of what the git model is, what git can do/compute on this model, and what each git command actually performs. You don’t need a low-level, precise understanding, just a basic one, pretty conceptual. This article is dedicated to give you quick keys in learning this model.

> You know what a SCM, a commit, a branch are (say you use SVN), but you never made the jump to git because you think it is too hard to learn for your needs? Then this article is for you.
> 
> On the contrary, if you have no previous knowledge of SCM and are looking for a place to learn git, maybe you should just [try git] (https://try.github.io/levels/1/challenges/1) and come back later.

## Two SCM Paradigms

There are two fundamental ways in which SCMs record revisions and show you the history of your work: snapshots and changesets.

- snapshots, aka states, copies
- changesets aka deltas, patches, diffs

That is broadly speaking. In practice, SCMs deal with both aspects during their course of actions. The difference is in how well they deal with one representation or the other, and how it affects their features and ease of use.

So both concepts are useful to understand how a smart SCM works, and that is exactly what we will use to explain git (despite what its name implies).

## A Commit Stores a State of your Project

is a Snapshot of the Full Project

This one is super easy, you probably already know it.

commit action = new snapshot

### Commit History is a Graph

## To Change State, git computes a Changeset between Two Commits


That's more than enough

## So What Command X Does on my project?

## What about merging and conflicts?

http://codicesoftware.blogspot.com/2011/09/merge-recursive-strategy.html