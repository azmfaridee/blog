While working in Linux, I tend to use the software `iptraf` to monitor network speed. In Mac OSX, of course that software is not available, even in _macports_ or _homebrew_. But there is an alternative, it's called `iftop`.

If you have _macports_ you can install that with:

```bash
sudo port -v install iptop
```

After installing the software, you can monitor your specific interface with it. Assume that `en1` is your Wifi card's designator. Then you should run this command:

```bash
sudo iftop -i en1
```

The software's interface is not equal to `iptraf`, but it does the job for me :)

