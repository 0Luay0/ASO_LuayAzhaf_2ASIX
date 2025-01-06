[int]$edad=Read-Host "Introduce tu edad"

if($edad -lt 4) {Write-Host "Puedes entrar gratis"}
elseif($edad -ge 4 -and $edad -le 18){Write-Host "Debes pagar 5€"}
else {Write-Host "Debes pagar 10€"}