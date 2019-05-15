$win7 = ""
$win10ent = ""
$win10pro = ""
$ver = Get-WmiObject -Class Win32_OperatingSystem | Select-Object -ExpandProperty Caption
if($ver -like "*Windows 10*" -and ($ver -like "*Professional*" -or "*Pro*"))
{
    Write-Host "The os is "$ver "AKA Win10 pro.start inject key"
    slmgr -ipk $win10pro
    start-sleep -s 5
    Write-Host "Start activation"
    slmgr -ato
}
elseif($ver -like "*Windows 10*" -and $ver -like "*Enterprise*")
{
    Write-Host "The os is "$ver "AKA Win10 Ent.start inject key"
    slmgr -ipk $win10ent
    start-sleep -s 5
    Write-Host "Start activation"
    slmgr -ato
}
elseif($ver -like "*Windows 7*")
{
    Write-Host "The os is "$ver "AKA Win7.start inject key"
    slmgr -ipk $win7
    start-sleep -s 5
    Write-Host "Start activation"
    slmgr -ato
}
else
{
    Write-Host "Error"
}