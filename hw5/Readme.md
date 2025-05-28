## a.cpp

執行a.cpp
```
 g++ a.cpp -o a.out
 ./a.out
```
產生組合語言.s檔
```
g++ -S a.cpp
```
產生目的檔.o檔
```
g++ -c a.cpp
```
將該目的檔反組譯
```
a.o:     file format pe-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	e8 00 00 00 00       	call   d <main+0xd>
   d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 14 <main+0x14>
  14:	48 89 c1             	mov    %rax,%rcx
  17:	e8 00 00 00 00       	call   1c <main+0x1c>
  1c:	48 8d 05 08 00 00 00 	lea    0x8(%rip),%rax        # 2b <main+0x2b>
  23:	48 89 c1             	mov    %rax,%rcx
  26:	e8 00 00 00 00       	call   2b <main+0x2b>
  2b:	48 8d 05 30 00 00 00 	lea    0x30(%rip),%rax        # 62 <main+0x62>
  32:	48 89 c1             	mov    %rax,%rcx
  35:	e8 00 00 00 00       	call   3a <main+0x3a>
  3a:	48 8d 05 3d 00 00 00 	lea    0x3d(%rip),%rax        # 7e <main+0x7e>
  41:	48 89 c1             	mov    %rax,%rcx
  44:	e8 00 00 00 00       	call   49 <main+0x49>
  49:	48 8d 05 48 00 00 00 	lea    0x48(%rip),%rax        # 98 <main+0x98>
  50:	48 89 c1             	mov    %rax,%rcx
  53:	e8 00 00 00 00       	call   58 <main+0x58>
  58:	48 8d 05 56 00 00 00 	lea    0x56(%rip),%rax        # b5 <main+0xb5>
  5f:	48 89 c1             	mov    %rax,%rcx
  62:	e8 00 00 00 00       	call   67 <main+0x67>
  67:	48 8d 05 64 00 00 00 	lea    0x64(%rip),%rax        # d2 <main+0xd2>
  6e:	48 89 c1             	mov    %rax,%rcx
  71:	e8 00 00 00 00       	call   76 <main+0x76>
  76:	48 8d 05 6b 00 00 00 	lea    0x6b(%rip),%rax        # e8 <main+0xe8>
  7d:	48 89 c1             	mov    %rax,%rcx
  80:	e8 00 00 00 00       	call   85 <main+0x85>
  85:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
  89:	48 89 c2             	mov    %rax,%rdx
  8c:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # 118 <_Z7Inquirev+0x7>
  93:	48 89 c1             	mov    %rax,%rcx
  96:	e8 00 00 00 00       	call   9b <main+0x9b>
  9b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # a2 <main+0xa2>
  a2:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # b1 <main+0xb1>
  a9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  ac:	83 f8 05             	cmp    $0x5,%eax
  af:	77 45                	ja     f6 <main+0xf6>
  b1:	89 c0                	mov    %eax,%eax
  b3:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  ba:	00 
  bb:	48 8d 05 90 00 00 00 	lea    0x90(%rip),%rax        # 152 <_Z7Inquirev+0x41>
  c2:	8b 04 02             	mov    (%rdx,%rax,1),%eax
  c5:	48 98                	cltq
  c7:	48 8d 15 90 00 00 00 	lea    0x90(%rip),%rdx        # 15e <_Z7Inquirev+0x4d>
  ce:	48 01 d0             	add    %rdx,%rax
  d1:	ff e0                	jmp    *%rax
  d3:	e8 39 00 00 00       	call   111 <_Z7Inquirev>
  d8:	eb 1d                	jmp    f7 <main+0xf7>
  da:	e8 05 01 00 00       	call   1e4 <_Z3Newv>
  df:	eb 16                	jmp    f7 <main+0xf7>
  e1:	e8 d6 04 00 00       	call   5bc <_Z6Revisev>
  e6:	eb 0f                	jmp    f7 <main+0xf7>
  e8:	e8 db 07 00 00       	call   8c8 <_Z6Deletev>
  ed:	eb 08                	jmp    f7 <main+0xf7>
  ef:	b8 00 00 00 00       	mov    $0x0,%eax
  f4:	eb 15                	jmp    10b <main+0x10b>
  f6:	90                   	nop
  f7:	48 8d 05 88 00 00 00 	lea    0x88(%rip),%rax        # 186 <_Z7Inquirev+0x75>
  fe:	48 89 c1             	mov    %rax,%rcx
 101:	e8 00 00 00 00       	call   106 <main+0x106>
 106:	e9 02 ff ff ff       	jmp    d <main+0xd>
 10b:	48 83 c4 30          	add    $0x30,%rsp
 10f:	5d                   	pop    %rbp
 110:	c3                   	ret

0000000000000111 <_Z7Inquirev>:
 111:	55                   	push   %rbp
 112:	48 89 e5             	mov    %rsp,%rbp
 115:	48 83 ec 30          	sub    $0x30,%rsp
 119:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # 12f <_Z7Inquirev+0x1e>
 11f:	85 c0                	test   %eax,%eax
 121:	75 14                	jne    137 <_Z7Inquirev+0x26>
 123:	48 8d 05 a8 00 00 00 	lea    0xa8(%rip),%rax        # 1d2 <_Z7Inquirev+0xc1>
 12a:	48 89 c1             	mov    %rax,%rcx
 12d:	e8 00 00 00 00       	call   132 <_Z7Inquirev+0x21>
 132:	e9 9c 00 00 00       	jmp    1d3 <_Z7Inquirev+0xc2>
 137:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 13e <_Z7Inquirev+0x2d>
 13e:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # 14d <_Z7Inquirev+0x3c>
 145:	b9 0a 00 00 00       	mov    $0xa,%ecx
 14a:	e8 00 00 00 00       	call   14f <_Z7Inquirev+0x3e>
 14f:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
 156:	eb 70                	jmp    1c8 <_Z7Inquirev+0xb7>
 158:	8b 4d fc             	mov    -0x4(%rbp),%ecx
 15b:	48 63 c1             	movslq %ecx,%rax
 15e:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
 165:	48 c1 e8 20          	shr    $0x20,%rax
 169:	89 c2                	mov    %eax,%edx
 16b:	d1 fa                	sar    %edx
 16d:	89 c8                	mov    %ecx,%eax
 16f:	c1 f8 1f             	sar    $0x1f,%eax
 172:	29 c2                	sub    %eax,%edx
 174:	89 d0                	mov    %edx,%eax
 176:	c1 e0 02             	shl    $0x2,%eax
 179:	01 d0                	add    %edx,%eax
 17b:	29 c1                	sub    %eax,%ecx
 17d:	89 ca                	mov    %ecx,%edx
 17f:	85 d2                	test   %edx,%edx
 181:	75 07                	jne    18a <_Z7Inquirev+0x79>
 183:	b9 0a 00 00 00       	mov    $0xa,%ecx
 188:	eb 05                	jmp    18f <_Z7Inquirev+0x7e>
 18a:	b9 20 00 00 00       	mov    $0x20,%ecx
 18f:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 19e <_Z7Inquirev+0x8d>
 196:	8b 10                	mov    (%rax),%edx
 198:	8b 45 fc             	mov    -0x4(%rbp),%eax
 19b:	41 89 c9             	mov    %ecx,%r9d
 19e:	41 89 d0             	mov    %edx,%r8d
 1a1:	89 c2                	mov    %eax,%edx
 1a3:	48 8d 05 b7 00 00 00 	lea    0xb7(%rip),%rax        # 261 <_Z3Newv+0x7d>
 1aa:	48 89 c1             	mov    %rax,%rcx
 1ad:	e8 00 00 00 00       	call   1b2 <_Z7Inquirev+0xa1>
 1b2:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 1c1 <_Z7Inquirev+0xb0>
 1b9:	48 8b 40 08          	mov    0x8(%rax),%rax
 1bd:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # 1cc <_Z7Inquirev+0xbb>
 1c4:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 1c8:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # 1de <_Z7Inquirev+0xcd>
 1ce:	39 45 fc             	cmp    %eax,-0x4(%rbp)
 1d1:	7e 85                	jle    158 <_Z7Inquirev+0x47>
 1d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 1d8:	e8 00 00 00 00       	call   1dd <_Z7Inquirev+0xcc>
 1dd:	90                   	nop
 1de:	48 83 c4 30          	add    $0x30,%rsp
 1e2:	5d                   	pop    %rbp
 1e3:	c3                   	ret

00000000000001e4 <_Z3Newv>:
 1e4:	55                   	push   %rbp
 1e5:	48 89 e5             	mov    %rsp,%rbp
 1e8:	48 83 ec 40          	sub    $0x40,%rsp
 1ec:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1f3 <_Z3Newv+0xf>
 1f3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 1f7:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # 20d <_Z3Newv+0x29>
 1fd:	85 c0                	test   %eax,%eax
 1ff:	75 7e                	jne    27f <_Z3Newv+0x9b>
 201:	48 8d 05 c8 00 00 00 	lea    0xc8(%rip),%rax        # 2d0 <_Z3Newv+0xec>
 208:	48 89 c1             	mov    %rax,%rcx
 20b:	e8 00 00 00 00       	call   210 <_Z3Newv+0x2c>
 210:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
 214:	48 89 c2             	mov    %rax,%rdx
 217:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # 2a3 <_Z3Newv+0xbf>
 21e:	48 89 c1             	mov    %rax,%rcx
 221:	e8 00 00 00 00       	call   226 <_Z3Newv+0x42>
 226:	48 8d 05 ea 00 00 00 	lea    0xea(%rip),%rax        # 317 <_Z3Newv+0x133>
 22d:	48 89 c1             	mov    %rax,%rcx
 230:	e8 00 00 00 00       	call   235 <_Z3Newv+0x51>
 235:	b9 10 00 00 00       	mov    $0x10,%ecx
 23a:	e8 00 00 00 00       	call   23f <_Z3Newv+0x5b>
 23f:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
 245:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 24c:	00 
 24d:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 254 <_Z3Newv+0x70>
 254:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 25b <_Z3Newv+0x77>
 25b:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # 26a <_Z3Newv+0x86>
 262:	8b 45 ec             	mov    -0x14(%rbp),%eax
 265:	89 c1                	mov    %eax,%ecx
 267:	e8 b3 02 00 00       	call   51f <_Z7New_seti>
 26c:	8b 45 ec             	mov    -0x14(%rbp),%eax
 26f:	89 05 10 00 00 00    	mov    %eax,0x10(%rip)        # 285 <_Z3Newv+0xa1>
 275:	e8 97 fe ff ff       	call   111 <_Z7Inquirev>
 27a:	e9 99 02 00 00       	jmp    518 <_Z3Newv+0x334>
 27f:	48 8d 05 fa 00 00 00 	lea    0xfa(%rip),%rax        # 380 <_Z3Newv+0x19c>
 286:	48 89 c1             	mov    %rax,%rcx
 289:	e8 00 00 00 00       	call   28e <_Z3Newv+0xaa>
 28e:	48 8d 05 09 01 00 00 	lea    0x109(%rip),%rax        # 39e <_Z3Newv+0x1ba>
 295:	48 89 c1             	mov    %rax,%rcx
 298:	e8 00 00 00 00       	call   29d <_Z3Newv+0xb9>
 29d:	48 8d 05 1b 01 00 00 	lea    0x11b(%rip),%rax        # 3bf <_Z3Newv+0x1db>
 2a4:	48 89 c1             	mov    %rax,%rcx
 2a7:	e8 00 00 00 00       	call   2ac <_Z3Newv+0xc8>
 2ac:	48 8d 05 2c 01 00 00 	lea    0x12c(%rip),%rax        # 3df <_Z3Newv+0x1fb>
 2b3:	48 89 c1             	mov    %rax,%rcx
 2b6:	e8 00 00 00 00       	call   2bb <_Z3Newv+0xd7>
 2bb:	48 8d 45 e4          	lea    -0x1c(%rbp),%rax
 2bf:	48 89 c2             	mov    %rax,%rdx
 2c2:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # 34e <_Z3Newv+0x16a>
 2c9:	48 89 c1             	mov    %rax,%rcx
 2cc:	e8 00 00 00 00       	call   2d1 <_Z3Newv+0xed>
 2d1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 2d4:	83 f8 03             	cmp    $0x3,%eax
 2d7:	0f 84 3a 02 00 00    	je     517 <_Z3Newv+0x333>
 2dd:	83 f8 03             	cmp    $0x3,%eax
 2e0:	0f 8f 2a 02 00 00    	jg     510 <_Z3Newv+0x32c>
 2e6:	83 f8 01             	cmp    $0x1,%eax
 2e9:	74 0e                	je     2f9 <_Z3Newv+0x115>
 2eb:	83 f8 02             	cmp    $0x2,%eax
 2ee:	0f 84 bf 00 00 00    	je     3b3 <_Z3Newv+0x1cf>
 2f4:	e9 17 02 00 00       	jmp    510 <_Z3Newv+0x32c>
 2f9:	48 8d 05 c8 00 00 00 	lea    0xc8(%rip),%rax        # 3c8 <_Z3Newv+0x1e4>
 300:	48 89 c1             	mov    %rax,%rcx
 303:	e8 00 00 00 00       	call   308 <_Z3Newv+0x124>
 308:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
 30c:	48 89 c2             	mov    %rax,%rdx
 30f:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # 39b <_Z3Newv+0x1b7>
 316:	48 89 c1             	mov    %rax,%rcx
 319:	e8 00 00 00 00       	call   31e <_Z3Newv+0x13a>
 31e:	48 8d 05 ea 00 00 00 	lea    0xea(%rip),%rax        # 40f <_Z3Newv+0x22b>
 325:	48 89 c1             	mov    %rax,%rcx
 328:	e8 00 00 00 00       	call   32d <_Z3Newv+0x149>
 32d:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
 334:	eb 10                	jmp    346 <_Z3Newv+0x162>
 336:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 33a:	48 8b 40 08          	mov    0x8(%rax),%rax
 33e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 342:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
 346:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # 35c <_Z3Newv+0x178>
 34c:	39 45 f4             	cmp    %eax,-0xc(%rbp)
 34f:	7c e5                	jl     336 <_Z3Newv+0x152>
 351:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 355:	48 8b 40 08          	mov    0x8(%rax),%rax
 359:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # 368 <_Z3Newv+0x184>
 360:	b9 10 00 00 00       	mov    $0x10,%ecx
 365:	e8 00 00 00 00       	call   36a <_Z3Newv+0x186>
 36a:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
 370:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 377:	00 
 378:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # 387 <_Z3Newv+0x1a3>
 37f:	48 8b 15 08 00 00 00 	mov    0x8(%rip),%rdx        # 38e <_Z3Newv+0x1aa>
 386:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 38a:	48 89 50 08          	mov    %rdx,0x8(%rax)
 38e:	8b 45 ec             	mov    -0x14(%rbp),%eax
 391:	89 c1                	mov    %eax,%ecx
 393:	e8 87 01 00 00       	call   51f <_Z7New_seti>
 398:	8b 15 10 00 00 00    	mov    0x10(%rip),%edx        # 3ae <_Z3Newv+0x1ca>
 39e:	8b 45 ec             	mov    -0x14(%rbp),%eax
 3a1:	01 d0                	add    %edx,%eax
 3a3:	89 05 10 00 00 00    	mov    %eax,0x10(%rip)        # 3b9 <_Z3Newv+0x1d5>
 3a9:	e8 63 fd ff ff       	call   111 <_Z7Inquirev>
 3ae:	e9 65 01 00 00       	jmp    518 <_Z3Newv+0x334>
 3b3:	48 8d 05 48 01 00 00 	lea    0x148(%rip),%rax        # 502 <_Z3Newv+0x31e>
 3ba:	48 89 c1             	mov    %rax,%rcx
 3bd:	e8 00 00 00 00       	call   3c2 <_Z3Newv+0x1de>
 3c2:	48 8d 55 ec          	lea    -0x14(%rbp),%rdx
 3c6:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
 3ca:	49 89 d0             	mov    %rdx,%r8
 3cd:	48 89 c2             	mov    %rax,%rdx
 3d0:	48 8d 05 76 01 00 00 	lea    0x176(%rip),%rax        # 54d <_Z7New_seti+0x2e>
 3d7:	48 89 c1             	mov    %rax,%rcx
 3da:	e8 00 00 00 00       	call   3df <_Z3Newv+0x1fb>
 3df:	8b 45 e8             	mov    -0x18(%rbp),%eax
 3e2:	85 c0                	test   %eax,%eax
 3e4:	7e 0d                	jle    3f3 <_Z3Newv+0x20f>
 3e6:	8b 55 e8             	mov    -0x18(%rbp),%edx
 3e9:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # 3ff <_Z3Newv+0x21b>
 3ef:	39 c2                	cmp    %eax,%edx
 3f1:	7e 2d                	jle    420 <_Z3Newv+0x23c>
 3f3:	8b 45 e8             	mov    -0x18(%rbp),%eax
 3f6:	89 c2                	mov    %eax,%edx
 3f8:	48 8d 05 7b 01 00 00 	lea    0x17b(%rip),%rax        # 57a <_Z7New_seti+0x5b>
 3ff:	48 89 c1             	mov    %rax,%rcx
 402:	e8 00 00 00 00       	call   407 <_Z3Newv+0x223>
 407:	48 8d 05 88 00 00 00 	lea    0x88(%rip),%rax        # 496 <_Z3Newv+0x2b2>
 40e:	48 89 c1             	mov    %rax,%rcx
 411:	e8 00 00 00 00       	call   416 <_Z3Newv+0x232>
 416:	e8 e5 fb ff ff       	call   0 <main>
 41b:	e9 f8 00 00 00       	jmp    518 <_Z3Newv+0x334>
 420:	48 8d 05 ea 00 00 00 	lea    0xea(%rip),%rax        # 511 <_Z3Newv+0x32d>
 427:	48 89 c1             	mov    %rax,%rcx
 42a:	e8 00 00 00 00       	call   42f <_Z3Newv+0x24b>
 42f:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
 436:	eb 16                	jmp    44e <_Z3Newv+0x26a>
 438:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 447 <_Z3Newv+0x263>
 43f:	48 8b 40 08          	mov    0x8(%rax),%rax
 443:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # 452 <_Z3Newv+0x26e>
 44a:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
 44e:	8b 45 e8             	mov    -0x18(%rbp),%eax
 451:	83 e8 01             	sub    $0x1,%eax
 454:	39 45 f0             	cmp    %eax,-0x10(%rbp)
 457:	7c df                	jl     438 <_Z3Newv+0x254>
 459:	8b 45 e8             	mov    -0x18(%rbp),%eax
 45c:	83 f8 01             	cmp    $0x1,%eax
 45f:	75 3a                	jne    49b <_Z3Newv+0x2b7>
 461:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 470 <_Z3Newv+0x28c>
 468:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 46c:	b9 10 00 00 00       	mov    $0x10,%ecx
 471:	e8 00 00 00 00       	call   476 <_Z3Newv+0x292>
 476:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
 47c:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 483:	00 
 484:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 48b <_Z3Newv+0x2a7>
 48b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 492 <_Z3Newv+0x2ae>
 492:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # 4a1 <_Z3Newv+0x2bd>
 499:	eb 44                	jmp    4df <_Z3Newv+0x2fb>
 49b:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 4aa <_Z3Newv+0x2c6>
 4a2:	48 8b 40 08          	mov    0x8(%rax),%rax
 4a6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 4aa:	b9 10 00 00 00       	mov    $0x10,%ecx
 4af:	e8 00 00 00 00       	call   4b4 <_Z3Newv+0x2d0>
 4b4:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
 4ba:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 4c1:	00 
 4c2:	48 8b 15 08 00 00 00 	mov    0x8(%rip),%rdx        # 4d1 <_Z3Newv+0x2ed>
 4c9:	48 89 42 08          	mov    %rax,0x8(%rdx)
 4cd:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 4dc <_Z3Newv+0x2f8>
 4d4:	48 8b 40 08          	mov    0x8(%rax),%rax
 4d8:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # 4e7 <_Z3Newv+0x303>
 4df:	8b 45 ec             	mov    -0x14(%rbp),%eax
 4e2:	89 c1                	mov    %eax,%ecx
 4e4:	e8 36 00 00 00       	call   51f <_Z7New_seti>
 4e9:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 4f8 <_Z3Newv+0x314>
 4f0:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 4f4:	48 89 50 08          	mov    %rdx,0x8(%rax)
 4f8:	8b 15 10 00 00 00    	mov    0x10(%rip),%edx        # 50e <_Z3Newv+0x32a>
 4fe:	8b 45 ec             	mov    -0x14(%rbp),%eax
 501:	01 d0                	add    %edx,%eax
 503:	89 05 10 00 00 00    	mov    %eax,0x10(%rip)        # 519 <_Z3Newv+0x335>
 509:	e8 03 fc ff ff       	call   111 <_Z7Inquirev>
 50e:	eb 08                	jmp    518 <_Z3Newv+0x334>
 510:	e8 cf fc ff ff       	call   1e4 <_Z3Newv>
 515:	eb 01                	jmp    518 <_Z3Newv+0x334>
 517:	90                   	nop
 518:	90                   	nop
 519:	48 83 c4 40          	add    $0x40,%rsp
 51d:	5d                   	pop    %rbp
 51e:	c3                   	ret

000000000000051f <_Z7New_seti>:
 51f:	55                   	push   %rbp
 520:	48 89 e5             	mov    %rsp,%rbp
 523:	48 83 ec 20          	sub    $0x20,%rsp
 527:	89 4d 10             	mov    %ecx,0x10(%rbp)
 52a:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
 52e:	75 2a                	jne    55a <_Z7New_seti+0x3b>
 530:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 53f <_Z7New_seti+0x20>
 537:	48 89 c2             	mov    %rax,%rdx
 53a:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # 5c6 <_Z6Revisev+0xa>
 541:	48 89 c1             	mov    %rax,%rcx
 544:	e8 00 00 00 00       	call   549 <_Z7New_seti+0x2a>
 549:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 558 <_Z7New_seti+0x39>
 550:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 557:	00 
 558:	eb 5c                	jmp    5b6 <_Z7New_seti+0x97>
 55a:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 569 <_Z7New_seti+0x4a>
 561:	48 89 c2             	mov    %rax,%rdx
 564:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # 5f0 <_Z6Revisev+0x34>
 56b:	48 89 c1             	mov    %rax,%rcx
 56e:	e8 00 00 00 00       	call   573 <_Z7New_seti+0x54>
 573:	b9 10 00 00 00       	mov    $0x10,%ecx
 578:	e8 00 00 00 00       	call   57d <_Z7New_seti+0x5e>
 57d:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
 583:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 58a:	00 
 58b:	48 8b 15 08 00 00 00 	mov    0x8(%rip),%rdx        # 59a <_Z7New_seti+0x7b>
 592:	48 89 42 08          	mov    %rax,0x8(%rdx)
 596:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 5a5 <_Z7New_seti+0x86>
 59d:	48 8b 40 08          	mov    0x8(%rax),%rax
 5a1:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # 5b0 <_Z7New_seti+0x91>
 5a8:	8b 45 10             	mov    0x10(%rbp),%eax
 5ab:	83 e8 01             	sub    $0x1,%eax
 5ae:	89 c1                	mov    %eax,%ecx
 5b0:	e8 6a ff ff ff       	call   51f <_Z7New_seti>
 5b5:	90                   	nop
 5b6:	48 83 c4 20          	add    $0x20,%rsp
 5ba:	5d                   	pop    %rbp
 5bb:	c3                   	ret

00000000000005bc <_Z6Revisev>:
 5bc:	55                   	push   %rbp
 5bd:	b8 90 9c 00 00       	mov    $0x9c90,%eax
 5c2:	e8 00 00 00 00       	call   5c7 <_Z6Revisev+0xb>
 5c7:	48 29 c4             	sub    %rax,%rsp
 5ca:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
 5d1:	00 
 5d2:	c7 85 0c 9c 00 00 00 	movl   $0x0,0x9c0c(%rbp)
 5d9:	00 00 00 
 5dc:	e8 30 fb ff ff       	call   111 <_Z7Inquirev>
 5e1:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # 5f7 <_Z6Revisev+0x3b>
 5e7:	85 c0                	test   %eax,%eax
 5e9:	75 14                	jne    5ff <_Z6Revisev+0x43>
 5eb:	48 8d 05 88 00 00 00 	lea    0x88(%rip),%rax        # 67a <_Z6Revisev+0xbe>
 5f2:	48 89 c1             	mov    %rax,%rcx
 5f5:	e8 00 00 00 00       	call   5fa <_Z6Revisev+0x3e>
 5fa:	e9 bf 02 00 00       	jmp    8be <_Z6Revisev+0x302>
 5ff:	48 8d 05 98 01 00 00 	lea    0x198(%rip),%rax        # 79e <_Z6Revisev+0x1e2>
 606:	48 89 c1             	mov    %rax,%rcx
 609:	e8 00 00 00 00       	call   60e <_Z6Revisev+0x52>
 60e:	48 8d 85 ec 9b 00 00 	lea    0x9bec(%rbp),%rax
 615:	48 89 c2             	mov    %rax,%rdx
 618:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # 6a4 <_Z6Revisev+0xe8>
 61f:	48 89 c1             	mov    %rax,%rcx
 622:	e8 00 00 00 00       	call   627 <_Z6Revisev+0x6b>
 627:	48 8d 05 c0 01 00 00 	lea    0x1c0(%rip),%rax        # 7ee <_Z6Revisev+0x232>
 62e:	48 89 c1             	mov    %rax,%rcx
 631:	e8 00 00 00 00       	call   636 <_Z6Revisev+0x7a>
 636:	c7 85 08 9c 00 00 00 	movl   $0x0,0x9c08(%rbp)
 63d:	00 00 00 
 640:	e9 93 00 00 00       	jmp    6d8 <_Z6Revisev+0x11c>
 645:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
 649:	8b 95 08 9c 00 00    	mov    0x9c08(%rbp),%edx
 64f:	48 63 d2             	movslq %edx,%rdx
 652:	48 c1 e2 02          	shl    $0x2,%rdx
 656:	48 01 d0             	add    %rdx,%rax
 659:	48 89 c2             	mov    %rax,%rdx
 65c:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # 6e8 <_Z6Revisev+0x12c>
 663:	48 89 c1             	mov    %rax,%rcx
 666:	e8 00 00 00 00       	call   66b <_Z6Revisev+0xaf>
 66b:	8b 85 08 9c 00 00    	mov    0x9c08(%rbp),%eax
 671:	48 98                	cltq
 673:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
 677:	85 c0                	test   %eax,%eax
 679:	7e 16                	jle    691 <_Z6Revisev+0xd5>
 67b:	8b 85 08 9c 00 00    	mov    0x9c08(%rbp),%eax
 681:	48 98                	cltq
 683:	8b 54 85 a0          	mov    -0x60(%rbp,%rax,4),%edx
 687:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # 69d <_Z6Revisev+0xe1>
 68d:	39 c2                	cmp    %eax,%edx
 68f:	7e 40                	jle    6d1 <_Z6Revisev+0x115>
 691:	8b 85 08 9c 00 00    	mov    0x9c08(%rbp),%eax
 697:	48 98                	cltq
 699:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 6a0:	00 
 6a1:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
 6a5:	48 01 d0             	add    %rdx,%rax
 6a8:	8b 00                	mov    (%rax),%eax
 6aa:	89 c2                	mov    %eax,%edx
 6ac:	48 8d 05 7b 01 00 00 	lea    0x17b(%rip),%rax        # 82e <_Z6Revisev+0x272>
 6b3:	48 89 c1             	mov    %rax,%rcx
 6b6:	e8 00 00 00 00       	call   6bb <_Z6Revisev+0xff>
 6bb:	8b 85 ec 9b 00 00    	mov    0x9bec(%rbp),%eax
 6c1:	83 e8 01             	sub    $0x1,%eax
 6c4:	89 85 ec 9b 00 00    	mov    %eax,0x9bec(%rbp)
 6ca:	83 ad 08 9c 00 00 01 	subl   $0x1,0x9c08(%rbp)
 6d1:	83 85 08 9c 00 00 01 	addl   $0x1,0x9c08(%rbp)
 6d8:	8b 85 ec 9b 00 00    	mov    0x9bec(%rbp),%eax
 6de:	39 85 08 9c 00 00    	cmp    %eax,0x9c08(%rbp)
 6e4:	0f 8c 5b ff ff ff    	jl     645 <_Z6Revisev+0x89>
 6ea:	c7 85 04 9c 00 00 00 	movl   $0x0,0x9c04(%rbp)
 6f1:	00 00 00 
 6f4:	e9 8e 00 00 00       	jmp    787 <_Z6Revisev+0x1cb>
 6f9:	c7 85 00 9c 00 00 00 	movl   $0x0,0x9c00(%rbp)
 700:	00 00 00 
 703:	eb 6d                	jmp    772 <_Z6Revisev+0x1b6>
 705:	8b 85 04 9c 00 00    	mov    0x9c04(%rbp),%eax
 70b:	48 98                	cltq
 70d:	8b 54 85 a0          	mov    -0x60(%rbp,%rax,4),%edx
 711:	8b 85 00 9c 00 00    	mov    0x9c00(%rbp),%eax
 717:	48 98                	cltq
 719:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
 71d:	39 c2                	cmp    %eax,%edx
 71f:	7d 4a                	jge    76b <_Z6Revisev+0x1af>
 721:	8b 85 04 9c 00 00    	mov    0x9c04(%rbp),%eax
 727:	3b 85 00 9c 00 00    	cmp    0x9c00(%rbp),%eax
 72d:	74 3c                	je     76b <_Z6Revisev+0x1af>
 72f:	8b 85 04 9c 00 00    	mov    0x9c04(%rbp),%eax
 735:	48 98                	cltq
 737:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
 73b:	89 85 f0 9b 00 00    	mov    %eax,0x9bf0(%rbp)
 741:	8b 85 00 9c 00 00    	mov    0x9c00(%rbp),%eax
 747:	48 98                	cltq
 749:	8b 54 85 a0          	mov    -0x60(%rbp,%rax,4),%edx
 74d:	8b 85 04 9c 00 00    	mov    0x9c04(%rbp),%eax
 753:	48 98                	cltq
 755:	89 54 85 a0          	mov    %edx,-0x60(%rbp,%rax,4)
 759:	8b 85 00 9c 00 00    	mov    0x9c00(%rbp),%eax
 75f:	48 98                	cltq
 761:	8b 95 f0 9b 00 00    	mov    0x9bf0(%rbp),%edx
 767:	89 54 85 a0          	mov    %edx,-0x60(%rbp,%rax,4)
 76b:	83 85 00 9c 00 00 01 	addl   $0x1,0x9c00(%rbp)
 772:	8b 85 00 9c 00 00    	mov    0x9c00(%rbp),%eax
 778:	3b 85 04 9c 00 00    	cmp    0x9c04(%rbp),%eax
 77e:	7e 85                	jle    705 <_Z6Revisev+0x149>
 780:	83 85 04 9c 00 00 01 	addl   $0x1,0x9c04(%rbp)
 787:	8b 85 ec 9b 00 00    	mov    0x9bec(%rbp),%eax
 78d:	39 85 04 9c 00 00    	cmp    %eax,0x9c04(%rbp)
 793:	0f 8c 60 ff ff ff    	jl     6f9 <_Z6Revisev+0x13d>
 799:	48 8d 05 e8 01 00 00 	lea    0x1e8(%rip),%rax        # 988 <_Z6Deletev+0xc0>
 7a0:	48 89 c1             	mov    %rax,%rcx
 7a3:	e8 00 00 00 00       	call   7a8 <_Z6Revisev+0x1ec>
 7a8:	c7 85 fc 9b 00 00 00 	movl   $0x0,0x9bfc(%rbp)
 7af:	00 00 00 
 7b2:	eb 31                	jmp    7e5 <_Z6Revisev+0x229>
 7b4:	8b 85 fc 9b 00 00    	mov    0x9bfc(%rbp),%eax
 7ba:	48 98                	cltq
 7bc:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 7c3:	00 
 7c4:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
 7c8:	48 01 d0             	add    %rdx,%rax
 7cb:	8b 00                	mov    (%rax),%eax
 7cd:	89 c2                	mov    %eax,%edx
 7cf:	48 8d 05 09 02 00 00 	lea    0x209(%rip),%rax        # 9df <_Z6Deletev+0x117>
 7d6:	48 89 c1             	mov    %rax,%rcx
 7d9:	e8 00 00 00 00       	call   7de <_Z6Revisev+0x222>
 7de:	83 85 fc 9b 00 00 01 	addl   $0x1,0x9bfc(%rbp)
 7e5:	8b 85 ec 9b 00 00    	mov    0x9bec(%rbp),%eax
 7eb:	83 e8 01             	sub    $0x1,%eax
 7ee:	39 85 fc 9b 00 00    	cmp    %eax,0x9bfc(%rbp)
 7f4:	7c be                	jl     7b4 <_Z6Revisev+0x1f8>
 7f6:	8b 85 ec 9b 00 00    	mov    0x9bec(%rbp),%eax
 7fc:	48 98                	cltq
 7fe:	48 c1 e0 02          	shl    $0x2,%rax
 802:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
 806:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
 80a:	48 01 d0             	add    %rdx,%rax
 80d:	8b 00                	mov    (%rax),%eax
 80f:	89 c2                	mov    %eax,%edx
 811:	48 8d 05 0e 02 00 00 	lea    0x20e(%rip),%rax        # a26 <_Z6Deletev+0x15e>
 818:	48 89 c1             	mov    %rax,%rcx
 81b:	e8 00 00 00 00       	call   820 <_Z6Revisev+0x264>
 820:	c7 85 f8 9b 00 00 00 	movl   $0x0,0x9bf8(%rbp)
 827:	00 00 00 
 82a:	eb 7b                	jmp    8a7 <_Z6Revisev+0x2eb>
 82c:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 833 <_Z6Revisev+0x277>
 833:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # 842 <_Z6Revisev+0x286>
 83a:	c7 85 f4 9b 00 00 01 	movl   $0x1,0x9bf4(%rbp)
 841:	00 00 00 
 844:	eb 19                	jmp    85f <_Z6Revisev+0x2a3>
 846:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 855 <_Z6Revisev+0x299>
 84d:	48 8b 40 08          	mov    0x8(%rax),%rax
 851:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # 860 <_Z6Revisev+0x2a4>
 858:	83 85 f4 9b 00 00 01 	addl   $0x1,0x9bf4(%rbp)
 85f:	8b 85 0c 9c 00 00    	mov    0x9c0c(%rbp),%eax
 865:	48 98                	cltq
 867:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 86e:	00 
 86f:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
 873:	48 01 d0             	add    %rdx,%rax
 876:	8b 00                	mov    (%rax),%eax
 878:	39 85 f4 9b 00 00    	cmp    %eax,0x9bf4(%rbp)
 87e:	7c c6                	jl     846 <_Z6Revisev+0x28a>
 880:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # 88f <_Z6Revisev+0x2d3>
 887:	48 89 c2             	mov    %rax,%rdx
 88a:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # 916 <_Z6Deletev+0x4e>
 891:	48 89 c1             	mov    %rax,%rcx
 894:	e8 00 00 00 00       	call   899 <_Z6Revisev+0x2dd>
 899:	83 85 0c 9c 00 00 01 	addl   $0x1,0x9c0c(%rbp)
 8a0:	83 85 f8 9b 00 00 01 	addl   $0x1,0x9bf8(%rbp)
 8a7:	8b 85 ec 9b 00 00    	mov    0x9bec(%rbp),%eax
 8ad:	39 85 f8 9b 00 00    	cmp    %eax,0x9bf8(%rbp)
 8b3:	0f 8c 73 ff ff ff    	jl     82c <_Z6Revisev+0x270>
 8b9:	e8 53 f8 ff ff       	call   111 <_Z7Inquirev>
 8be:	90                   	nop
 8bf:	48 81 c4 90 9c 00 00 	add    $0x9c90,%rsp
 8c6:	5d                   	pop    %rbp
 8c7:	c3                   	ret

00000000000008c8 <_Z6Deletev>:
 8c8:	55                   	push   %rbp
 8c9:	48 89 e5             	mov    %rsp,%rbp
 8cc:	48 83 ec 30          	sub    $0x30,%rsp
 8d0:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
 8d7:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # 8ed <_Z6Deletev+0x25>
 8dd:	85 c0                	test   %eax,%eax
 8df:	75 23                	jne    904 <_Z6Deletev+0x3c>
 8e1:	48 8d 05 15 02 00 00 	lea    0x215(%rip),%rax        # afd <_Z11Delete_set1i+0x94>
 8e8:	48 89 c1             	mov    %rax,%rcx
 8eb:	e8 00 00 00 00       	call   8f0 <_Z6Deletev+0x28>
 8f0:	48 8d 05 88 00 00 00 	lea    0x88(%rip),%rax        # 97f <_Z6Deletev+0xb7>
 8f7:	48 89 c1             	mov    %rax,%rcx
 8fa:	e8 00 00 00 00       	call   8ff <_Z6Deletev+0x37>
 8ff:	e9 5e 01 00 00       	jmp    a62 <_Z6Deletev+0x19a>
 904:	e8 08 f8 ff ff       	call   111 <_Z7Inquirev>
 909:	48 8d 05 28 02 00 00 	lea    0x228(%rip),%rax        # b38 <_Z11Delete_set1i+0xcf>
 910:	48 89 c1             	mov    %rax,%rcx
 913:	e8 00 00 00 00       	call   918 <_Z6Deletev+0x50>
 918:	48 8d 05 50 02 00 00 	lea    0x250(%rip),%rax        # b6f <_Z11Delete_set1i+0x106>
 91f:	48 89 c1             	mov    %rax,%rcx
 922:	e8 00 00 00 00       	call   927 <_Z6Deletev+0x5f>
 927:	48 8d 05 78 02 00 00 	lea    0x278(%rip),%rax        # ba6 <_Z11Delete_set1i+0x13d>
 92e:	48 89 c1             	mov    %rax,%rcx
 931:	e8 00 00 00 00       	call   936 <_Z6Deletev+0x6e>
 936:	48 8d 05 99 02 00 00 	lea    0x299(%rip),%rax        # bd6 <_Z11Delete_set1i+0x16d>
 93d:	48 89 c1             	mov    %rax,%rcx
 940:	e8 00 00 00 00       	call   945 <_Z6Deletev+0x7d>
 945:	48 8d 05 b7 02 00 00 	lea    0x2b7(%rip),%rax        # c03 <_Z11Delete_set2iii+0xa>
 94c:	48 89 c1             	mov    %rax,%rcx
 94f:	e8 00 00 00 00       	call   954 <_Z6Deletev+0x8c>
 954:	48 8d 05 c0 02 00 00 	lea    0x2c0(%rip),%rax        # c1b <_Z11Delete_set2iii+0x22>
 95b:	48 89 c1             	mov    %rax,%rcx
 95e:	e8 00 00 00 00       	call   963 <_Z6Deletev+0x9b>
 963:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
 967:	48 89 c2             	mov    %rax,%rdx
 96a:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # 9f6 <_Z6Deletev+0x12e>
 971:	48 89 c1             	mov    %rax,%rcx
 974:	e8 00 00 00 00       	call   979 <_Z6Deletev+0xb1>
 979:	8b 45 f8             	mov    -0x8(%rbp),%eax
 97c:	83 f8 05             	cmp    $0x5,%eax
 97f:	0f 87 d5 00 00 00    	ja     a5a <_Z6Deletev+0x192>
 985:	89 c0                	mov    %eax,%eax
 987:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 98e:	00 
 98f:	48 8d 05 6c 03 00 00 	lea    0x36c(%rip),%rax        # d02 <_Z11Delete_set2iii+0x109>
 996:	8b 04 02             	mov    (%rdx,%rax,1),%eax
 999:	48 98                	cltq
 99b:	48 8d 15 6c 03 00 00 	lea    0x36c(%rip),%rdx        # d0e <_Z11Delete_set2iii+0x115>
 9a2:	48 01 d0             	add    %rdx,%rax
 9a5:	ff e0                	jmp    *%rax
 9a7:	48 8d 05 e0 02 00 00 	lea    0x2e0(%rip),%rax        # c8e <_Z11Delete_set2iii+0x95>
 9ae:	48 89 c1             	mov    %rax,%rcx
 9b1:	e8 00 00 00 00       	call   9b6 <_Z6Deletev+0xee>
 9b6:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
 9ba:	48 89 c2             	mov    %rax,%rdx
 9bd:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # a49 <_Z6Deletev+0x181>
 9c4:	48 89 c1             	mov    %rax,%rcx
 9c7:	e8 00 00 00 00       	call   9cc <_Z6Deletev+0x104>
 9cc:	48 8d 05 03 03 00 00 	lea    0x303(%rip),%rax        # cd6 <_Z11Delete_set2iii+0xdd>
 9d3:	48 89 c1             	mov    %rax,%rcx
 9d6:	e8 00 00 00 00       	call   9db <_Z6Deletev+0x113>
 9db:	8b 45 fc             	mov    -0x4(%rbp),%eax
 9de:	89 c1                	mov    %eax,%ecx
 9e0:	e8 84 00 00 00       	call   a69 <_Z11Delete_set1i>
 9e5:	48 8d 05 1b 03 00 00 	lea    0x31b(%rip),%rax        # d07 <_Z11Delete_set2iii+0x10e>
 9ec:	48 89 c1             	mov    %rax,%rcx
 9ef:	e8 00 00 00 00       	call   9f4 <_Z6Deletev+0x12c>
 9f4:	e8 18 f7 ff ff       	call   111 <_Z7Inquirev>
 9f9:	eb 67                	jmp    a62 <_Z6Deletev+0x19a>
 9fb:	48 8d 05 28 03 00 00 	lea    0x328(%rip),%rax        # d2a <_Z11Delete_set2iii+0x131>
 a02:	48 89 c1             	mov    %rax,%rcx
 a05:	e8 00 00 00 00       	call   a0a <_Z6Deletev+0x142>
 a0a:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
 a0e:	48 89 c2             	mov    %rax,%rdx
 a11:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # a9d <_Z11Delete_set1i+0x34>
 a18:	48 89 c1             	mov    %rax,%rcx
 a1b:	e8 00 00 00 00       	call   a20 <_Z6Deletev+0x158>
 a20:	48 8d 05 4e 03 00 00 	lea    0x34e(%rip),%rax        # d75 <_Z11Delete_set2iii+0x17c>
 a27:	48 89 c1             	mov    %rax,%rcx
 a2a:	e8 00 00 00 00       	call   a2f <_Z6Deletev+0x167>
 a2f:	8b 55 fc             	mov    -0x4(%rbp),%edx
 a32:	8b 45 fc             	mov    -0x4(%rbp),%eax
 a35:	41 89 d0             	mov    %edx,%r8d
 a38:	ba 00 00 00 00       	mov    $0x0,%edx
 a3d:	89 c1                	mov    %eax,%ecx
 a3f:	e8 b5 01 00 00       	call   bf9 <_Z11Delete_set2iii>
 a44:	48 8d 05 1b 03 00 00 	lea    0x31b(%rip),%rax        # d66 <_Z11Delete_set2iii+0x16d>
 a4b:	48 89 c1             	mov    %rax,%rcx
 a4e:	e8 00 00 00 00       	call   a53 <_Z6Deletev+0x18b>
 a53:	e8 b9 f6 ff ff       	call   111 <_Z7Inquirev>
 a58:	eb 08                	jmp    a62 <_Z6Deletev+0x19a>
 a5a:	e8 69 fe ff ff       	call   8c8 <_Z6Deletev>
 a5f:	eb 01                	jmp    a62 <_Z6Deletev+0x19a>
 a61:	90                   	nop
 a62:	90                   	nop
 a63:	48 83 c4 30          	add    $0x30,%rsp
 a67:	5d                   	pop    %rbp
 a68:	c3                   	ret

0000000000000a69 <_Z11Delete_set1i>:
 a69:	55                   	push   %rbp
 a6a:	48 89 e5             	mov    %rsp,%rbp
 a6d:	48 83 ec 40          	sub    $0x40,%rsp
 a71:	89 4d 10             	mov    %ecx,0x10(%rbp)
 a74:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 a7b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
 a82:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # a89 <_Z11Delete_set1i+0x20>
 a89:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 a8d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # a94 <_Z11Delete_set1i+0x2b>
 a94:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # aa3 <_Z11Delete_set1i+0x3a>
 a9b:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
 a9f:	48 89 c2             	mov    %rax,%rdx
 aa2:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # b2e <_Z11Delete_set1i+0xc5>
 aa9:	48 89 c1             	mov    %rax,%rcx
 aac:	e8 00 00 00 00       	call   ab1 <_Z11Delete_set1i+0x48>
 ab1:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
 ab8:	e9 ea 00 00 00       	jmp    ba7 <_Z11Delete_set1i+0x13e>
 abd:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # acc <_Z11Delete_set1i+0x63>
 ac4:	8b 10                	mov    (%rax),%edx
 ac6:	8b 45 e8             	mov    -0x18(%rbp),%eax
 ac9:	39 c2                	cmp    %eax,%edx
 acb:	0f 85 b5 00 00 00    	jne    b86 <_Z11Delete_set1i+0x11d>
 ad1:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
 ad5:	75 59                	jne    b30 <_Z11Delete_set1i+0xc7>
 ad7:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # ade <_Z11Delete_set1i+0x75>
 ade:	48 8b 40 08          	mov    0x8(%rax),%rax
 ae2:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # ae9 <_Z11Delete_set1i+0x80>
 ae9:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # af8 <_Z11Delete_set1i+0x8f>
 af0:	48 85 c0             	test   %rax,%rax
 af3:	74 0d                	je     b02 <_Z11Delete_set1i+0x99>
 af5:	ba 10 00 00 00       	mov    $0x10,%edx
 afa:	48 89 c1             	mov    %rax,%rcx
 afd:	e8 00 00 00 00       	call   b02 <_Z11Delete_set1i+0x99>
 b02:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b09 <_Z11Delete_set1i+0xa0>
 b09:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # b18 <_Z11Delete_set1i+0xaf>
 b10:	83 6d ec 01          	subl   $0x1,-0x14(%rbp)
 b14:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # b2a <_Z11Delete_set1i+0xc1>
 b1a:	83 e8 01             	sub    $0x1,%eax
 b1d:	89 05 10 00 00 00    	mov    %eax,0x10(%rip)        # b33 <_Z11Delete_set1i+0xca>
 b23:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # b32 <_Z11Delete_set1i+0xc9>
 b2a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 b2e:	eb 4d                	jmp    b7d <_Z11Delete_set1i+0x114>
 b30:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # b3f <_Z11Delete_set1i+0xd6>
 b37:	48 8b 50 08          	mov    0x8(%rax),%rdx
 b3b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 b3f:	48 89 50 08          	mov    %rdx,0x8(%rax)
 b43:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # b52 <_Z11Delete_set1i+0xe9>
 b4a:	48 85 c0             	test   %rax,%rax
 b4d:	74 0d                	je     b5c <_Z11Delete_set1i+0xf3>
 b4f:	ba 10 00 00 00       	mov    $0x10,%edx
 b54:	48 89 c1             	mov    %rax,%rcx
 b57:	e8 00 00 00 00       	call   b5c <_Z11Delete_set1i+0xf3>
 b5c:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 b60:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 b64:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # b73 <_Z11Delete_set1i+0x10a>
 b6b:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # b7a <_Z11Delete_set1i+0x111>
 b72:	48 8b 40 08          	mov    0x8(%rax),%rax
 b76:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # b85 <_Z11Delete_set1i+0x11c>
 b7d:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
 b84:	eb 1d                	jmp    ba3 <_Z11Delete_set1i+0x13a>
 b86:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # b95 <_Z11Delete_set1i+0x12c>
 b8d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 b91:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # ba0 <_Z11Delete_set1i+0x137>
 b98:	48 8b 40 08          	mov    0x8(%rax),%rax
 b9c:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # bab <_Z11Delete_set1i+0x142>
 ba3:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
 ba7:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # bbd <_Z11Delete_set1i+0x154>
 bad:	39 45 ec             	cmp    %eax,-0x14(%rbp)
 bb0:	0f 8e 07 ff ff ff    	jle    abd <_Z11Delete_set1i+0x54>
 bb6:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
 bba:	75 14                	jne    bd0 <_Z11Delete_set1i+0x167>
 bbc:	8b 45 e8             	mov    -0x18(%rbp),%eax
 bbf:	89 c2                	mov    %eax,%edx
 bc1:	48 8d 05 84 03 00 00 	lea    0x384(%rip),%rax        # f4c <_Z11Delete_set2iii+0x353>
 bc8:	48 89 c1             	mov    %rax,%rcx
 bcb:	e8 00 00 00 00       	call   bd0 <_Z11Delete_set1i+0x167>
 bd0:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # be6 <_Z11Delete_set1i+0x17d>
 bd6:	2b 45 fc             	sub    -0x4(%rbp),%eax
 bd9:	89 05 10 00 00 00    	mov    %eax,0x10(%rip)        # bef <_Z11Delete_set1i+0x186>
 bdf:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
 be3:	74 0e                	je     bf3 <_Z11Delete_set1i+0x18a>
 be5:	8b 45 10             	mov    0x10(%rbp),%eax
 be8:	83 e8 01             	sub    $0x1,%eax
 beb:	89 c1                	mov    %eax,%ecx
 bed:	e8 77 fe ff ff       	call   a69 <_Z11Delete_set1i>
 bf2:	90                   	nop
 bf3:	48 83 c4 40          	add    $0x40,%rsp
 bf7:	5d                   	pop    %rbp
 bf8:	c3                   	ret

0000000000000bf9 <_Z11Delete_set2iii>:
 bf9:	55                   	push   %rbp
 bfa:	48 89 e5             	mov    %rsp,%rbp
 bfd:	48 83 ec 30          	sub    $0x30,%rsp
 c01:	89 4d 10             	mov    %ecx,0x10(%rbp)
 c04:	89 55 18             	mov    %edx,0x18(%rbp)
 c07:	44 89 45 20          	mov    %r8d,0x20(%rbp)
 c0b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # c12 <_Z11Delete_set2iii+0x19>
 c12:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 c16:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # c1d <_Z11Delete_set2iii+0x24>
 c1d:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # c2c <_Z11Delete_set2iii+0x33>
 c24:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
 c28:	48 89 c2             	mov    %rax,%rdx
 c2b:	48 8d 05 85 00 00 00 	lea    0x85(%rip),%rax        # cb7 <_Z11Delete_set2iii+0xbe>
 c32:	48 89 c1             	mov    %rax,%rcx
 c35:	e8 00 00 00 00       	call   c3a <_Z11Delete_set2iii+0x41>
 c3a:	8b 45 f0             	mov    -0x10(%rbp),%eax
 c3d:	85 c0                	test   %eax,%eax
 c3f:	7e 0d                	jle    c4e <_Z11Delete_set2iii+0x55>
 c41:	8b 55 f0             	mov    -0x10(%rbp),%edx
 c44:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # c5a <_Z11Delete_set2iii+0x61>
 c4a:	39 c2                	cmp    %eax,%edx
 c4c:	7e 32                	jle    c80 <_Z11Delete_set2iii+0x87>
 c4e:	8b 45 f0             	mov    -0x10(%rbp),%eax
 c51:	89 c2                	mov    %eax,%edx
 c53:	48 8d 05 84 03 00 00 	lea    0x384(%rip),%rax        # fde <_Z11Delete_set2iii+0x3e5>
 c5a:	48 89 c1             	mov    %rax,%rcx
 c5d:	e8 00 00 00 00       	call   c62 <_Z11Delete_set2iii+0x69>
 c62:	8b 45 20             	mov    0x20(%rbp),%eax
 c65:	8d 50 ff             	lea    -0x1(%rax),%edx
 c68:	8b 45 10             	mov    0x10(%rbp),%eax
 c6b:	8d 48 ff             	lea    -0x1(%rax),%ecx
 c6e:	8b 45 18             	mov    0x18(%rbp),%eax
 c71:	41 89 d0             	mov    %edx,%r8d
 c74:	89 c2                	mov    %eax,%edx
 c76:	e8 7e ff ff ff       	call   bf9 <_Z11Delete_set2iii>
 c7b:	e9 bb 00 00 00       	jmp    d3b <_Z11Delete_set2iii+0x142>
 c80:	8b 45 10             	mov    0x10(%rbp),%eax
 c83:	3b 45 20             	cmp    0x20(%rbp),%eax
 c86:	74 09                	je     c91 <_Z11Delete_set2iii+0x98>
 c88:	8b 45 f0             	mov    -0x10(%rbp),%eax
 c8b:	2b 45 18             	sub    0x18(%rbp),%eax
 c8e:	89 45 f0             	mov    %eax,-0x10(%rbp)
 c91:	8b 45 f0             	mov    -0x10(%rbp),%eax
 c94:	83 f8 01             	cmp    $0x1,%eax
 c97:	75 14                	jne    cad <_Z11Delete_set2iii+0xb4>
 c99:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # ca0 <_Z11Delete_set2iii+0xa7>
 ca0:	48 8b 40 08          	mov    0x8(%rax),%rax
 ca4:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # cab <_Z11Delete_set2iii+0xb2>
 cab:	eb 46                	jmp    cf3 <_Z11Delete_set2iii+0xfa>
 cad:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
 cb4:	eb 10                	jmp    cc6 <_Z11Delete_set2iii+0xcd>
 cb6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 cba:	48 8b 40 08          	mov    0x8(%rax),%rax
 cbe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 cc2:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
 cc6:	8b 45 f0             	mov    -0x10(%rbp),%eax
 cc9:	83 e8 01             	sub    $0x1,%eax
 ccc:	39 45 f4             	cmp    %eax,-0xc(%rbp)
 ccf:	7c e5                	jl     cb6 <_Z11Delete_set2iii+0xbd>
 cd1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 cd5:	48 8b 40 08          	mov    0x8(%rax),%rax
 cd9:	48 89 05 08 00 00 00 	mov    %rax,0x8(%rip)        # ce8 <_Z11Delete_set2iii+0xef>
 ce0:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # cef <_Z11Delete_set2iii+0xf6>
 ce7:	48 8b 50 08          	mov    0x8(%rax),%rdx
 ceb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 cef:	48 89 50 08          	mov    %rdx,0x8(%rax)
 cf3:	48 8b 05 08 00 00 00 	mov    0x8(%rip),%rax        # d02 <_Z11Delete_set2iii+0x109>
 cfa:	48 85 c0             	test   %rax,%rax
 cfd:	74 0d                	je     d0c <_Z11Delete_set2iii+0x113>
 cff:	ba 10 00 00 00       	mov    $0x10,%edx
 d04:	48 89 c1             	mov    %rax,%rcx
 d07:	e8 00 00 00 00       	call   d0c <_Z11Delete_set2iii+0x113>
 d0c:	8b 05 10 00 00 00    	mov    0x10(%rip),%eax        # d22 <_Z11Delete_set2iii+0x129>
 d12:	83 e8 01             	sub    $0x1,%eax
 d15:	89 05 10 00 00 00    	mov    %eax,0x10(%rip)        # d2b <_Z11Delete_set2iii+0x132>
 d1b:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
 d1f:	74 1a                	je     d3b <_Z11Delete_set2iii+0x142>
 d21:	8b 45 18             	mov    0x18(%rbp),%eax
 d24:	8d 50 01             	lea    0x1(%rax),%edx
 d27:	8b 45 10             	mov    0x10(%rbp),%eax
 d2a:	83 e8 01             	sub    $0x1,%eax
 d2d:	8b 4d 20             	mov    0x20(%rbp),%ecx
 d30:	41 89 c8             	mov    %ecx,%r8d
 d33:	89 c1                	mov    %eax,%ecx
 d35:	e8 bf fe ff ff       	call   bf9 <_Z11Delete_set2iii>
 d3a:	90                   	nop
 d3b:	48 83 c4 30          	add    $0x30,%rsp
 d3f:	5d                   	pop    %rbp
 d40:	c3                   	ret
 d41:	90                   	nop
 d42:	90                   	nop
 d43:	90                   	nop
 d44:	90                   	nop
 d45:	90                   	nop
 d46:	90                   	nop
 d47:	90                   	nop
 d48:	90                   	nop
 d49:	90                   	nop
 d4a:	90                   	nop
 d4b:	90                   	nop
 d4c:	90                   	nop
 d4d:	90                   	nop
 d4e:	90                   	nop
 d4f:	90                   	nop
```
印出該目的檔的表頭
```
a.o:     file format pe-x86-64

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         00000d50  0000000000000000  0000000000000000  0000012c  2**4
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  1 .data         00000000  0000000000000000  0000000000000000  00000000  2**4
                  ALLOC, LOAD, DATA
  2 .bss          00000020  0000000000000000  0000000000000000  00000000  2**4
                  ALLOC
  3 .rdata        000003a0  0000000000000000  0000000000000000  00000e7c  2**4
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
  4 .xdata        00000060  0000000000000000  0000000000000000  0000121c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .pdata        00000060  0000000000000000  0000000000000000  0000127c  2**2
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
  6 .rdata$zzz    00000030  0000000000000000  0000000000000000  000012dc  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, DATA

```