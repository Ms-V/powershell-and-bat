param($win7,$win10ent,$win10pro,$office10,$office13,$office16)
$ver = Get-WmiObject -Class Win32_OperatingSystem | Select-Object -ExpandProperty Caption
$0s_bit = (Get-WmiObject Win32_OperatingSystem).osarchitecture
if($ver -like "*Windows 10*" -and $ver -like "*专业版*")
{
    Write-Host "The os is "$ver "AKA Win10 pro.start inject key.The OS is"$0s_bit "OS"
    slmgr -ipk $win10pro
    start-sleep -s 5
    Write-Host "Start activation"
    slmgr -ato
}
elseif($ver -like "*Windows 10*" -and $ver -like "*企业版*")
{
    Write-Host "The os is "$ver "AKA Win10 Ent.start inject key.The OS is"$0s_bit "OS"
    slmgr -ipk $win10ent
    start-sleep -s 5
    Write-Host "Start activation"
    slmgr  -ato
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
    Write-Host "Error! OS version not correct,activation failure."
}


if($0s_bit[0] = 6)
{
    if(Test-Path '%HOMEDRIVE%\Program Files\Microsoft Office\Office16\*' -exclude OSPP.VBS)
    {
        Write-Host "The office is office2016 inject key.The bit is"$0s_bit
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office16\OSPP.VBS /inpkey: $office16
        start-sleep -s 5
        Write-Host "Start activation"
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office16\OSPP.VBS /act
    }
    elseif(Test-Path '%HOMEDRIVE%\Program Files\Microsoft Office\Office15\*' -exclude OSPP.VBS)
    {
        Write-Host "The office is office2013 inject key.The bit is"$0s_bit
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office15\OSPP.VBS /inpkey: $office13
        start-sleep -s 5
        Write-Host "Start activation"
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office15\OSPP.VBS /act
    }
    elseif(Test-Path '%HOMEDRIVE%\Program Files\Microsoft Office\Office14\*' -exclude OSPP.VBS)
    {
        Write-Host "The office is office2010 inject key.The bit is"$0s_bit
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office14\OSPP.VBS /inpkey: $office10
        start-sleep -s 5
        Write-Host "Start activation"
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office14\OSPP.VBS /act
    }
    elseif(Test-Path '%HOMEDRIVE%\Program Files (x86)\Microsoft Office\Office16\*' -exclude OSPP.VBS)
    {
        Write-Host "The office is office2016 inject key.The bit is"$0s_bit
        Script //%HOMEDRIVE%\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS /inpkey: $office16
        start-sleep -s 5
        Write-Host "Start activation"
        Script //%HOMEDRIVE%\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS /act
    }
    elseif(Test-Path '%HOMEDRIVE%\Program Files (x86)\Microsoft Office\Office15\*' -exclude OSPP.VBS)
    {
        Write-Host "The office is office2013 inject key.The bit is"$0s_bit
        Script //%HOMEDRIVE%\Program Files (x86)\Microsoft Office\Office15\OSPP.VBS /inpkey: $office13
        start-sleep -s 5
        Write-Host "Start activation"
        Script //%HOMEDRIVE%\Program Files (x86)\Microsoft Office\Office15\OSPP.VBS /act
    }
    elseif(Test-Path '%HOMEDRIVE%\Program Files (x86)\Microsoft Office\Office14\*' -exclude OSPP.VBS)
    {
        Write-Host "The office is office2010 inject key.The bit is"$0s_bit
        Script //%HOMEDRIVE%\Program Files (x86)\Microsoft Office\Office14\OSPP.VBS /inpkey: $office10
        start-sleep -s 5
        Write-Host "Start activation"
        Script //%HOMEDRIVE%\Program Files (x86)\Microsoft Office\Office14\OSPP.VBS /act
    }
    else
    {
        Write-Host "Error! office version not correct or can't find office,activation failure."
    }
}
elseif($0s_bit[0] = 3)
{
    if(Test-Path '%HOMEDRIVE%\Program Files\Microsoft Office\Office16\*' -exclude OSPP.VBS)
    {
        Write-Host "The office is office2016 inject key.The bit is"$0s_bit
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office16\OSPP.VBS /inpkey: $office16
        start-sleep -s 5
        Write-Host "Start activation"
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office16\OSPP.VBS /act
    }
    elseif(Test-Path '%HOMEDRIVE%\Program Files\Microsoft Office\Office15\*' -exclude OSPP.VBS)
    {
        Write-Host "The office is office2013 inject key.The bit is"$0s_bit
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office15\OSPP.VBS /inpkey: $office13
        start-sleep -s 5
        Write-Host "Start activation"
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office15\OSPP.VBS /act
    }
    elseif(Test-Path '%HOMEDRIVE%\Program Files\Microsoft Office\Office14\*' -exclude OSPP.VBS)
    {
        Write-Host "The office is office2010 inject key.The bit is"$0s_bit
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office14\OSPP.VBS /inpkey: $office10
        start-sleep -s 5
        Write-Host "Start activation"
        Script //%HOMEDRIVE%\Program Files\Microsoft Office\Office14\OSPP.VBS /act
    }
    else
    {
        Write-Host "Error! office version not correct,activation failure."
    }
}
else
{
    Write-Host "Error! office version not correct,activation failure.(Beasce can't find bit of os)"
}
