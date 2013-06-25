This tip will use _Vim_ as a pager instead of `more` or `less` command that we use normally. The benefit is that, you can have syntax highlighting that comes with _Vim_ when you are using `more` or `less` commands from the shell.

If you are using macports, run the command:
```bash
sudo port -v install vimpager
```

Then add these lines into your .bashrc file

```bash
export PAGER=vimpager
alias less=$PAGER
alias zless=$PAGER
```

A side effect of this, you'll notice that your man pages are also appearing colorful as man pages are also rendered with _vim_ by default after this.

