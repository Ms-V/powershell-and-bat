$autocheck_path="HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet"
Set-ItemProperty -Path $autocheck_path -Name EnableActiveProbing -Value 0