Set-ExecutionPolicy RemoteSigned -Force
$win7 = "win7 key"
$win10ent = "win10ent key"
$win10pro = "win10pro key"
$ver = Get-WmiObject -Class Win32_OperatingSystem | Select-Object -ExpandProperty Caption
if($ver -like "*Windows 7*")
{
    Write-Host "Useing the key Win7 All"
    slmgr -ipk $win7
    slmgr -ato
    read-host
}
elseif($ver -contains ("Windows 10" -and  ("专业版" -or "Professional")))
{
    Write-Host "Useing the key Win10 pro"
    slmgr -ipk $win10pro
    slmgr -ato
    read-host
}
elseif($ver -contains ("Windows 10" -and ("企业版" -or "Enterprise")))
{
    Write-Host "Useing the key Win10 ent"
    slmgr -ipk $win10ent
    slmgr -ato
    read-host
}
else
{
    Write-Host "Error"
    read-host
}