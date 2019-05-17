#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <ctype.h>
#include <conio.h>
	
 
int main();//声明主函数 
int main_p();//声明打印主函数 
int ac_m();//声明激活函数 
int fix_m();//声明修复函数 
int read_in();//声明关于此程序函数
int chose_w();//声明选择错误函数

char chioce_m;//选择全局变量
int chose_w_type; 

int main(void)
{
	system("color 0A");//改下色 
	while(chioce_m!='q')//用循环设置按q退出 
	{
		main_p();
		chioce_m=getch();//抓取选择 
		if(islower(chioce_m) || isdigit(chioce_m)) //判定输入，只能是数字或者小写字母 
		{
			switch(chioce_m)
			{
				case '1'://激活选项 
					printf("Enter Activation\nNow loading!\n");
					Sleep(2000);
					system("cls"); 
					ac_m();//激活函数 
					continue;
				case '2':
					printf("Enter Fix mode\nNow loading!\n");
					Sleep(2000);
					system("cls");
					fix_m();//修复函数 
					continue;
				case '3':
					printf("Instructions loading!\n");
					Sleep(2000);
					read_in();
					continue;
				case 'q':
					printf("Exit!Thank for used this!\n");
					Sleep(2000);
					continue;
				default:
					chose_w_type=2;//设置选择错误类型为2 
					chose_w();
					continue;
			}
		} 
		else
		{ 
			chose_w_type=1;//设置选择错误类型为1 
			chose_w();
		}
	}
}

int main_p()//主菜单打印 
{
	printf("========================\n");
	printf("=     Mead By Wei      =\n");
	printf("========================\n");
	printf("\n");
	printf("========================\n");
	printf("=      Choice  mode    =\n");
	printf("=  1.Activation mode   =\n");
	printf("=      2.fix mode      =\n");
	printf("= 3.About This program =\n");
	printf("========================\n");
	printf("\n");
	printf("Please enter num 1,2,3 or q exit:\n");	
}

int ac_m()//激活函数 
{	
	char win7_key[30]= "Win7key";//各种激活码 
	char win10_ent[30]= "Win10entkey";
	char win10_pro[30]= "Win10prokey";
	char office_10[30]= "office10key";
	char office_13[30]= "office13key";
	char office_16[30]= "office16key";
	char all_key[300];//格式化后存放字符串 
	while(chioce_m!='q')
	{
		printf("===========================\n");
		printf("=which language you os is?=\n");
		printf("=        1.Japanese       =\n");
		printf("=        2.Chinese        =\n");
		printf("===========================\n");
		printf("\n");
		printf("Please enter num 1,2 or r return to main menu q to exit:\n");
		chioce_m=getch();
		if(islower(chioce_m) || isdigit(chioce_m)) //判定输入，只能是数字或者小写字母 
		{
			switch(chioce_m) 
			{
				case '1':
					printf("Now Activation! Please wait.\n");
					sprintf(all_key,"powershell -ExecutionPolicy bypass  -File %%cd%%\\auto-activation-jp.ps1 -win7 %s -win10ent %s -win10pro %s -office10 %s -office13 %s -office16 %s",win7_key,win10_ent,win10_pro,office_10,office_13,office_16);//变量、powershell代码，字符格式化一下装到一块 
					system(all_key);//传入cmd开始激活 
					Sleep(2000);
					system("cls"); 
					continue;
				case '2':
					printf("Now Activation! Please wait.\n");
					sprintf(all_key,"powershell -ExecutionPolicy bypass  -File %%cd%%\\auto-activation-cn.ps1 -win7 %s -win10ent %s -win10pro %s -office10 %s -office13 %s -office16 %s",win7_key,win10_ent,win10_pro,office_10,office_13,office_16);//变量、powershell代码，字符格式化一下装到一块
					system(all_key);//传入cmd开始激活 
					Sleep(2000);
					system("cls"); 
					continue;
				case 'r':
					printf("Return main menu!\n");
					Sleep(2000);
					system("cls");
					main();
					continue;
				case 'q':
					printf("Exit!Thank for used this!\n");
					Sleep(2000);
					exit(0);
				default:
					chose_w_type=2;
					chose_w();
					continue;
			}
		}
		else
		{
			chose_w_type=1;
			chose_w();
		} 
	}
}

int fix_m()
{
	while(chioce_m!='q')
	{
		char proxy_new[50]="script proxy";
		char proxy_old[30]="proxy";
		char set_proxy[200];
		printf("=====================================\n");
		printf("=       What you want to fix?       =\n");
		printf("=  1.Set IE Proxy and Enable(New)   =\n");//脚本代理 
		printf("=  2.Set IE Proxy and Enable(Old)   =\n");
		printf("= 3.Remove ALL IE Proxy and disble  =\n");
		printf("= 4.Set standard Local Adminisrator =\n");
		printf("=====================================\n");
		printf("\n");
		printf("Please enter num 1,2 or r return to main menu q to exit:\n");
		chioce_m=getch();
		if(islower(chioce_m) || isdigit(chioce_m)) //判定输入，只能是数字或者小写字母 
		{
			switch(chioce_m) 
			{
				case '1':
					printf("Set IE New Proxy and Enable start now.\n");
					sprintf(set_proxy,"Powershell -ExecutionPolicy bypass Set-ItemProperty -path 'HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings' -Name 'AutoConfigURL' -value  '%s'",proxy_new);//整合脚本代理 
					system(set_proxy);//执行设置脚本proxy
					Sleep(2000);
					system("cls"); 
					continue;
				case '2':
					printf("Set IE Old Proxy and Enable start now.\n");
					sprintf(set_proxy,"Powershell -ExecutionPolicy bypass Set-ItemProperty -path 'HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings' -Name 'ProxyServer' -value  '%s'",proxy_old);
					system(set_proxy);//执行设置proxy
					system("Powershell -ExecutionPolicy bypass Set-ItemProperty -path 'HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings' -Name 'ProxyEnable' -value '1'");//开启普通代理端口 
					Sleep(2000);
					system("cls"); 
					continue;
				case '3':
					printf("Set IE Old Proxy and Enable start now.\n");
					system("Powershell -ExecutionPolicy bypass Remove-ItemProperty -path 'HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings' -Name 'AutoConfigURL'");//删除脚本代理 
					system("Powershell -ExecutionPolicy bypass Set-ItemProperty -path 'HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings' -Name 'ProxyServer' -value  ''");//设置普通代理为空 
					system("Powershell -ExecutionPolicy bypass Set-ItemProperty -path 'HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings' -Name 'ProxyEnable' -value '0'");//关闭普通代理端口
					Sleep(2000);
					system("cls"); 
					continue;
				case '4':
					printf("Set administrator Not finish.");
					Sleep(2000);
					system("cls"); 
					continue;
				case 'r':
					printf("Return main menu!\n");
					Sleep(2000);
					system("cls");
					main();
					continue;
				case 'q':
					exit(0);
				default:
					chose_w_type=2;
					chose_w();
					continue;
			}
		}
		else
		{
			chose_w_type=1;
			chose_w();
		} 
	} 
}

int read_in()//说明函数 
{
	system("cls");
	printf("This source code i had already put in me github.\n");
	printf("If find bug and have any problems or advise Please Contact me.\n");
	printf("Email: mail\n");
	printf("Phone: phone");
	printf("Github: github");
	printf("Source code: github \n");
	printf("\n");
	printf("Enter any return main menu.\n");
	getch();
	printf("loading main menu.");
	Sleep(2000);
	system("cls");
}

int chose_w()//选择错误函数
{
	if(chose_w_type==1)
	{
		printf("Just lower word or number.\n");
		Sleep(2000);
		system("cls");
	}
	else if(chose_w_type==2)
	{
		printf("Selected item not existence.\n");
		Sleep(2000);
		system("cls");	
	}
	else
	{
		printf("Not konw what happen Please enter again.\n");
		Sleep(2000);
		system("cls");	
	}
}

