[int]$rent=Read-Host "Dime cual es tu renta anual"

if ($rent -lt 10000) {Write-Host "Te corresponde un 5% de tipo impositivo"}
elseif ($rent -ge 10000 -and $rent -le 20000) {Write-Host "Te corresponde un 15% de tipo impositivo"}
elseif ($rent -gt 20000 -and $rent -le 35000) {Write-Host "Te corresponde un 20% de tipo impositivo"}
elseif ($rent -gt 35000 -and $rent -le 60000) {Write-Host "Te corresponde un 30% de tipo impositivo"}
else{Write-Host "Te corresponde un 45% de tipo impositivo"}


