# Setting up Windows host

I'm neither an expert in Windows nor in WinRM.

So currently, I did the following on the target machine (which is probably highly insecure but should cause no harm 😅 since the PC is available in local network only):
```powershell
winrm quickconfig
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
```

Also, there is no Python on Windows by default, but it can be installed via
```powershell
winget install Python.Python.3.12
```
