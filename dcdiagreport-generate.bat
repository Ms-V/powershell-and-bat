set date=%date:~0,15%
set time=%time:~0,11%
echo %date% > D:\dcdiagreport\dcdiagreport.txt
echo %time% >> D:\dcdiagreport\dcdiagreport.txt
dcdiag /a /q >> D:\dcdiagreport\dcdiagreport.txt
