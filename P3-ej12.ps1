$pizza=Read-Host "Deseas una pizza vegetariana (si/no)"
$pizzav="Ingredientes: Pimiento y Tofu"
$pizzanov="Ingredientes: Peperoni, Jamon y Salmon"
if ($pizza -ieq "si") {Write-Host "Has elegido una pizza vegetariana"
Write-Host "$pizzav"
$ingv=Read-Host "Que ingrediente quieres para tu pizza"
Write-Host "Tu pizza quedaria asi: Pizza vegetariana, con el ingrediente $ingv"}
elseif($pizza -ieq "no") {Write-Host "Has elegido una pizza no vegetariana"
Write-Host "$pizzanov"
$ingnov=Read-Host "Que ingrediente quieres para tu pizza"
Write-Host "Tu pizza quedaria asi: Pizza no vegetariana, con el ingrediente $ingnov"}