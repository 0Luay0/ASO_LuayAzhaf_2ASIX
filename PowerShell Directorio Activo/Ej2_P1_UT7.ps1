
$departamento = Import-Csv C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ";"
$usuarios = Import-Csv C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=EMPRESA,DC=LOCAL" -Description "Unidad Empresa"
foreach ($dep in $departamento)
{
    New-ADOrganizationalUnit -Name "$($dep.departamento)" -Path "OU=EMPRESA,DC=EMPRESA,DC=LOCAL" -Description "$($dep.descripcion)"
    New-ADGroup -Name "g.$($dep.departamento)" -GroupCategory Security -GroupScope Global -Path "OU=$($dep.departamento),OU=Empresa,DC=EMPRESA,DC=LOCAL"
}

foreach($usu in $usuarios){
    New-ADUser -Name "$($usu.nombre)" -Path "OU=$($usu.departamento),OU=Empresa,DC=EMPRESA,DC=LOCAL" -SamAccountName "$($usu.nombre).$($usu.apellido)" -AccountPassword (ConvertTo-SecureString "aso2025." -AsPlainText -Force) -GivenName "$($usu.nombre)" -Surname "$($usu.apellido)" -ChangePasswordAtLogon $true -Enabled $true
    Add-ADGroupMember -Identity "g.$($usu.departamento)" -Members "$($usu.nombre).$($usu.apellido)"
}

Set-ADOrganizationalUnit -Identity "OU=Empresa,DC=EMPRESA,DC=LOCAL" -ProtectedFromAccidentalDeletion $false


