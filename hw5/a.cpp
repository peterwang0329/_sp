#include<stdio.h>
#include<stdlib.h>
#pragma warning(disable:4996)

void Inquire();
void New();
void New_set(int point);
void Revise();
void Delete();
void Delete_set1(int number);
void Delete_set2(int number, int count, int a);

struct product{				//定義一個[資料型別],宣告時用struct product 變數名稱;
	int value;				//宣告一個整數的變數在這個資料形態裡
	struct product* next;	//宣告一個指標在這個資料形態裡,負責储存鏈接到下一個資料的指標
};	//struct宣告完需加 ;

struct product* head = NULL; //指向第一個資料的指標(不可亂動,否則可能會出現全部的資料不見的狀況)
struct product* current;	 //鏈結資料、查詢資料用指標
int n=0;	//計算資料的數量

int main() {
	int a;
	while (1)
	{
		system("cls");
		printf("*This program only stores integer data*\n");
		printf("1.Query Data\n");
		printf("2.Add Data\n");
		printf("3.Modify Data\n");
		printf("4.Delete Data\n");
		printf("5.Exit\n");
		printf("Please enter your choice:\n");
		scanf("%d",&a);
		current = head;	//初始化
		switch (a)
		{
		case 1:
			Inquire();	//查詢資料
			break;
		case 2:
			New();		//新增&建立資料
			break;
		case 3:
			Revise();	//修改資料
			break;
		case 4:
			Delete();	//刪除一個或多個資料
			break;
		case 5:
			return 0;
		default:
			break;
		}
		system("pause");
	}
}

void Inquire() {	//查詢資料
	if (n == 0)	 //資料數為0時
		printf("Data not found");
	else {
		current = head;	//初始化
		printf("\n");
		for (int i = 1; i <= n; i++) {
			printf("%3d.%-6d %c", i, current->value, i % 5 == 0 ? '\n' : ' ');
			current = current->next;  //讓current指標指向下一個資料
		}
	}
	printf("\n");
}

void New() {	//建立插入資料
	int point, number, a;	
	struct product* set = head;	//暫存用指標
	if (n == 0) {	/*初始化資料集*/
		printf("Enter the number of data to add: ");
		scanf("%d", &point);					
		printf("Enter the data:\n");
		head = new product();	//建立第一個資料
		current = head;			//初始化
		New_set(point);
		n = point;	//計算資料總數
		Inquire();	//輸出新增後的結果
	}
	else {			/*新增資料*/
		printf("1.Add new data\n");
		printf("2.Insert new data\n");
		printf("3.Return to menu\n");
		printf("Please select an option: ");
		scanf("%d",&a);
		switch (a)
		{
		case 1:	//建立新資料
			printf("Enter the number of data to add: "); /*等我哪天學好一次性輸入再來改*/
			scanf("%d", &point);
			printf("Enter the data:\n");
			for (int i = 1; i < n; i++)
				set = set->next;		//將set指向最後一個資料的位址,負責保存到下一個資料的指標,方便鏈接
			current = set->next;		//將current指向最後一個資料的位址
			current = new product();	//建立新資料
			set->next = current;		//將最後一個資料鏈接到新資料
			New_set(point);
			n = n + point;
			Inquire();
			break;
		case 2:	//插入建立新資料
			printf("Enter position and amount of data to insert: "); /*等我哪天學好一次性輸入再來改*/
			scanf("%d%d", &number,&point);	//number表示插入的起始位置,point計算新增的資料數量
			if (number <= 0 || number > n) {		//偵測資料中是否有該資料
				printf("%d. Position not found\n", number);
				system("pause");
				main();
			}
			else {
				printf("Enter the data:\n");
				for (int i = 1; i < number - 1; i++) { //先找到插入資料的起始位置
					current = current->next;
				}
				if (number == 1) {	//插入的位置為開頭的話,直接讓開頭 head指標新增資料
					set = current;			//保存插入新資料後面鏈接的舊資料的指標,避免插入新資料,導致後方資料丟失
					head = new product();	//建立新資料
					current = head;			//進入新資料
				}
				else {
					set = current->next;			//保存插入新資料後面鏈接的舊資料的指標,避免插入新資料,導致後方資料丟失
					current->next = new product();	//建立新資料
					current = current->next;		//進入新資料
				}
				New_set(point);	//輸入新資料
				current->next = set; //接回後面原本的資料
				n = n + point;
				Inquire();	//輸出新增後的結果
			}
			break;
		case 3:
			break;
		default:
			New();	//重新輸入
			break;
		}
	}
		
}
void New_set(int point) {  //循環建立新資料並鏈接至下一個資料
	if (point == 1) {
		scanf("%d", &current->value);	//輸入新資料
		current->next = NULL;			//最後一個無資料,寫作NULL
	}
	else {
		scanf("%d", &current->value);	//輸入新資料
		current->next = new product();	//創建新資料
		current = current->next;		//將current連結至下一個資料
		return New_set(point - 1);
	}
}

void Revise() {	//修改資料
	int number, count=0, temp, point[10000];	//number為修改數量
	Inquire();
	if (n == 0) {	//資料數為0時
		system("pause");
	}
	else {
		printf("Enter the number of items to modify: ");
		scanf("%d", &number);	
		printf("Select the data positions to modify: ");
		for (int i = 0; i < number; i++) {
			scanf("%d", &point[i]);
			if (point[i] <= 0 || point[i] > n) {
				printf("%d. Position not found\n",*(point+i));
				number--;
				i--;
			}
		}
		for (int i = 0; i < number; i++) {
			for (int j = 0; j <= i; j++) {
				if (point[i] < point[j] && i != j) {
					temp = point[i];
					point[i] = point[j];
					point[j] = temp;
				}
			}
		}
		printf("Enter new values for positions (");
		for (int i = 0; i < number-1; i++) {
			printf("%d. ", *(point + i));
		}
		printf("%d.):\n",*(point+number-1));
		for (int i = 0; i < number; i++) {
			current = head;	//初始化
			for (int i = 1; i < *(point + count); i++)	//找到要修改的資料
				current = current->next;	
			scanf("%d", &current->value);	//輸入新資料
			count++;	//記數加一
		}
		Inquire();
	}
}

void Delete() {
	int number = 1, a;
	if (n == 0) {	//資料數為0時
		printf("No data to delete\n");
		system("pause");
	}
	else {	//刪除的兩種方式邏輯不同,但多個和一個刪除方式相同,所以使用了2種副函式
		Inquire();
		printf("1.Delete specific values (multiple)\n");
		printf("2.Delete specific value (single)\n");
		printf("3.Delete by positions (multiple)\n");
		printf("4.Delete by position (single)\n");
		printf("5.Return\n");
		printf("Select deletion method: ");
		scanf("%d", &a);
		switch (a)
		{
		case 1:
			printf("Enter number of values to delete: ");
			scanf("%d", &number);	//遞迴的次數
		case 2:
			printf("Enter value to delete: ");
			Delete_set1(number);
			printf("刪除後:");
			Inquire();//輸出刪除後的結果
			break;
		case 3:
			printf("Enter number of positions to delete: ");
			scanf("%d", &number);	//遞迴的次數
		case 4:
			printf("Enter position to delete: ");
			Delete_set2(number, 0, number);	//(遞迴次數,刪除數量,保存遞迴次數)
			printf("刪除後:");
			Inquire();//輸出刪除後的結果
			break;
		case 5:
			break;
		default:
			Delete();
			break;
		}
	}
}

void Delete_set1(int number) {	//刪除_特定種類資料
	int data,count=0,a=0;	//data紀錄刪除的種類,count紀錄刪除的資料總數
	struct product* set = head;	//暫存用
	current = head;				//初始化
	scanf("%d", &data); //輸入刪除的種類
	for (int i = 1; i <= n; i++) {
		if (data == current->value) {
			if (i==1) {		//刪除第一筆資料
				head = head->next;	//向後移到第二筆資料,將其作為新的開頭,此時current還在第一筆資料
				delete current;		//刪除第一筆資料
				current = head;		//重新初始化
				i--;
				n--;
				set = current;		//重新初始化
			}/*此處 i 和 n 同時相減是為了避免遞迴次數跑掉*/
			else {			//刪除其餘相同的資料
				set->next = current->next;	//將前一筆和下一筆的資料鏈接
				delete current;		//刪除資料
				count++;			//記數+1	
				current = set;		//回到前一筆資料,否則current不會指向任何資料
				current = current->next;	//到下一筆資料
			}
			a = 1;
		}
		else {
			set = current;				//紀錄前一筆資料,方便後續鏈接
			current = current->next;	//到下一筆資料
		}
	}
	if (a == 0)		//偵測資料中是否有該資料
		printf("%d. can't not found\n", data);
	n = n - count;	//減去刪除的資料量
	if (number != 1)
		return Delete_set1(number-1);
}
void Delete_set2(int number,int count,int a) {	//刪除_特定位置
	int point;				  //紀錄刪除的位置
	struct product* set=head; //暫存用
	current = head;			  //初始化
	scanf("%d", &point);	  //輸入要刪除的位置
	if (point <= 0 || point > n) {		//偵測資料中是否有該資料
		printf("%d. can't not found\n",point);
		return Delete_set2(number - 1, count, a - 1);
	}
	if (number != a)	//避免出現刪完第一個資料,後續資料不再原本所在的位置上的狀況
		point=point-count;
	if (point == 1)		   //當刪除的位置在第一筆資料時
		head = head->next; //向後移到第二筆資料,將其作為新的開頭,此時current還在第一筆資料
	else {
		for (int i = 1; i < point - 1; i++)	//找到要刪除的資料前一筆
			set = set->next;
		current = set->next;		//將current移至刪除的那筆資料
		set->next = current->next;	//鏈接資料
	}
	delete current;	//刪除資料
	n--;			//資料-1
	if (number != 1)
		return Delete_set2(number-1, count+1,a);
}