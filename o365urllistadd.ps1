new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\microsoftonline.com\" -Force #新建域名
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\microsoftonline.com" -Name * -Value 1 -PropertyType DWORD -Force #新建协议子项目
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\microsoftonline.com" -Name https -Value 2 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\microsoftonline-p.com\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\microsoftonline-p.com" -Name * -Value 1 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\onmicrosoft.com\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\onmicrosoft.com" -Name * -Value 1 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\microsoft.com\officecdn\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\microsoft.com\officecdn" -Name * -Value 1 -PropertyType DWORD -Force
new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\microsoft.com\teams\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\microsoft.com\teams" -Name https -Value 2 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\sharepoint.com\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\sharepoint.com" -Name * -Value 1 -PropertyType DWORD -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\sharepoint.com" -Name https -Value 2 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\outlook.com\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\outlook.com" -Name * -Value 1 -PropertyType DWORD -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\outlook.com" -Name https -Value 2 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\lync.com\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\lync.com" -Name * -Value 1 -PropertyType DWORD -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\lync.com" -Name https -Value 2 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\verisign.com\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\verisign.com" -Name * -Value 1 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\verisign.net\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\verisign.net" -Name * -Value 1 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\public-trust.com\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\public-trust.com" -Name * -Value 1 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\symcb.com\sa\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\symcb.com\sa\" -Name * -Value 1 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\office.com\outlook\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\office.com\outlook" -Name * -Value 1 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\windows.net\login" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\windows.net\login" -Name https -Value 2 -PropertyType DWORD -Force

new-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\skype.com\api.teams\" -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\skype.com\api.teams\" -Name https -Value 2 -PropertyType DWORD -Force

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" -Name 1609 -Value 0