$Pd = "test1"#初始化一下
$Pd2 = "test"#初始化一下
Write-Host "本程序用来批量新建可登录可远程用户，输入前缀和统一密码后输入数量，自动生成制定数量的用户加入远程用户组，用户名为[前缀][数量]以此类推，密码是统一格式的。" -ForegroundColor Red -BackgroundColor Yellow
$name_prefix = Read-Host "输入用户名前缀"
[int]$number = Read-Host "输入新建用户个数"
while($Pd -cne $Pd2)
{
	Write-Host "请输入统一密码:"
	$Pd = Read-Host
	Write-Host "请再次输入密码:"
	$Pd2= Read-Host
}
$cpd = ConvertTo-SecureString $Pd2 -AsPlainText -Force #转下形
while($number -gt 0) #循环添个加
{
    New-LocalUser $name_prefix$number -Password $cpd -PasswordNeverExpires -UserMayNotChangePassword
    Add-LocalGroupMember -Group "Remote Desktop Users" -Member  $name_prefix$number
    $number--
}
Write-Host "添加完毕"

