<#
  Thanks to Recursieve from StackOverflow.com:
  http://stackoverflow.com/a/5733456/603003
#>
function create-7zip([String] $aDirectory, [String] $aZipfile){
    [string]$pathToZipExe = "C:\Program Files\7-zip\7z.exe";
    [Array]$arguments = "a", "-tzip", "$aZipfile", "$aDirectory", "-r";
    & $pathToZipExe $arguments;
}



cmd /c pack.bat
create-7zip "..\surface-theme.crx" "..\surface-theme.zip"
PAUSE