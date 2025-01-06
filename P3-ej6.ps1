$dir=Read-Host "Escribeme la ruta del directorio y te confirmo si es un directorio"
if(Test-Path $dir -PathType Container){
Write-Host "Si es un directorio"
Get-ChildItem -Path $dir -Recurse}
else {Write-Host "No es un directorio"}