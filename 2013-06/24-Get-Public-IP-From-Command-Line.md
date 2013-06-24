Use this code snippet to find out public ip from your command line whenever you are trying to do it in bash scripts:

```bash
curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+' 
```

