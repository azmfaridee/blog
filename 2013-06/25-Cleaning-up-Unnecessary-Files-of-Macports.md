Macports need cleanup of it's old downloaded and installed ports from time to time. Today morning I checked my macports folder and found out that it's taking a whooping _9.1 Gigabytes_ of space in my hard drive.

```bash
$ du -sh /opt
9.1G	/opt
```

I ran these two commands to clean up the mess.

```bash
sudo port clean --all installed
sudo port -f uninstall inactive
```

After running the commands, here is the result.

```bash
$ du -sh /opt
6.2G	/opt
```

Almost _3 Gigabytes_ saved. Not bad, huh?

