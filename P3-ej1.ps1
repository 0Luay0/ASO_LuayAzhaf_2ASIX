[int]$num=Read-Host "Dime un numero"

if ($num%2 -eq 0){ Write-Host "El numero es par"}
elseif ($num -eq 1) {Write-Host "El numero es impar"}
elseif ($num -eq 0) {Write-Host "El numero es par"}
else {Write-Host "El numero es impar"}