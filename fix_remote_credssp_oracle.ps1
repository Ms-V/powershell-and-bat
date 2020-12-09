$cred_path="HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters"
$cred_switch="AllowEncryptionOracle"
if(Test-Path -Path $cred_path)
{
    if((Get-ItemPropertyValue -Path $cred_path -Name $cred_switch) -eq 2)
    {
        Write-Warning "CredSSP already set to right."
    }
    else
    {
        Write-Host "CredSSP already set,But value is not right,change value to 2"
        Set-ItemProperty  -Value 2 -Path $cred_path -Name $cred_switch 
    }
}
else
{
    New-Item -Path $cred_path -Force
    New-ItemProperty -Path $cred_path -Name $cred_switch -Value 2 -PropertyType Dword
    Write-Host "CredSSP setting finish"
}

