Hey Guys,

I've been experimenting with the idea of writhing down my code snippets and other ideas as a microblog for a while. I used to write a blog in blogspot but these days I don't find writing there very entertaining, since they redesigned the whole system.

Like everyone else I've been a fan of Github Wikis and Markdown, so I thought why not give this a try. Github's code highlight and markdown syntax is all I need for a programming centric blog, I don't need any fancy CSS and whatever.

But creating an index all by yourself would be really painful, so I did two things for that.

* Maintained a very easy folder structure so that the folders can be sorted lexicographically without much regex parsing
* Created as simple shell script as pre commit git hook that automatically updates the homepage (README.md file) with two most recent posts and a table of contents.

To install the pre-commit hook, just copy it to the hooks folder.

```bash
$ cp pre-commit-hook.sh .git/hooks/pre-commit 
```

So far it's looking good. I'd going to update the scripts incrementally with more and more features if I get time.
