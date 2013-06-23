## Recent Posts

### Tips For Easy JS Debug in Netbeans (2013-06-23)

If you love (or have to) code in Netbeans and in JavaScript, here is a nice tip for instantly dumping (and pretty print) a variable in browser console (and save some keystrokes).

Create a macro in Netbeans and assign a keyboard shortcut like __Ctrl+Alt+D__ to that macro.

```
select-identifier copy-to-clipboard caret-end-line insert-break 
"console.log(\"" paste-from-clipboard " = \" 
+ JSON.stringify(" paste-from-clipboard ", null, 2));"
```

Next time you cursor is on top a JS variable, just press the shortcut key, a line like following will be automatically inserted after the line you are working on:

```javascript
console.log(JSON.stringify(myVariable, null, 2));
```


### Github Powered Blogging Experiment with Automaic TOC Generation (2013-06-23)

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


## Table of Contents

* [Tips For Easy JS Debug in Netbeans](2013-06/23-Tips-For-Easy-JS-Debug-in-Netbeans.md)
* [Github Powered Blogging Experiment with Automaic TOC Generation](2013-06/23-Github-Powered-Blogging-Experiment-with-Automaic-TOC-Generation.md)
