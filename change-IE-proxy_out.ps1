$proxy_path_user = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\"
$pe= "ProxyEnable"
$pep= "AutoConfigURL"
if((Get-ItemPropertyValue -Path $proxy_path_user -Name $pe) -eq 1)
{
    Set-ItemProperty -Path $proxy_path_user -Name $pe -Value 0
    New-ItemProperty -Path $proxy_path_user -Name $pep -Value "http://daili.cn:4244/daili.pac" -PropertyType String -Force
}
else
{
    Set-ItemProperty -Path $proxy_path_user -Name $pep -Value "http://daili.cn:4244/daili.pac"
}