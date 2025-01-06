$fich=Read-Host "Hola, ponme un fichero o una carpeta"
if (Test-Path $fich) {Write-Host "El fichero/carpeta $fich si existe"}
else {Write-Host "El fichero/carpeta $fich no existe"}