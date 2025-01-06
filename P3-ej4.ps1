Write-Host "******CALCULADORA******"
Write-Host "1.Sumar"
Write-Host "2.Restar"
Write-Host "3.Multiplicar"
Write-Host "4.Dividir"

[int]$num1=Read-Host "Dime un numero"
[int]$num2=Read-Host "Dime otro numero"
$op=Read-Host "¿Qué desea hacer? Elige una opción"

switch ($op) {
        
        1{Write-Host "Has elegido Sumar"
          $sum=$num1+$num2
          Write-Host "La suma es $sum"
        }

        2{Write-Host "Has elegido Restar"
          $rest=$num1-$num2
          Write-Host "La resta es $rest"
        }

        3{Write-Host "Has elegido Multiplicar"
          $mult=$num1*$num2
          Write-Host "La multiplicación es $mult"
        }

        4{Write-Host "Has elegido Dividir"
          $div=$num1/$num2
          Write-Host "La división es $div"
        }

        default{Write-Host "Has introducido otro valor"
          Write-Host "Saliendo de la calculadora..."
        }

}