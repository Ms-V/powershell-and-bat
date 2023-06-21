Param(
[Parameter(Mandatory=$True)]
[string]$mail,
[Parameter(Mandatory=$True)]
[string]$ldap,
[Parameter(Mandatory=$True)]
[string]$asset,
[Parameter(Mandatory=$True)]
[string]$name
)

Set-ItemProperty -Force -Path "HKLM:SOFTWARE\HITACHI\MECM" -Name "E_mail_address" -Value $mail
Set-ItemProperty -Force -Path "HKLM:SOFTWARE\HITACHI\MECM" -Name "Global_ID" -Value $ldap
Set-ItemProperty -Force -Path "HKLM:SOFTWARE\HITACHI\MECM" -Name "ITD_AssetTagValue" -Value $asset
Set-ItemProperty -Force -Path "HKLM:SOFTWARE\HITACHI\MECM" -Name "Name" -Value $name
