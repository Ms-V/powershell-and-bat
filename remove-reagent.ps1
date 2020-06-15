$g_wreagentdate=Get-Date((Get-Item $env:SystemDrive\Windows\System32\Recovery\ReAgent.xml).LastWriteTime) -Format "yyyy-MM-dd" #get reagent.xml last write date
$nowdate=Get-Date -Format "yyyy-MM-dd-HH-mm" #get now date
$r_wreagentdate="2020-06-03"#Package date #封装wim的日期
if($g_wreagentdate -eq $r_wreagentdate)#判定日期是否是封装wim的日期，是的话直接删除
{
    rename-Item $env:SystemDrive\Windows\System32\Recovery\ReAgent.xml -NewName Reagent.xml$nowdate
    Exit
}
else#不是的话提示，手动去删除
{
    Write-Host "It's look like not the first time remove The ReAgent.xml file,please remove it Manual.`nThe Path is $env:SystemDrive\Windows\System32\Recovery\" -ForegroundColor Red -BackgroundColor Yellow
    Write-Host "Enter key to exit"
    Read-Host | Out-Null
    Exit
}
