$pass="contraseña"

$preg=Read-Host "Escribeme la contraseña"

if($pass -ieq $preg){Write-Host "La contraseña coincide"}
else {Write-Host "La contraseña no coincide"}