$proxy_path_user = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\"
$proxy_path_user_check="HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Connections"
$pe= "ProxyEnable"
$pep= "AutoConfigURL"
if((Get-ItemPropertyValue -Path $proxy_path_user -Name $pe) -eq 1)
{
    Set-ItemProperty -Path $proxy_path_user -Name $pe -Value 0
    New-ItemProperty -Path $proxy_path_user -Name $pep -Value "http://out.babala.cn/bala.pac" -PropertyType String -Force
}
else
{
    Set-ItemProperty -Path $proxy_path_user -Name $pep -Value "http://out.babala.cn/bala.pac"
}
$proxy_check_data=(Get-ItemProperty -Path $proxy_path_user_check -Name DefaultConnectionSettings).DefaultConnectionSettings
$proxy_check_data[8]=05
Set-ItemProperty -Path $proxy_path_user_check -Name DefaultConnectionSettings -Value $proxy_check_data