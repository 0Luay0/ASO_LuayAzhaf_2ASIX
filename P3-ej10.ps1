[double]$punt=Read-Host "Dime tu puntuacion"

[double]$calc=2400*$punt

if ($punt -eq 0.4) {Write-Host "Tu nivel de rendimiento es aceptable tu cantidad de dinero conseguida sera de $calc"}
elseif ($punt -ge 0.6) {Write-Host "Tu nivel de rendimiento es meritorio tu cantidad de dinero conseguida sera de $calc"}
else{Write-Host "Tu nivel de rendimiento es inaceptable tu cantidad de dinero conseguida sera de $calc"}
