# questloco

A real-life mini-map

## TODO

- [X] [Authenticating Your Client](https://developers.google.com/android/guides/client-auth)

## Knowledge Base

### Generate fingerprint

generate the fingerprint
```bash
keytool -exportcert -v -alias androiddebugkey -keystore %USERPROFILE%\.android\debug.keystore
```
finally, get the fingerprint from the output

```bash
keytool -list -v -alias androiddebugkey -keystore %USERPROFILE%\.android\debug.keystore | Out-File -Encoding utf8 mykey.txt
```


## References
### Generate fingerprint

```powershell
keytool -exportcert -v -alias androiddebugkey -keystore C:\Users\musta\.android\debug.keystore
```
then
```powershell
keytool -list -v -alias androiddebugkey -keystore C:\Users\musta\.android\debug.keystore
```
