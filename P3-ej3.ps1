[int]$num1=Read-Host "Ponme un numero"
[int]$num2=Read-Host "Ponme otro numero"

if ($num1 -lt $num2) {Write-Host "El $num1 es menor que $num2"}
elseif ($num1 -gt $num2) {Write-Host "El $num1 es mayor que $num2"}
else {Write-Host "Los numeros son iguales"}