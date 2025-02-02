
New-Item -Path C:\Empresa_users -ItemType Directory

$usuarios = Import-Csv -Path C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"


foreach($usu in $usuarios){

    New-Item -Path C:\Empresa_users\"$($usu.nombre).$($usu.apellido)" -ItemType Directory

}

New-SmbShare -Path C:\Empresa_users -Name Empresa_users$ -FullAccess Administrador

Grant-SmbShareAccess -Name Empresa_users$ -AccountName "Usuarios del dominio" -AccessRight Change -Force



#ESPECIFICAMOS RUTA

foreach($usu in $usuarios){ 

$ruta = "C:\Empresa_users\$($usu.nombre).$($usu.apellido)"

    $acl = Get-Acl -Path $ruta

    $acl.SetAccessRuleProtection($true, $false)

    #PERMISOS NTFS PARA ADMINISTRADOR

    $permisos =  @('Administrador', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')

    $ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos

    $acl.SetAccessRule($ace)

    #PERMISOS USUARIOS DEL DOMINIO

    $permisos =  @('Usuarios del dominio', 'Read', 'ContainerInherit, ObjectInherit', 'None', 'Allow')

    $ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos

    $acl.SetAccessRule($ace)

    #PERMISOS DE CADA USUARIO DEL DOMINIO

   

    $permisos =  @("$($usu.nombre).$($usu.apellido)", 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')

    $ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos

    $acl.SetAccessRule($ace)

    $acl | Set-Acl -Path $ruta

    Set-ADUser -Identity "$($usu.nombre).$($usu.apellido)" -ScriptPath "carpetas.bat" -HomeDrive "Z:" -HomeDirectory "\\Empresa-dc1\Empresa_users$\$($usu.nombre).$($usu.apellido)"}