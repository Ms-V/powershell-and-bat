#服务器临时文件夹要每天自动清除，并留下提示信息，用的win2016任务计划执行脚本
$date_now=get-date -format 'yyyy-MM-dd HH:mm:ss'  #拿下时间并整形
Remove-Item E:\public-software\tmp\* -recurse #清空目标文件夹
$directoryInfo = Get-ChildItem E:\public-software\tmp\ | Measure-Object #测量下目标文件夹
if($directoryInfo.count -eq 0) #如果测量的结果.Count是0文件夹就是空的
{
    "$date_now,运行成功">>C:\e盘public自动清除计划\Log.txt #出一下运行成功日志
    New-Item E:\public-software\tmp\此文件夹每天0点自动清除.txt  -type file #在目标文件夹下新建提示的txt
    "Wty,2021-11-02">>E:\public-software\tmp\此文件夹每天0点自动清除.txt #提示的txt填一下信息
}
else #不是空的走这条
{
    "$date_now,运行失败">>C:\e盘public自动清除计划\Log.txt #出一下运行失败日志
    New-Item E:\public-software\tmp\此文件夹每天0点自动清除.txt  -type file -force #强制在目标文件夹下新建提示的txt
    "Wty,2021-11-02">>E:\public-software\tmp\此文件夹每天0点自动清除.txt
}

