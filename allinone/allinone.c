#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <ctype.h>
	
int read_in();//声明函数区,对象设啥的 
int main_p();
int ac_m();
int main();
char chioce_m;

int main(void)
{
	system("color 0A");//改下色 
	while(chioce_m!='q')//用循环设置按q退出 
	{
		main_p();
		chioce_m=getch();//抓取选择 
		if(islower(chioce_m) || isdigit(chioce_m)) 
		{
			switch(chioce_m)
			{
				case '1'://激活选项 
					printf("Enter Activation\nnow loading!\n");
					//system("notepad %cd%\\test.txt");//测试是否为小写或数字，只允许小写和数字，用\\转义一下\要不cmd不认识路径
					Sleep(2000);
					system("cls"); 
					ac_m();
					continue;
				case '2':
					printf("the 2\nnow loading!\n");
					Sleep(2000);
					system("cls");
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
					printf("Error\nnow return main menu\n");
					Sleep(2000);
					system("cls");
					continue;
			}
		} 
		else
		{ 
			printf("Just lower word or number\n");
			Sleep(2000);
			system("cls");	
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
	char win7_key[30]= "win7";
	char win10_ent[30]= "win10ent";
	char win10_pro[30]= "win10pro";
	char office_10[30]= "office10";
	char office_13[30]= "office13";
	char office_16[30]= "office16";
	char all_key[300];
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
		if(islower(chioce_m) || isdigit(chioce_m)) 
		{
			switch(chioce_m)
			{
				case '1':
					printf("Now Activation! Please wait.\n");
					sprintf(all_key,"powershell -ExecutionPolicy bypass  -File %%cd%%\\auto-activation-jp.ps1 -win7 %s -win10ent %s -win10pro %s -office10 %s -office13 %s -office16 %s",win7_key,win10_ent,win10_pro,office_10,office_13,office_16);
					system(all_key);
					Sleep(2000);
					system("cls"); 
					continue;
				case '2':
					printf("Now Activation! Please wait.\n");
					sprintf(all_key,"powershell -ExecutionPolicy bypass  -File %%cd%%\\auto-activation-cn.ps1 -win7 %s -win10ent %s -win10pro %s -office10 %s -office13 %s -office16 %s",win7_key,win10_ent,win10_pro,office_10,office_13,office_16);
					system(all_key);
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
					printf("exit!Thank for used this!\n");
					Sleep(2000);
					exit(0);
				default:
					printf("Enter error\n");
					Sleep(2000);
					system("cls");
					continue;
			}
		}
		else
		{
			printf("Just lower word or number\n");
			Sleep(2000);
			system("cls");
		} 
	}
}
int read_in()
{
	system("cls");
	printf("This source code i had already put in me github.\n");
	printf("If find bug and have any problems or advise Please Contact me.\n");
	printf("Email: email");
	printf("Phone: phone");
	printf("Github: https://github.com/Ms-V\n");
	printf("Source code: https://github.com/Ms-V/powershell/tree/master/allinone \n");
	printf("\n");
	printf("Enter any return main menu\n");
	getch();
	printf("loading main menu");
	Sleep(2000);
	system("cls");
}


