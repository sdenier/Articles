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

Wait! What just happens when we talked about outdated comments? How does GitHub knows whether my comment is still relevant or not? As is often the case in a complex system, complicated issues can hide in plain sight. Let's dive into the intricacies of keeping inline comments up to date during a code review process.

The Problem
-----------

Analysis
--------

Solution
--------
