Param(
[Parameter(Mandatory=$True)]
[string]$username,
[Parameter(Mandatory=$True)]
[string]$password,
[Parameter(Mandatory=$True)]
[string]$fullname
)
$op = Get-LocalUser | Where-Object {$_.Name -eq $username}
if ( -not $op)
{
	Write-Host "start creating user"
}
else
{
	write-host "user already exists"
	exit
}
$cpd = ConvertTo-SecureString $password -AsPlainText -Force
New-LocalUser $username -Password $cpd -Fullname $fullname
Add-LocalGroupMember -Group "Users" -Member  $username
$cm=(hostname).toupper()
$ggm=Get-LocalGroupmember -group "Users" | where-Object {$_.Name -eq (hostname).toupper()+"\"+$username}
$op = Get-LocalUser | Where-Object {$_.Name -eq $username}
if ( -not $op)
{
	Write-Host "User creation failed"
}
else
{
	if( -not $ggm)
	{
		Write-Host "The user is successfully created, but cannot be added to the Users group"
	}
	else
	{
		Write-Host "User created successfully"
	}
}