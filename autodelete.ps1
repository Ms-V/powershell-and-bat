$testpath='D:\ftpshare'  #指定一个根目录
foreach($filename in Get-ChildItem $testpath -name)#获取根目录里的文件或者文件夹名字
{
	if((New-TimeSpan -end (get-date (Get-Item $testpath\$filename).CreationTime -Format 'yyyy-MM-dd')).days -lt -7)#判定该文件创建天数是否超过7天(就是-7就是七天前创建)
	{
		Remove-Item -Path $testpath\$filename -Recurse -Force #是的话就删除
	}
}