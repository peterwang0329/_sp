# 課程：系統程式 -- 筆記、習題與報告

欄位 | 內容
-----|--------
學期 | 113 學年下學期
學生 |  汪章貴
學號末兩碼 | 13
教師 | [陳鍾誠](https://www.nqu.edu.tw/educsie/index.php?act=blog&code=list&ids=4)
學校科系 | [金門大學資訊工程系](https://www.nqu.edu.tw/educsie/index.php)
課程教材 | https://github.com/ccc113b/cpu2os

---
作業皆為原創(期中除外)，跟隨老師進度完成
## hw1
在115行加入了的void DOWHILE()函式
```C
void DOWHILE() {
  int doBegin = nextLabel();
  int doEnd = nextLabel();
  emit("(L%d)\n", doBegin);
  skip("do");
  skip("{");
  STMT();
  skip("}");
  skip("while");
  skip("(");
  int e = E();
  emit("if T%d goto L%d\n", e, doEnd);
  skip(")");
  skip(";");
  emit("goto L%d\n", doBegin);
  emit("(L%d)\n", doEnd);
}
```
- [https://github.com/peterwang0329/_sp/blob/main/hw1/compiler.c](https://github.com/peterwang0329/_sp/blob/main/hw1/compiler.c)
## hw2
- [power2組合語言指令](https://github.com/peterwang0329/_sp/blob/main/hw2/power2.md)
- [c4_asmpower2.c](https://github.com/peterwang0329/_sp/blob/main/hw2/c4_asmpower2.c)
- [c4_asmpower2.c執行結果](https://github.com/peterwang0329/_sp/blob/main/hw2/asmpower2.md)
## hw3
在c4.c檔案中加入了DO指令
```C
else if(tk == Do) { // do stmt while (exp);
    next();
    a = e + 1; // a 記住 stmt 開頭
    stmt();
    if (tk == While) next(); else { printf("%d: while expected\n", line); exit(-1); }
    if (tk == '(') next(); else { printf("%d: open paren expected\n", line); exit(-1); }
    expr(Assign);
    if (tk == ')') next(); else { printf("%d: close paren expected\n", line); exit(-1); }
    if (tk == ';') next(); else { printf("%d: semicolon expected\n", line); exit(-1); }
    *++e = BNZ; *++e = (int)a; // 條件為真時跳回 stmt 開頭
  }
```
- [https://github.com/peterwang0329/_sp/tree/main/hw3](https://github.com/peterwang0329/_sp/tree/main/hw3)
## hw4
修改老師的hello.s檔案為mult.s，並修改指令
```s
mult3:
        mov     %rdi, %rax                # result (rax) initially holds x
        imul   %rsi, %rax                # if so, set result to y
        imul   %rdx, %rax                # if so, set result to z
        ret                               # the max will be in eax
```
- [https://github.com/peterwang0329/_sp/tree/main/hw4/mult.s](https://github.com/peterwang0329/_sp/blob/main/hw4/mult.s)
## hw5
C語言函式採用以前完成的鏈結串鏈程式
- [https://github.com/peterwang0329/_sp/tree/main/hw5](https://github.com/peterwang0329/_sp/tree/main/hw5)
## mid(內含詳細說明，部分由AI完成)
- [https://github.com/peterwang0329/_sp/tree/main/mid/Readme.md](https://github.com/peterwang0329/_sp/tree/main/mid/Readme.md)