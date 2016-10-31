Inline Comments: the Stuff that Pull Requests Are Made of
=========================================================

Once in a while, it is fun to stumble upon a nice, neatly delimited problem and you ask yourself - "I haven't seen this problem before - how should I handle it?"

Remember when we talk about how important it is for a VCS (namely Git) to compute changesets (aka diffs) between any two commits? We will see it first hand in action with this post.


The Context
-----------

Thanks to platforms such as GitHub and the like, the practice of code review have become widespread. Even for small projects with teams of two (like we sometimes have), we do some review because we can already feel the benefits: catching errors, loopholes, or artificial complexity, sharing the knowledge of how code fulfills its feature, enforcing or teaching common guidelines and patterns, especially with new technologies...

In the general picture, the whole process goes something like this:

- developer Jim pushes a branch with some changes and sends a request for code review
- developer Kate reads the changes, and notifies acceptance or rejection of the request with proposals for updates
- developer Jim updates its code following the remarks
- developer Kate can see which comments have been fulfilled, whether there is remaining work to do, or if some new things call the attention
- ... and so on until every body is satisfied with the changes

In the past, code review was mainly patch-based. But now many code review systems are web-based. The cornerstone of such online systems is the inline comments mechanism. Anybody knows the thrill of picking your first line to comment. It goes something like this:

- "this line does not take into account case XXX - better add a proper error check"
- "I find this part is complicated and not sure I understand all the details - can we rewrite it?"
- "Cool! That's a neat way to solve this issue. I will be sure to apply it next time I have the same problem."

And then you proceed to the next chunk of code which you feel is either unsatisfactory/confusing/cool... Later you get a full review of your comments and associated diffs, provide a global comment and request changes before approval. Then the changeset gets updated by the original developer, and you can see at first sight which of your comments are still relevant and which ones are outdated, showing progress in the review process. Sometimes it just feels good...

Wait! What just happens when we talked about outdated comments? How does GitHub knows whether my comment is still relevant or not? As is often the case in a complex system, complicated issues can hide in plain sight (*). Let's dive into the intricacies of keeping inline comments up to date during a code review process.

> The real complexity lies in the diff algorithm, but we won't dive into it in this article.


The Problem (and its Specification): First Take
-----------------------------------------------

Let's define our problem in more specific ways.

More often than not, inline comments are linked to changes. So they are attached to a representation of changes. In this post we will focus on a Unidiff representation (because it will be simpler to visualize and reason about than the side-by-side diff). Here comes our first specification

> An inline comment is a block of data (text) attached to a line in a unidiff.

First example with file foo

```
  A1
  A2
+ A3
  A4
  A5
```

Let's say A3 has been added and you put an inline comment on it. Now some changes are made and the pull request is updated. What can happen? For example, you requested that A3 is no good and should be deleted:

```
  A1
  A2
  A4
  A5
```

Line A3 has disappeared. What can we do with the inline comment? It can not be displayed in a meaningful way, next to the line it was attached too, so it appears to be irrelevant, in other words outdated. Fair enough, we seem to have a simple rule to update an inline comment:

> If the inline comment is attached to a line which has disappeared with the last update, mark it as outdated.

Obviously, if line A3 still existed in the new update, we should have seen the inline comment as still relevant and would have keep it. What about this case?

```
  A1
+ A1 bis
+ A1 ter
  A2
+ A3
  A4
  A5
```

Rather than changing the A3 line, the update provides two new lines A1 bis and A1 ter (which become parts of the global pull request, including A3). The system can not decide whether the change resolves or even affects the inline comment. Thus, it should still display the comment to let the reviewer decided whether it is relevant or not. Of course, it should still appear next to the A3 line, which means in this case the comment has "moved down" from the third line in the original unidiff to the fifth line in the new unidiff.

> If the inline comment is still relevant wrt to the last update, it should move to follow the diff line to which it is attached.

As a side note, we can wonder what happen for an inline comment on line A4, which is kept from the original source. If we apply the same reasoning as above, we can infer straight away that the same rules apply. Also, nothing prevent us to add many inline comments to the same line. Let's rephrase the rules to clarify that:

> R1. If an added or kept line of the original unidiff is removed by the update, then any inline comments on the line become outdated.
> 
> R2. If an added or kept line of the original unidiff is moved (up or down) by the update, then any inline comments on the line should follow the move.

So our inline comments system should be able to track lines between changesets and identify which one has been removed and which one have moved. Notice we said nothing of lines which were already deleted in the original diff. We will save that for later!


Solution
--------

The Problem (and its Specification): Second Take
------------------------------------------------


Conclusion
----------

Here is the gist: to create a working inline comments system, you need a space with some coordinates describing each changeset and rules to translate inline comments from one space to another.
