param($win7,$win10ent,$win10pro,$office10,$office13,$office16)
$ver = Get-WmiObject -Class Win32_OperatingSystem | Select-Object -ExpandProperty Caption
$0s_bit = (Get-WmiObject Win32_OperatingSystem).osarchitecture
if($ver -like "*Windows 10*" -and ($ver -like "*Professional*" -or "*Pro*"))
{
    Write-Host "The os is "$ver "AKA Win10 pro.start inject key.The OS is"$0s_bit "OS"
    slmgr -ipk $win10pro
    start-sleep -s 5
    Write-Host "Start activation"
    slmgr -ato
}
elseif($ver -like "*Windows 10*" -and $ver -like "*Enterprise*")
{
    Write-Host "The os is "$ver "AKA Win10 Ent.start inject key.The OS is"$0s_bit "OS"
    slmgr -ipk $win10ent
    start-sleep -s 5
    Write-Host "Start activation"
    slmgr -ato
}
elseif($ver -like "*Windows 7*")
{
    Write-Host "The os is "$ver "AKA Win7.start inject key.The OS is"$0s_bit "OS"
    slmgr -ipk $win7
    start-sleep -s 5
    Write-Host "Start activation"
    slmgr -ato
}
else
{
    Write-Host "Error OS version not correct,activation failure."
}