## For SSO

1. Log into Oreilly
2. Open JS console and run:

```javascript
javascript:(function(){var output={};document.cookie.split(/\s*;\s*/).forEach(function(pair){pair=pair.split(/\s*=\s*/);output[pair[0]]=pair.splice(1).join('=')});var a=window.document.createElement('a');a.href=window.URL.createObjectURL(new Blob([JSON.stringify(output)],{type:'text/json'}));a.download='cookies.json';document.body.appendChild(a);a.click();document.body.removeChild(a)})()
```

3. Add items to `book_list` file:

```
XXXXXXXXXXXXX|NAME
```
  * X -> ID
  * NAME -> An identifier (it's ignored, only for personal use)

4. `make run`
5. Check `./Epubs`
