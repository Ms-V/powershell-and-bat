$proxy_path="HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Connections"
$proxy_check_data=(Get-ItemProperty -Path $proxy_path -Name DefaultConnectionSettings).DefaultConnectionSettings
$proxy_check_data[8]=05
Set-ItemProperty -Path $proxy_path -name DefaultConnectionSettings -Value $proxy_check_data