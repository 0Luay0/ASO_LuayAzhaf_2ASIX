New-Item -Path C:\Empresa -ItemType Directory

$departamento = Import-Csv -Path C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ";"


foreach($dep in $departamento){

    New-Item -Path C:\Empresa\"$($dep.departamento)" -ItemType Directory 
}

#PERMISOS DE COMPARTIR

New-SmbShare -Path C:\Empresa -Name Empresa -FullAccess Administrador
Grant-SmbShareAccess -Name Empresa -AccountName "Usuarios del dominio" -AccessRight Change -Force


#PONER PERMISOS NTFS

$ruta = "C:\Empresa"

    $acl = Get-Acl -Path $ruta

    #QUITAMOS Y DESHABILITAMOS HERENCIA

    $acl.SetAccessRuleProtection($true, $false)

    #PERMISOS ADMIN NTFS

    $permisos = @('Administradores', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    #PERMISOS DE TODOS LOS USUARIOS DEL DOMINIO
    
    $permisos = @('Usuarios del dominio', 'Read', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    #PERMISOS PARA CADA CARPETA A SU RESPECTIVO GRUPO

    $permisos = @("g.$($dep.departamento)", 'Modify', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    $acl | Set-Acl -Path $ruta