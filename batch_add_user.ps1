$Pd = "test1"#��ʼ��һ��
$Pd2 = "test"#��ʼ��һ��
Write-Host "���������������½��ɵ�¼��Զ���û�������ǰ׺��ͳһ����������������Զ������ƶ��������û�����Զ���û��飬�û���Ϊ[ǰ׺][����]�Դ����ƣ�������ͳһ��ʽ�ġ�" -ForegroundColor Red -BackgroundColor Yellow
$name_prefix = Read-Host "�����û���ǰ׺"
[int]$number = Read-Host "�����½��û�����"
while($Pd -cne $Pd2)
{
	Write-Host "������ͳһ����:"
	$Pd = Read-Host
	Write-Host "���ٴ���������:"
	$Pd2= Read-Host
}
$cpd = ConvertTo-SecureString $Pd2 -AsPlainText -Force #ת����
while($number -gt 0) #ѭ�������
{
    New-LocalUser $name_prefix$number -Password $cpd -PasswordNeverExpires -UserMayNotChangePassword
    Add-LocalGroupMember -Group "Remote Desktop Users" -Member  $name_prefix$number
    $number--
}
Write-Host "������"

