## Recent Posts

### Netbeans Tips For Easy JS Debug

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


## Table of Contents

* [Netbeans Tips For Easy JS Debug](2013-06/23-Netbeans-Tips-For-Easy-JS-Debug.md)
