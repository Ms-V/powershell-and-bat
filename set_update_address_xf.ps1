$updateregedit="HKLM:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\"
$updateauregedit="HKLM:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"

New-ItemProperty -Path $updateregedit -Name UpdateServiceUrlAlternate -Value "http://11.11.11.11:8530" -PropertyType String -Force
New-ItemProperty -Path $updateregedit -Name WUServer -Value "http://11.11.11.11:8530" -PropertyType String -Force
New-ItemProperty -Path $updateregedit -Name WUStatusServer -Value "http://11.11.11.11:8530" -PropertyType String -Force

New-ItemProperty -Path $updateauregedit -Name AUOptions -Value 4 -PropertyType DWord -Force
New-ItemProperty -Path $updateauregedit -Name AutomaticMaintenanceEnabled -Value 1 -PropertyType DWord -Force
New-ItemProperty -Path $updateauregedit -Name DetectionFrequency -Value 4 -PropertyType DWord -Force
New-ItemProperty -Path $updateauregedit -Name DetectionFrequencyEnabled -Value 1 -PropertyType DWord -Force
New-ItemProperty -Path $updateauregedit -Name NoAutoRebootWithLoggedOnUsers -Value 1 -PropertyType DWord -Force
New-ItemProperty -Path $updateauregedit -Name NoAutoUpdate -Value 0 -PropertyType DWord -Force
New-ItemProperty -Path $updateauregedit -Name ScheduledInstallDay -Value 0 -PropertyType DWord -Force
New-ItemProperty -Path $updateauregedit -Name ScheduledInstallEveryWeek -Value 1 -PropertyType DWord -Force
New-ItemProperty -Path $updateauregedit -Name ScheduledInstallTime -Value 10 -PropertyType DWord -Force
New-ItemProperty -Path $updateauregedit -Name UseWUServer -Value 1 -PropertyType DWord -Force


