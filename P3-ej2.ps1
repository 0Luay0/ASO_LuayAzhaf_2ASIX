[int]$edad=Read-Host "Dime cuantos años tienes"
if ($edad -gt 18) {Write-Host "Eres mayor de edad"}
else {Write-Host "No eres mayor de edad"}