Get-SmbShare | Where-Object { $_.Name -notmatch '\$|NETLOGON|SYSVOL' };

New-Item C:\ASO -ItemType directory;

New-SmbShare -Path C:\ASO -Name Aso;

Revoke-SmbShareAccess -Name Aso -AccountName Todos -Force;

Grant-SmbShareAccess -Name Aso -AccountName grupo_profesores -AccessRight Full -Force;

Grant-SmbShareAccess -Name Aso -AccountName grupo_alumnos -AccessRight Read -Force;