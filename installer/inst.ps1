$DesktopPath = [Environment]::GetFolderPath("Desktop")

Set-Location $env:ProgramFiles
mkdir ds4windows-fix
$PathToProgram = "$env:ProgramFiles\ds4windows-fix"

$DevUrl = "https://www.nirsoft.net/utils/devmanview-x64.zip"
$DevOutput = "$PathToProgram\devmanview-x64.zip"

(New-Object System.Net.WebClient).DownloadFile($DevUrl, $DevOutput)

Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip "$env:ProgramFiles\ds4windows-fix\devmanview-x64.zip" "$env:ProgramFiles\ds4windows-fix\"

Remove-Item $PathToProgram\devmanview-x64.zip
Remove-Item $PathToProgram\readme.txt

New-Item $PathToProgram\fix.bat

Set-Content $PathToProgram\fix.bat 'devmanview.exe /disable "HID-compliant game controller"
devmanview.exe /enable "HID-compliant game controller"'
	
$Shell = New-Object -ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut("$DesktopPath\fix.lnk")
$ShortCut.TargetPath="$PathToProgram\fix.bat"
$ShortCut.WorkingDirectory = "$PathToProgram";
$ShortCut.Description = "Shortcut to the fix";
$ShortCut.Save()