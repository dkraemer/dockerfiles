REM Make bash scripts executable

ftype BashScript="C:\Program Files\Git\bin\bash.exe" "%%1" %%*
assoc .sh=BashScript
@echo Now add '.sh' to PATHEXT environment variable!
