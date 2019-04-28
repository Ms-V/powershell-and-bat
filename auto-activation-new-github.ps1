#$ConfirmPreference = "None"
#Set-ExecutionPolicy Unrestricted -Force
$win7 = "win7 key"
$win10ent = "win10ent key"
$win10pro = "win10pro key"
$ver = Get-WmiObject -Class Win32_OperatingSystem | Select-Object -ExpandProperty Caption
if($ver -like "*Windows 10*")
{
    if($ver -like "专业版" -or "Professional")
    {
        Write-Host "Win10 Pro"
        slmgr -ipk $win10pro
        slmgr -ato
    }
    elseif($ver -like "企业版" -or "Enterprise")
    {
        Write-Host "Win10 ENT"
        slmgr -ipk $win10ent
        slmgr -ato
    }
    else
    {
        Write-Host "unknow Win10"
    }
}
elseif($ver -like "*Windows 7*")
{
    Write-Host "Win7 All"
    slmgr -ipk $win7
    slmgr -ato
}
else
{
    Write-Host "Error"
}