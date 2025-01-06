$sex=Read-Host "Dime tu sexo si es masculino o femenino (M/F)"
$nomb=Read-Host "Dime tu nombre"

if ($sex -ieq "masculino" -or $sex -eq "M" -and $nomb -gt "N"){Write-Host "Perteneces al grupo A"}
elseif ($sex -ieq "femenino" -or $sex -eq "F" -and $nomb -lt "M") {Write-Host "Perteneces al grupo A"}
else {Write-Host "Perteneces al grupo B"}