[int]$num1=Read-Host "Pon un numero"
[int]$num2=Read-Host "Pon otro numero"

$sum=$num1+$num2
$rest=$num1-$num2
$mult=$num1*$num2
$div=$num1/$num2
$resto=$num1%$num2

Write-Host "La suma de los dos numeros es:" $sum
Write-Host "La resta de los dos numeros es:" $rest
Write-Host "La multiplicacion de los dos numeros es:" $mult
Write-Host "La division de los dos numeros es:" $div
Write-Host "El resto entre los dos numeros es:" $resto