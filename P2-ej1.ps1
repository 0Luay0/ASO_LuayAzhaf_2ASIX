Write-Host Hola $env:USERNAME
$dir_act=Get-Location
Write-Host "Tu directorio de trabajo es" $dir_act
Write-Host "Perteneces al dominio" $env:USERDOMAIN
Write-Host "Tu equipo se llama" $env:COMPUTERNAME