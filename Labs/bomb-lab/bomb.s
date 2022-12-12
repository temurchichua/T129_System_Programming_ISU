
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 3f 00 00 	mov    0x3fdd(%rip),%rax        # 4fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 3f 00 00    	push   0x3fe2(%rip)        # 5008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 3f 00 00    	jmp    *0x3fe4(%rip)        # 5010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 e2 3f 00 00    	jmp    *0x3fe2(%rip)        # 5018 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

0000000000001040 <__errno_location@plt>:
    1040:	ff 25 da 3f 00 00    	jmp    *0x3fda(%rip)        # 5020 <__errno_location@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

0000000000001050 <strcpy@plt>:
    1050:	ff 25 d2 3f 00 00    	jmp    *0x3fd2(%rip)        # 5028 <strcpy@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

0000000000001060 <puts@plt>:
    1060:	ff 25 ca 3f 00 00    	jmp    *0x3fca(%rip)        # 5030 <puts@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <.plt>

0000000000001070 <write@plt>:
    1070:	ff 25 c2 3f 00 00    	jmp    *0x3fc2(%rip)        # 5038 <write@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <.plt>

0000000000001080 <strlen@plt>:
    1080:	ff 25 ba 3f 00 00    	jmp    *0x3fba(%rip)        # 5040 <strlen@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <.plt>

0000000000001090 <printf@plt>:
    1090:	ff 25 b2 3f 00 00    	jmp    *0x3fb2(%rip)        # 5048 <printf@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <.plt>

00000000000010a0 <alarm@plt>:
    10a0:	ff 25 aa 3f 00 00    	jmp    *0x3faa(%rip)        # 5050 <alarm@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <.plt>

00000000000010b0 <close@plt>:
    10b0:	ff 25 a2 3f 00 00    	jmp    *0x3fa2(%rip)        # 5058 <close@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <.plt>

00000000000010c0 <read@plt>:
    10c0:	ff 25 9a 3f 00 00    	jmp    *0x3f9a(%rip)        # 5060 <read@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <.plt>

00000000000010d0 <fgets@plt>:
    10d0:	ff 25 92 3f 00 00    	jmp    *0x3f92(%rip)        # 5068 <fgets@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <.plt>

00000000000010e0 <signal@plt>:
    10e0:	ff 25 8a 3f 00 00    	jmp    *0x3f8a(%rip)        # 5070 <signal@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	push   $0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <.plt>

00000000000010f0 <gethostbyname@plt>:
    10f0:	ff 25 82 3f 00 00    	jmp    *0x3f82(%rip)        # 5078 <gethostbyname@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	push   $0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <.plt>

0000000000001100 <fprintf@plt>:
    1100:	ff 25 7a 3f 00 00    	jmp    *0x3f7a(%rip)        # 5080 <fprintf@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	push   $0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <.plt>

0000000000001110 <strtol@plt>:
    1110:	ff 25 72 3f 00 00    	jmp    *0x3f72(%rip)        # 5088 <strtol@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	push   $0xe
    111b:	e9 00 ff ff ff       	jmp    1020 <.plt>

0000000000001120 <fflush@plt>:
    1120:	ff 25 6a 3f 00 00    	jmp    *0x3f6a(%rip)        # 5090 <fflush@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	push   $0xf
    112b:	e9 f0 fe ff ff       	jmp    1020 <.plt>

0000000000001130 <__isoc99_sscanf@plt>:
    1130:	ff 25 62 3f 00 00    	jmp    *0x3f62(%rip)        # 5098 <__isoc99_sscanf@GLIBC_2.7>
    1136:	68 10 00 00 00       	push   $0x10
    113b:	e9 e0 fe ff ff       	jmp    1020 <.plt>

0000000000001140 <memmove@plt>:
    1140:	ff 25 5a 3f 00 00    	jmp    *0x3f5a(%rip)        # 50a0 <memmove@GLIBC_2.2.5>
    1146:	68 11 00 00 00       	push   $0x11
    114b:	e9 d0 fe ff ff       	jmp    1020 <.plt>

0000000000001150 <fopen@plt>:
    1150:	ff 25 52 3f 00 00    	jmp    *0x3f52(%rip)        # 50a8 <fopen@GLIBC_2.2.5>
    1156:	68 12 00 00 00       	push   $0x12
    115b:	e9 c0 fe ff ff       	jmp    1020 <.plt>

0000000000001160 <sprintf@plt>:
    1160:	ff 25 4a 3f 00 00    	jmp    *0x3f4a(%rip)        # 50b0 <sprintf@GLIBC_2.2.5>
    1166:	68 13 00 00 00       	push   $0x13
    116b:	e9 b0 fe ff ff       	jmp    1020 <.plt>

0000000000001170 <exit@plt>:
    1170:	ff 25 42 3f 00 00    	jmp    *0x3f42(%rip)        # 50b8 <exit@GLIBC_2.2.5>
    1176:	68 14 00 00 00       	push   $0x14
    117b:	e9 a0 fe ff ff       	jmp    1020 <.plt>

0000000000001180 <connect@plt>:
    1180:	ff 25 3a 3f 00 00    	jmp    *0x3f3a(%rip)        # 50c0 <connect@GLIBC_2.2.5>
    1186:	68 15 00 00 00       	push   $0x15
    118b:	e9 90 fe ff ff       	jmp    1020 <.plt>

0000000000001190 <sleep@plt>:
    1190:	ff 25 32 3f 00 00    	jmp    *0x3f32(%rip)        # 50c8 <sleep@GLIBC_2.2.5>
    1196:	68 16 00 00 00       	push   $0x16
    119b:	e9 80 fe ff ff       	jmp    1020 <.plt>

00000000000011a0 <__ctype_b_loc@plt>:
    11a0:	ff 25 2a 3f 00 00    	jmp    *0x3f2a(%rip)        # 50d0 <__ctype_b_loc@GLIBC_2.3>
    11a6:	68 17 00 00 00       	push   $0x17
    11ab:	e9 70 fe ff ff       	jmp    1020 <.plt>

00000000000011b0 <socket@plt>:
    11b0:	ff 25 22 3f 00 00    	jmp    *0x3f22(%rip)        # 50d8 <socket@GLIBC_2.2.5>
    11b6:	68 18 00 00 00       	push   $0x18
    11bb:	e9 60 fe ff ff       	jmp    1020 <.plt>

Disassembly of section .plt.got:

00000000000011c0 <__cxa_finalize@plt>:
    11c0:	ff 25 32 3e 00 00    	jmp    *0x3e32(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11c6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000011d0 <_start>:
    11d0:	31 ed                	xor    %ebp,%ebp
    11d2:	49 89 d1             	mov    %rdx,%r9
    11d5:	5e                   	pop    %rsi
    11d6:	48 89 e2             	mov    %rsp,%rdx
    11d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11dd:	50                   	push   %rax
    11de:	54                   	push   %rsp
    11df:	4c 8d 05 9a 14 00 00 	lea    0x149a(%rip),%r8        # 2680 <__libc_csu_fini>
    11e6:	48 8d 0d 33 14 00 00 	lea    0x1433(%rip),%rcx        # 2620 <__libc_csu_init>
    11ed:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 12b5 <main>
    11f4:	ff 15 e6 3d 00 00    	call   *0x3de6(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    11fa:	f4                   	hlt    
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <deregister_tm_clones>:
    1200:	48 8d 3d 39 45 00 00 	lea    0x4539(%rip),%rdi        # 5740 <stdout@GLIBC_2.2.5>
    1207:	48 8d 05 32 45 00 00 	lea    0x4532(%rip),%rax        # 5740 <stdout@GLIBC_2.2.5>
    120e:	48 39 f8             	cmp    %rdi,%rax
    1211:	74 15                	je     1228 <deregister_tm_clones+0x28>
    1213:	48 8b 05 be 3d 00 00 	mov    0x3dbe(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    121a:	48 85 c0             	test   %rax,%rax
    121d:	74 09                	je     1228 <deregister_tm_clones+0x28>
    121f:	ff e0                	jmp    *%rax
    1221:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1228:	c3                   	ret    
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <register_tm_clones>:
    1230:	48 8d 3d 09 45 00 00 	lea    0x4509(%rip),%rdi        # 5740 <stdout@GLIBC_2.2.5>
    1237:	48 8d 35 02 45 00 00 	lea    0x4502(%rip),%rsi        # 5740 <stdout@GLIBC_2.2.5>
    123e:	48 29 fe             	sub    %rdi,%rsi
    1241:	48 89 f0             	mov    %rsi,%rax
    1244:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1248:	48 c1 f8 03          	sar    $0x3,%rax
    124c:	48 01 c6             	add    %rax,%rsi
    124f:	48 d1 fe             	sar    %rsi
    1252:	74 14                	je     1268 <register_tm_clones+0x38>
    1254:	48 8b 05 95 3d 00 00 	mov    0x3d95(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    125b:	48 85 c0             	test   %rax,%rax
    125e:	74 08                	je     1268 <register_tm_clones+0x38>
    1260:	ff e0                	jmp    *%rax
    1262:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1268:	c3                   	ret    
    1269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001270 <__do_global_dtors_aux>:
    1270:	80 3d f1 44 00 00 00 	cmpb   $0x0,0x44f1(%rip)        # 5768 <completed.0>
    1277:	75 2f                	jne    12a8 <__do_global_dtors_aux+0x38>
    1279:	55                   	push   %rbp
    127a:	48 83 3d 76 3d 00 00 	cmpq   $0x0,0x3d76(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1281:	00 
    1282:	48 89 e5             	mov    %rsp,%rbp
    1285:	74 0c                	je     1293 <__do_global_dtors_aux+0x23>
    1287:	48 8b 3d 5a 3e 00 00 	mov    0x3e5a(%rip),%rdi        # 50e8 <__dso_handle>
    128e:	e8 2d ff ff ff       	call   11c0 <__cxa_finalize@plt>
    1293:	e8 68 ff ff ff       	call   1200 <deregister_tm_clones>
    1298:	c6 05 c9 44 00 00 01 	movb   $0x1,0x44c9(%rip)        # 5768 <completed.0>
    129f:	5d                   	pop    %rbp
    12a0:	c3                   	ret    
    12a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12a8:	c3                   	ret    
    12a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012b0 <frame_dummy>:
    12b0:	e9 7b ff ff ff       	jmp    1230 <register_tm_clones>

00000000000012b5 <main>:                 ## %edi = argc, %rsi = argv
    12b5:	53                   	push   %rbx                     # push rbx
    12b6:	83 ff 01             	cmp    $0x1,%edi                # compare argc with 1
    12b9:	0f 84 f8 00 00 00    	je     13b7 <main+0x102>        # if argc == 1, jump to 13b7
    12bf:	48 89 f3             	mov    %rsi,%rbx                # rbx = argv
    12c2:	83 ff 02             	cmp    $0x2,%edi                # compare argc with 2
    12c5:	0f 85 1c 01 00 00    	jne    13e7 <main+0x132>        # if argc != 2, jump to 13e7
    12cb:	48 8b 7e 08          	mov    0x8(%rsi),%rdi           # rdi = argv[1] (filename)
    12cf:	48 8d 35 d3 21 00 00 	lea    0x21d3(%rip),%rsi        # rsi = address of "r"
    12d6:	e8 75 fe ff ff       	call   1150 <fopen@plt>         # call fopen
    12db:	48 89 05 8e 44 00 00 	mov    %rax,0x448e(%rip)        # at address 0x448e(%rip), store the return value of fopen
    12e2:	48 85 c0             	test   %rax,%rax            # if return value of fopen is 0
    12e5:	0f 84 df 00 00 00    	je     13ca <main+0x115>    # jump to 13ca
    12eb:	e8 70 05 00 00       	call   1860 <initialize_bomb>   # call initialize_bomb
    12f0:	48 8d 3d 91 1d 00 00 	lea    0x1d91(%rip),%rdi
    12f7:	e8 64 fd ff ff       	call   1060 <puts@plt>
    12fc:	48 8d 3d c5 1d 00 00 	lea    0x1dc5(%rip),%rdi
    1303:	e8 58 fd ff ff       	call   1060 <puts@plt>
    1308:	e8 5e 06 00 00       	call   196b <read_line>
    130d:	48 89 c7             	mov    %rax,%rdi
    1310:	e8 f0 00 00 00       	call   1405 <phase_1>
    1315:	e8 88 07 00 00       	call   1aa2 <phase_defused>
    131a:	48 8d 3d d7 1d 00 00 	lea    0x1dd7(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    1321:	e8 3a fd ff ff       	call   1060 <puts@plt>
    1326:	e8 40 06 00 00       	call   196b <read_line>
    132b:	48 89 c7             	mov    %rax,%rdi
    132e:	e8 f2 00 00 00       	call   1425 <phase_2>
    1333:	e8 6a 07 00 00       	call   1aa2 <phase_defused>
    1338:	48 8d 3d fc 1c 00 00 	lea    0x1cfc(%rip),%rdi        # 303b <_IO_stdin_used+0x3b>
    133f:	e8 1c fd ff ff       	call   1060 <puts@plt>
    1344:	e8 22 06 00 00       	call   196b <read_line>
    1349:	48 89 c7             	mov    %rax,%rdi
    134c:	e8 19 01 00 00       	call   146a <phase_3>
    1351:	e8 4c 07 00 00       	call   1aa2 <phase_defused>
    1356:	48 8d 3d fc 1c 00 00 	lea    0x1cfc(%rip),%rdi        # 3059 <_IO_stdin_used+0x59>
    135d:	e8 fe fc ff ff       	call   1060 <puts@plt>
    1362:	e8 04 06 00 00       	call   196b <read_line>
    1367:	48 89 c7             	mov    %rax,%rdi
    136a:	e8 cc 01 00 00       	call   153b <phase_4>
    136f:	e8 2e 07 00 00       	call   1aa2 <phase_defused>
    1374:	48 8d 3d ad 1d 00 00 	lea    0x1dad(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    137b:	e8 e0 fc ff ff       	call   1060 <puts@plt>
    1380:	e8 e6 05 00 00       	call   196b <read_line>
    1385:	48 89 c7             	mov    %rax,%rdi
    1388:	e8 03 02 00 00       	call   1590 <phase_5>
    138d:	e8 10 07 00 00       	call   1aa2 <phase_defused>
    1392:	48 8d 3d cf 1c 00 00 	lea    0x1ccf(%rip),%rdi        # 3068 <_IO_stdin_used+0x68>
    1399:	e8 c2 fc ff ff       	call   1060 <puts@plt>
    139e:	e8 c8 05 00 00       	call   196b <read_line>
    13a3:	48 89 c7             	mov    %rax,%rdi
    13a6:	e8 2d 02 00 00       	call   15d8 <phase_6>
    13ab:	e8 f2 06 00 00       	call   1aa2 <phase_defused>
    13b0:	b8 00 00 00 00       	mov    $0x0,%eax
    13b5:	5b                   	pop    %rbx
    13b6:	c3                   	ret    
    13b7:	48 8b 05 92 43 00 00 	mov    0x4392(%rip),%rax        # 5750 <stdin@GLIBC_2.2.5>
    13be:	48 89 05 ab 43 00 00 	mov    %rax,0x43ab(%rip)        # 5770 <infile>
    13c5:	e9 21 ff ff ff       	jmp    12eb <main+0x36>
    13ca:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    13ce:	48 8b 33             	mov    (%rbx),%rsi
    13d1:	48 8d 3d 2c 1c 00 00 	lea    0x1c2c(%rip),%rdi        # 3004 <_IO_stdin_used+0x4>
    13d8:	e8 b3 fc ff ff       	call   1090 <printf@plt>
    13dd:	bf 08 00 00 00       	mov    $0x8,%edi
    13e2:	e8 89 fd ff ff       	call   1170 <exit@plt>
    13e7:	48 8b 36             	mov    (%rsi),%rsi
    13ea:	48 8d 3d 30 1c 00 00 	lea    0x1c30(%rip),%rdi        # 3021 <_IO_stdin_used+0x21>
    13f1:	b8 00 00 00 00       	mov    $0x0,%eax
    13f6:	e8 95 fc ff ff       	call   1090 <printf@plt>
    13fb:	bf 08 00 00 00       	mov    $0x8,%edi
    1400:	e8 6b fd ff ff       	call   1170 <exit@plt>

0000000000001405 <phase_1>:
    1405:	48 83 ec 08          	sub    $0x8,%rsp                # move stack pointer down 8 bytes
    1409:	48 8d 35 40 1d 00 00 	lea    0x1d40(%rip),%rsi        # 3140 <_IO_stdin_used+0x140> # load address of string into rsi
    1410:	e8 ef 03 00 00       	call   1804 <strings_not_equal> # call strings_not_equal
    1415:	85 c0                	test   %eax,%eax                # test eax for 0
    1417:	75 05                	jne    141e <phase_1+0x19>      # if eax is not 0, jump to 141e > explode_bomb
    1419:	48 83 c4 08          	add    $0x8,%rsp                # move stack pointer up 8 bytes
    141d:	c3                   	ret                             # return
    141e:	e8 e1 04 00 00       	call   1904 <explode_bomb>      # call explode_bomb
    1423:	eb f4                	jmp    1419 <phase_1+0x14>    # jump to 1419 > return

0000000000001425 <phase_2>:                                  # phase_2
    1425:	55                   	push   %rbp             # push rbp onto stack
    1426:	53                   	push   %rbx             # push rbx onto stack
    1427:	48 83 ec 28          	sub    $0x28,%rsp       # move stack pointer down 40 bytes 40/8 = 5 | could be 5 elements
    142b:	48 89 e6             	mov    %rsp,%rsi        # move stack pointer into rsi
    142e:	e8 f7 04 00 00       	call   192a <read_six_numbers>  # call read_six_numbers
    1433:	83 3c 24 01          	cmpl   $0x1,(%rsp)          # compare 1 with first element on stack
    1437:	75 0a                	jne    1443 <phase_2+0x1e>   # if not equal, jump to 1443 > explode_bomb
    1439:	48 89 e3             	mov    %rsp,%rbx            # move stack pointer into rbx / rbx stores our numbers
    143c:	48 8d 6c 24 14       	lea    0x14(%rsp),%rbp      # load address of 5th element on stack into rbp (0x14 = 20 bytes) int is 4 byte
    1441:	eb 10                	jmp    1453 <phase_2+0x2e>  # jump to 1453 > phase_2+0x2e
    1443:	e8 bc 04 00 00       	call   1904 <explode_bomb>
    1448:	eb ef                	jmp    1439 <phase_2+0x14>
    144a:	48 83 c3 04          	add    $0x4,%rbx            # add 4 to rbx (move rbx to next element)
    144e:	48 39 eb             	cmp    %rbp,%rbx            # compare rbp with first element on stack (check if it's the last element I guess)
    1451:	74 10                	je     1463 <phase_2+0x3e>  # if equal, jump to 1463 > phase_2+0x3e
    1453:	8b 03                	mov    (%rbx),%eax          # load value of rbx into eax
    1455:	01 c0                	add    %eax,%eax            # double eax ( eax = 1 + 1 = 2)
    1457:	39 43 04             	cmp    %eax,0x4(%rbx)       # compare eax with second element of rbx  (second element should be 2)
    145a:	74 ee                	je     144a <phase_2+0x25>  # if equal, jump to 144a > phase_2+0x25
    145c:	e8 a3 04 00 00       	call   1904 <explode_bomb>
    1461:	eb e7                	jmp    144a <phase_2+0x25>
    1463:	48 83 c4 28          	add    $0x28,%rsp           # move stack pointer up 40 bytes (5 elements)
    1467:	5b                   	pop    %rbx                 # pop rbx from stack
    1468:	5d                   	pop    %rbp                 # pop rbp from stack
    1469:	c3                   	ret                         # return

000000000000146a <phase_3>:                                     # phase_3
    146a:	48 83 ec 18          	sub    $0x18,%rsp           # move stack pointer down 24 bytes (3 elements)
    146e:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx       # load address of second element on stack into rcx
    1473:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx       # load address of third element on stack into rdx
    1478:	48 8d 35 90 1e 00 00 	lea    0x1e90(%rip),%rsi    # 3269 <_IO_stdin_used+0x269> # load address of string into rsi
    147f:	b8 00 00 00 00       	mov    $0x0,%eax            # load 0 into eax
    1484:	e8 a7 fc ff ff       	call   1130 <__isoc99_sscanf@plt>   # call sscanf
    1489:	83 f8 01             	cmp    $0x1,%eax            # compare eax with 1 ( eax is number of elements read)
    148c:	7e 1b                	jle    14a9 <phase_3+0x3f>    # if less or equal, jump to 14a9 > explode_bomb
    148e:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)       # compare 7 with third element on stack
    1493:	77 55                	ja     14ea <phase_3+0x80>  # if above, jump to 14ea > explode_bomb
    1495:	8b 44 24 0c          	mov    0xc(%rsp),%eax    # load third element on stack into eax (2)
    1499:	48 8d 15 00 1d 00 00 	lea    0x1d00(%rip),%rdx        # 31a0 <_IO_stdin_used+0x1a0>   # load address of string into rdx
    14a0:	48 63 04 82          	movslq (%rdx,%rax,4),%rax   # load value of rdx + 4*eax into eax (2*4 = 8)
    14a4:	48 01 d0             	add    %rdx,%rax        # add rdx to rax (rax = rdx + rax) (rax = 8)
    14a7:	ff e0                	jmp    *%rax
    14a9:	e8 56 04 00 00       	call   1904 <explode_bomb>      # call explode_bomb
    14ae:	eb de                	jmp    148e <phase_3+0x24>
    14b0:	b8 8a 03 00 00       	mov    $0x38a,%eax
    14b5:	39 44 24 08          	cmp    %eax,0x8(%rsp)
    14b9:	75 42                	jne    14fd <phase_3+0x93>
    14bb:	48 83 c4 18          	add    $0x18,%rsp
    14bf:	c3                   	ret    
    14c0:	b8 a1 02 00 00       	mov    $0x2a1,%eax        # load 673 into eax
    14c5:	eb ee                	jmp    14b5 <phase_3+0x4b>
    14c7:	b8 a5 02 00 00       	mov    $0x2a5,%eax
    14cc:	eb e7                	jmp    14b5 <phase_3+0x4b>
    14ce:	b8 92 01 00 00       	mov    $0x192,%eax
    14d3:	eb e0                	jmp    14b5 <phase_3+0x4b>
    14d5:	b8 f5 01 00 00       	mov    $0x1f5,%eax
    14da:	eb d9                	jmp    14b5 <phase_3+0x4b>
    14dc:	b8 e8 00 00 00       	mov    $0xe8,%eax
    14e1:	eb d2                	jmp    14b5 <phase_3+0x4b>
    14e3:	b8 0c 01 00 00       	mov    $0x10c,%eax
    14e8:	eb cb                	jmp    14b5 <phase_3+0x4b>
    14ea:	e8 15 04 00 00       	call   1904 <explode_bomb>
    14ef:	b8 00 00 00 00       	mov    $0x0,%eax
    14f4:	eb bf                	jmp    14b5 <phase_3+0x4b>
    14f6:	b8 b5 01 00 00       	mov    $0x1b5,%eax
    14fb:	eb b8                	jmp    14b5 <phase_3+0x4b>
    14fd:	e8 02 04 00 00       	call   1904 <explode_bomb>
    1502:	eb b7                	jmp    14bb <phase_3+0x51>

0000000000001504 <func4>:               # func4(rdi = 7, rsi = 2)
    1504:	b8 00 00 00 00       	mov    $0x0,%eax    # load 0 into eax
    1509:	85 ff                	test   %edi,%edi    # test rdi with rdi (rdi = 2)
    150b:	7e 2d                	jle    153a <func4+0x36>    # if less or equal, jump to 153a > return 0
    150d:	41 54                	push   %r12                 # push r12 onto stack
    150f:	55                   	push   %rbp                 # push rbp onto stack
    1510:	53                   	push   %rbx                 # push rbx onto stack
    1511:	89 fb                	mov    %edi,%ebx            # load rdi into rbx (rbx = 7)
    1513:	89 f5                	mov    %esi,%ebp            # load rsi into rbp (rbp = 2)
    1515:	89 f0                	mov    %esi,%eax            # load rsi into eax (eax = 2)
    1517:	83 ff 01             	cmp    $0x1,%edi            # compare 1 with rdi (rdi = 7)
    151a:	74 19                	je     1535 <func4+0x31>    # if equal, jump to 1535 > return 2
    151c:	8d 7f ff             	lea    -0x1(%rdi),%edi      # load rdi - 1 into rdi (rdi = 6)
    151f:	e8 e0 ff ff ff       	call   1504 <func4>         # call func4 (rdi = 6, rsi = 2)
    1524:	44 8d 24 28          	lea    (%rax,%rbp,1),%r12d # load rax + rbp into r12d (r12d = 4)
    1528:	8d 7b fe             	lea    -0x2(%rbx),%edi      # load rbx - 2 into rdi (rdi = 5)
    152b:	89 ee                	mov    %ebp,%esi            # load rbp into rsi (rsi = 2)
    152d:	e8 d2 ff ff ff       	call   1504 <func4>         # call func4 (rdi = 5, rsi = 2)
    1532:	44 01 e0             	add    %r12d,%eax           # add r12d to eax (eax = 4 + eax) (eax = 6)
    1535:	5b                   	pop    %rbx             # pop rbx off stack
    1536:	5d                   	pop    %rbp             # pop rbp off stack
    1537:	41 5c                	pop    %r12             # pop r12 off stack
    1539:	c3                   	ret                     # return
    153a:	c3                   	ret                     # return

000000000000153b <phase_4>:
    153b:	48 83 ec 18          	sub    $0x18,%rsp               # allocate 24 bytes on stack
    153f:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx           # load address of third element on stack into rcx
    1544:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx           # load address of second element on stack into rdx
    1549:	48 8d 35 bf 1d 00 00 	lea    0x1dbf(%rip),%rsi        # 330f <array.0+0x14f>
    1550:	b8 00 00 00 00       	mov    $0x0,%eax
    1555:	e8 d6 fb ff ff       	call   1130 <__isoc99_sscanf@plt>
    155a:	83 f8 02             	cmp    $0x2,%eax                # compare eax with 2
    155d:	75 0c                	jne    156b <phase_4+0x30>      # if not equal, jump to 156b > explode_bomb
    155f:	8b 44 24 0c          	mov    0xc(%rsp),%eax           # load third element (2) on stack into eax
    1563:	83 e8 02             	sub    $0x2,%eax                # subtract 2 from eax (eax = eax - 2)
    1566:	83 f8 02             	cmp    $0x2,%eax                # compare eax with 2
    1569:	76 05                	jbe    1570 <phase_4+0x35>   # if eax <= 2, jump to 1570
    156b:	e8 94 03 00 00       	call   1904 <explode_bomb>      # otherwise, explode bomb
    1570:	8b 74 24 0c          	mov    0xc(%rsp),%esi           # load third element (2) on stack into esi
    1574:	bf 07 00 00 00       	mov    $0x7,%edi                # load 7 into edi
    1579:	e8 86 ff ff ff       	call   1504 <func4>
    157e:	39 44 24 08          	cmp    %eax,0x8(%rsp)           # compare eax with second element on stack
    1582:	75 05                	jne    1589 <phase_4+0x4e>    # if not equal, jump to 1589 > explode_bomb
    1584:	48 83 c4 18          	add    $0x18,%rsp
    1588:	c3                   	ret    
    1589:	e8 76 03 00 00       	call   1904 <explode_bomb>
    158e:	eb f4                	jmp    1584 <phase_4+0x49>

0000000000001590 <phase_5>:                                        # phase_5
    1590:	53                   	push   %rbx                    # push rbx onto stack
    1591:	48 89 fb             	mov    %rdi,%rbx               # rbx = rdi (my_string)
    1594:	e8 4e 02 00 00       	call   17e7 <string_length>    # call string_length (rdi = 0x400a0c)
    1599:	83 f8 06             	cmp    $0x6,%eax               # string length should be 6
    159c:	75 2c                	jne    15ca <phase_5+0x3a>     # if not equal, jump to 15ca > explode_bomb
    159e:	48 89 d8             	mov    %rbx,%rax               # rax = rbx (my_string)
    15a1:	48 8d 7b 06          	lea    0x6(%rbx),%rdi          # rdi = void
    15a5:	b9 00 00 00 00       	mov    $0x0,%ecx               # ecx = 0
    15aa:	48 8d 35 0f 1c 00 00 	lea    0x1c0f(%rip),%rsi       # 31c0 <array.0>    # load address of array.0 into rsi
    15b1:	0f b6 10             	movzbl (%rax),%edx             # edx = my_string[i]                         < loop start
    15b4:	83 e2 0f             	and    $0xf,%edx               # edx = edx & 0xf first 4 bits
    15b7:	03 0c 96             	add    (%rsi,%rdx,4),%ecx      # ecx = ecx + array.0[my_string[i] & 0xf]
    15ba:	48 83 c0 01          	add    $0x1,%rax               # move to next character in my_string        i ++
    15be:	48 39 f8             	cmp    %rdi,%rax               # compare rax with rdi (my_string + 6)       | while not end of string
    15c1:	75 ee                	jne    15b1 <phase_5+0x21>     # if not equal, jump to 15b1                 > loop
    15c3:	83 f9 1b             	cmp    $0x1b,%ecx              # compare ecx with 27
    15c6:	75 09                	jne    15d1 <phase_5+0x41>     # if not equal, jump to 15d1 > explode_bomb
    15c8:	5b                   	pop    %rbx
    15c9:	c3                   	ret    
    15ca:	e8 35 03 00 00       	call   1904 <explode_bomb>
    15cf:	eb cd                	jmp    159e <phase_5+0xe>
    15d1:	e8 2e 03 00 00       	call   1904 <explode_bomb>
    15d6:	eb f0                	jmp    15c8 <phase_5+0x38>

my_string[5] = ""
my_string[0] & 0xf = 0x4 # 4
my_string[1] & 0xf = 0x4 # 4
my_string[2] & 0xf = 0x0 # 0
my_string[3] & 0xf = 0x0 # 0
my_string[4] & 0xf = 0x0 # 0
my_string[5] & 0xf = 0xc # l

10 + 10 + 2 + 2 + 2 + 1 = 27


00000000000015d8 <phase_6>:
    15d8:	41 56                	push   %r14                         # push r14 onto stack
    15da:	41 55                	push   %r13                         # push r13 onto stack
    15dc:	41 54                	push   %r12                         # push r12 onto stack
    15de:	55                   	push   %rbp                         # push rbp onto stack
    15df:	53                   	push   %rbx                         # push rbx onto stack
    15e0:	48 83 ec 50          	sub    $0x50,%rsp                   # allocate 80 bytes on stack for local variables
    15e4:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13              # r13 = &local_30
    15e9:	4c 89 ee             	mov    %r13,%rsi                    # rsi = &local_30 (my_string)
    15ec:	e8 39 03 00 00       	call   192a <read_six_numbers>      # call read_six_numbers
    15f1:	41 be 01 00 00 00    	mov    $0x1,%r14d                   # r14d = 1
    15f7:	4d 89 ec             	mov    %r13,%r12                    # r12 = &local_30 (my_string)
    15fa:	eb 28                	jmp    1624 <phase_6+0x4c>          # jump to 1624 > loop start
    15fc:	e8 03 03 00 00       	call   1904 <explode_bomb>
    1601:	eb 30                	jmp    1633 <phase_6+0x5b>
    1603:	48 83 c3 01          	add    $0x1,%rbx                    # rbx = rbx + 1
    1607:	83 fb 05             	cmp    $0x5,%ebx                    # compare rbx with 5 (loop counter)         | while rbx < 5
    160a:	7f 10                	jg     161c <phase_6+0x44>          # if greater, jump to 161c > loop end
    160c:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax           # eax = my_string[0+rbx] (my_string[r14d])
    1610:	39 45 00             	cmp    %eax,0x0(%rbp)               # compare eax with local_30 (my_string[0])
    1613:	75 ee                	jne    1603 <phase_6+0x2b>          # if not equal, jump to 1603
    1615:	e8 ea 02 00 00       	call   1904 <explode_bomb>          # if equal > explode_bomb
    161a:	eb e7                	jmp    1603 <phase_6+0x2b>
    161c:	49 83 c6 01          	add    $0x1,%r14                    # r14 = r14 + 1
    1620:	49 83 c5 04          	add    $0x4,%r13                    # r13 = r13 + 4   next number in my_string
    1624:	4c 89 ed             	mov    %r13,%rbp                    # rbp = &local_30 (my_string) < loop start
    1627:	41 8b 45 00          	mov    0x0(%r13),%eax               # eax = my_string[i]
    162b:	83 e8 01             	sub    $0x1,%eax                    # eax = eax - 1
    162e:	83 f8 05             	cmp    $0x5,%eax                    # compare eax with 5
    1631:	77 c9                	ja     15fc <phase_6+0x24>          # if above, jump to 15fc > explode_bomb
    1633:	41 83 fe 05          	cmp    $0x5,%r14d                   # compare r14d with 5
    1637:	7f 05                	jg     163e <phase_6+0x66>          # if above, jump to 163e > end
    1639:	4c 89 f3             	mov    %r14,%rbx                    # rbx = r14
    163c:	eb ce                	jmp    160c <phase_6+0x34>          # jump to 160c > loop
    163e:	be 00 00 00 00       	mov    $0x0,%esi                    # rsi = 0
    1643:	8b 4c b4 30          	mov    0x30(%rsp,%rsi,4),%ecx       # ecx = local_30[rsi]
    1647:	b8 01 00 00 00       	mov    $0x1,%eax                    # eax = 1
    164c:	48 8d 15 9d 3c 00 00 	lea    0x3c9d(%rip),%rdx        # 52f0 <node1>  # rdx = &node1
    1653:	83 f9 01             	cmp    $0x1,%ecx                    # compare ecx with 1
    1656:	7e 0b                	jle    1663 <phase_6+0x8b>          # if less or equal, jump to 1663
    1658:	48 8b 52 08          	mov    0x8(%rdx),%rdx               # rdx = rdx + 8
    165c:	83 c0 01             	add    $0x1,%eax                    # eax = eax + 1
    165f:	39 c8                	cmp    %ecx,%eax                    # compare ecx with eax
    1661:	75 f5                	jne    1658 <phase_6+0x80>          # if not equal, jump to 1658
    1663:	48 89 14 f4          	mov    %rdx,(%rsp,%rsi,8)           # rsp[0] = rdx
    1667:	48 83 c6 01          	add    $0x1,%rsi                    # rsi = rsi + 1
    166b:	48 83 fe 06          	cmp    $0x6,%rsi                    # compare rsi with 6
    166f:	75 d2                	jne    1643 <phase_6+0x6b>          # if not equal, jump to 1643
    1671:	48 8b 1c 24          	mov    (%rsp),%rbx                  # rbx = rsp[0]
    1675:	48 8b 44 24 08       	mov    0x8(%rsp),%rax               # rax = rsp[1]
    167a:	48 89 43 08          	mov    %rax,0x8(%rbx)               # rbx[1] = rax
    167e:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx              # rdx = rsp[2]
    1683:	48 89 50 08          	mov    %rdx,0x8(%rax)               # rax[1] = rdx
    1687:	48 8b 44 24 18       	mov    0x18(%rsp),%rax              # rax = rsp[3]
    168c:	48 89 42 08          	mov    %rax,0x8(%rdx)               # rdx[1] = rax
    1690:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx              # rdx = rsp[4]
    1695:	48 89 50 08          	mov    %rdx,0x8(%rax)               # rax[1] = rdx
    1699:	48 8b 44 24 28       	mov    0x28(%rsp),%rax              # rax = rsp[5]
    169e:	48 89 42 08          	mov    %rax,0x8(%rdx)               # rdx[1] = rax
    16a2:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)               # rax[1] = 0
    16a9:	00 
    16aa:	bd 05 00 00 00       	mov    $0x5,%ebp                    # rbp = 5
    16af:	eb 09                	jmp    16ba <phase_6+0xe2>          # jump to 16ba
    16b1:	48 8b 5b 08          	mov    0x8(%rbx),%rbx               # rbx = rbx[1]
    16b5:	83 ed 01             	sub    $0x1,%ebp                    # rbp = rbp - 1
    16b8:	74 11                	je     16cb <phase_6+0xf3>        # if zero, jump to 16cb
    16ba:	48 8b 43 08          	mov    0x8(%rbx),%rax               # rax = rbx[1]
    16be:	8b 00                	mov    (%rax),%eax                  # eax = rax[0]
    16c0:	39 03                	cmp    %eax,(%rbx)                  # compare eax with rbx[0]
    16c2:	7d ed                	jge    16b1 <phase_6+0xd9>          # if greater or equal, jump to 16b1
    16c4:	e8 3b 02 00 00       	call   1904 <explode_bomb>          # explode_bomb
    16c9:	eb e6                	jmp    16b1 <phase_6+0xd9>          # jump to 16b1
    16cb:	48 83 c4 50          	add    $0x50,%rsp            # rsp = rsp + 50
    16cf:	5b                   	pop    %rbx             # rbx = stack
    16d0:	5d                   	pop    %rbp             # rbp = stack
    16d1:	41 5c                	pop    %r12             # r12 = stack
    16d3:	41 5d                	pop    %r13             # r13 = stack
    16d5:	41 5e                	pop    %r14             # r14 = stack
    16d7:	c3                   	ret                     # return

00000000000016d8 <fun7>:
    16d8:	48 85 ff             	test   %rdi,%rdi
    16db:	74 32                	je     170f <fun7+0x37>
    16dd:	48 83 ec 08          	sub    $0x8,%rsp
    16e1:	8b 17                	mov    (%rdi),%edx
    16e3:	39 f2                	cmp    %esi,%edx
    16e5:	7f 0c                	jg     16f3 <fun7+0x1b>
    16e7:	b8 00 00 00 00       	mov    $0x0,%eax
    16ec:	75 12                	jne    1700 <fun7+0x28>
    16ee:	48 83 c4 08          	add    $0x8,%rsp
    16f2:	c3                   	ret    
    16f3:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    16f7:	e8 dc ff ff ff       	call   16d8 <fun7>
    16fc:	01 c0                	add    %eax,%eax
    16fe:	eb ee                	jmp    16ee <fun7+0x16>
    1700:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1704:	e8 cf ff ff ff       	call   16d8 <fun7>
    1709:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    170d:	eb df                	jmp    16ee <fun7+0x16>
    170f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1714:	c3                   	ret    

0000000000001715 <secret_phase>:
    1715:	53                   	push   %rbx
    1716:	e8 50 02 00 00       	call   196b <read_line>
    171b:	48 89 c7             	mov    %rax,%rdi
    171e:	ba 0a 00 00 00       	mov    $0xa,%edx
    1723:	be 00 00 00 00       	mov    $0x0,%esi
    1728:	e8 e3 f9 ff ff       	call   1110 <strtol@plt>
    172d:	48 89 c3             	mov    %rax,%rbx
    1730:	8d 40 ff             	lea    -0x1(%rax),%eax
    1733:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1738:	77 26                	ja     1760 <secret_phase+0x4b>
    173a:	89 de                	mov    %ebx,%esi
    173c:	48 8d 3d cd 3a 00 00 	lea    0x3acd(%rip),%rdi        # 5210 <n1>
    1743:	e8 90 ff ff ff       	call   16d8 <fun7>
    1748:	83 f8 07             	cmp    $0x7,%eax
    174b:	75 1a                	jne    1767 <secret_phase+0x52>
    174d:	48 8d 3d 24 1a 00 00 	lea    0x1a24(%rip),%rdi        # 3178 <_IO_stdin_used+0x178>
    1754:	e8 07 f9 ff ff       	call   1060 <puts@plt>
    1759:	e8 44 03 00 00       	call   1aa2 <phase_defused>
    175e:	5b                   	pop    %rbx
    175f:	c3                   	ret    
    1760:	e8 9f 01 00 00       	call   1904 <explode_bomb>
    1765:	eb d3                	jmp    173a <secret_phase+0x25>
    1767:	e8 98 01 00 00       	call   1904 <explode_bomb>
    176c:	eb df                	jmp    174d <secret_phase+0x38>

000000000000176e <sig_handler>:
    176e:	48 83 ec 08          	sub    $0x8,%rsp
    1772:	48 8d 3d 87 1a 00 00 	lea    0x1a87(%rip),%rdi        # 3200 <array.0+0x40>
    1779:	e8 e2 f8 ff ff       	call   1060 <puts@plt>
    177e:	bf 03 00 00 00       	mov    $0x3,%edi
    1783:	e8 08 fa ff ff       	call   1190 <sleep@plt>
    1788:	48 8d 3d 33 1b 00 00 	lea    0x1b33(%rip),%rdi        # 32c2 <array.0+0x102>
    178f:	b8 00 00 00 00       	mov    $0x0,%eax
    1794:	e8 f7 f8 ff ff       	call   1090 <printf@plt>
    1799:	48 8b 3d a0 3f 00 00 	mov    0x3fa0(%rip),%rdi        # 5740 <stdout@GLIBC_2.2.5>
    17a0:	e8 7b f9 ff ff       	call   1120 <fflush@plt>
    17a5:	bf 01 00 00 00       	mov    $0x1,%edi
    17aa:	e8 e1 f9 ff ff       	call   1190 <sleep@plt>
    17af:	48 8d 3d 14 1b 00 00 	lea    0x1b14(%rip),%rdi        # 32ca <array.0+0x10a>
    17b6:	e8 a5 f8 ff ff       	call   1060 <puts@plt>
    17bb:	bf 10 00 00 00       	mov    $0x10,%edi
    17c0:	e8 ab f9 ff ff       	call   1170 <exit@plt>

00000000000017c5 <invalid_phase>:
    17c5:	48 83 ec 08          	sub    $0x8,%rsp
    17c9:	48 89 fe             	mov    %rdi,%rsi
    17cc:	48 8d 3d ff 1a 00 00 	lea    0x1aff(%rip),%rdi        # 32d2 <array.0+0x112>
    17d3:	b8 00 00 00 00       	mov    $0x0,%eax
    17d8:	e8 b3 f8 ff ff       	call   1090 <printf@plt>
    17dd:	bf 08 00 00 00       	mov    $0x8,%edi
    17e2:	e8 89 f9 ff ff       	call   1170 <exit@plt>

00000000000017e7 <string_length>:                                       // string_length(char *s)
    17e7:	80 3f 00             	cmpb   $0x0,(%rdi)                  // if (*s == '\0')
    17ea:	74 12                	je     17fe <string_length+0x17>    //      goto 17fe
    17ec:	b8 00 00 00 00       	mov    $0x0,%eax                    // eax = 0
    17f1:	48 83 c7 01          	add    $0x1,%rdi                    // s++
    17f5:	83 c0 01             	add    $0x1,%eax                    // eax++
    17f8:	80 3f 00             	cmpb   $0x0,(%rdi)                  // if (*s == '\0')
    17fb:	75 f4                	jne    17f1 <string_length+0xa>     //      goto loop
    17fd:	c3                   	ret                                 // return eax (length)
    17fe:	b8 00 00 00 00       	mov    $0x0,%eax                    // eax = 0
    1803:	c3                   	ret                                 // return eax (length)

0000000000001804 <strings_not_equal>:                               // strings_not_equal(char *s1, char *s2)
    1804:	41 54                	push   %r12                     // push r12
    1806:	55                   	push   %rbp                     // push rbp
    1807:	53                   	push   %rbx                     // push rbx
    1808:	48 89 fb             	mov    %rdi,%rbx                // rbx = s1
    180b:	48 89 f5             	mov    %rsi,%rbp                // rbp = s2
    180e:	e8 d4 ff ff ff       	call   17e7 <string_length>     // call string_length(s1) -> eax
    1813:	41 89 c4             	mov    %eax,%r12d               // r12d = eax (length of s1)
    1816:	48 89 ef             	mov    %rbp,%rdi                // rdi = s2 (string to compare)
    1819:	e8 c9 ff ff ff       	call   17e7 <string_length>     // call string_length(s2) -> eax
    181e:	89 c2                	mov    %eax,%edx                // edx = eax (length of s2)
    1820:	b8 01 00 00 00       	mov    $0x1,%eax                // eax = 1
    1825:	41 39 d4             	cmp    %edx,%r12d               // if (length of s1 != length of s2)
    1828:	75 31                	jne    185b <strings_not_equal+0x57>    //      goto 185b   # explode bomb
    182a:	0f b6 13             	movzbl (%rbx),%edx              // edx = *rbx (first character of s1)
    182d:	84 d2                	test   %dl,%dl                  // if (first character of s1 == '\0')
    182f:	74 1e                	je     184f <strings_not_equal+0x4b>  // goto 184f   # return 0
    1831:	b8 00 00 00 00       	mov    $0x0,%eax                // eax = 0
    1836:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)     // if (%dl != *(rbp + eax)) # compare characters
    183a:	75 1a                	jne    1856 <strings_not_equal+0x52>   // goto 1856   # explode bomb
    183c:	48 83 c0 01          	add    $0x1,%rax            // eax++
    1840:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx   // edx = *(rbx + eax)
    1844:	84 d2                	test   %dl,%dl            // if (first character of s1 == '\0')
    1846:	75 ee                	jne    1836 <strings_not_equal+0x32>    // goto 1836 # loop until the end of string
    1848:	b8 00 00 00 00       	mov    $0x0,%eax            // eax = 0
    184d:	eb 0c                	jmp    185b <strings_not_equal+0x57>   // goto 185b # return 0
    184f:	b8 00 00 00 00       	mov    $0x0,%eax              // eax = 0
    1854:	eb 05                	jmp    185b <strings_not_equal+0x57>    // goto 185b # return 0
    1856:	b8 01 00 00 00       	mov    $0x1,%eax            // eax = 1
    185b:	5b                   	pop    %rbx                 // pop rbx
    185c:	5d                   	pop    %rbp                 // pop rbp
    185d:	41 5c                	pop    %r12                 // pop r12
    185f:	c3                   	ret                         // return eax

0000000000001860 <initialize_bomb>:
    1860:	48 83 ec 08          	sub    $0x8,%rsp
    1864:	48 8d 35 03 ff ff ff 	lea    -0xfd(%rip),%rsi        # 176e <sig_handler>
    186b:	bf 02 00 00 00       	mov    $0x2,%edi
    1870:	e8 6b f8 ff ff       	call   10e0 <signal@plt>
    1875:	48 83 c4 08          	add    $0x8,%rsp
    1879:	c3                   	ret    

000000000000187a <initialize_bomb_solve>:
    187a:	c3                   	ret    

000000000000187b <blank_line>:
    187b:	55                   	push   %rbp
    187c:	53                   	push   %rbx
    187d:	48 83 ec 08          	sub    $0x8,%rsp
    1881:	48 89 fd             	mov    %rdi,%rbp
    1884:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1888:	84 db                	test   %bl,%bl
    188a:	74 1e                	je     18aa <blank_line+0x2f>
    188c:	e8 0f f9 ff ff       	call   11a0 <__ctype_b_loc@plt>
    1891:	48 83 c5 01          	add    $0x1,%rbp
    1895:	48 0f be db          	movsbq %bl,%rbx
    1899:	48 8b 00             	mov    (%rax),%rax
    189c:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    18a1:	75 e1                	jne    1884 <blank_line+0x9>
    18a3:	b8 00 00 00 00       	mov    $0x0,%eax
    18a8:	eb 05                	jmp    18af <blank_line+0x34>
    18aa:	b8 01 00 00 00       	mov    $0x1,%eax
    18af:	48 83 c4 08          	add    $0x8,%rsp
    18b3:	5b                   	pop    %rbx
    18b4:	5d                   	pop    %rbp
    18b5:	c3                   	ret    

00000000000018b6 <skip>:
    18b6:	55                   	push   %rbp
    18b7:	53                   	push   %rbx
    18b8:	48 83 ec 08          	sub    $0x8,%rsp
    18bc:	48 8d 2d 1d 3f 00 00 	lea    0x3f1d(%rip),%rbp        # 57e0 <input_strings>
    18c3:	48 63 05 06 3f 00 00 	movslq 0x3f06(%rip),%rax        # 57d0 <num_input_strings>
    18ca:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    18ce:	48 c1 e7 04          	shl    $0x4,%rdi
    18d2:	48 01 ef             	add    %rbp,%rdi
    18d5:	48 8b 15 94 3e 00 00 	mov    0x3e94(%rip),%rdx        # 5770 <infile>
    18dc:	be 50 00 00 00       	mov    $0x50,%esi
    18e1:	e8 ea f7 ff ff       	call   10d0 <fgets@plt>
    18e6:	48 89 c3             	mov    %rax,%rbx
    18e9:	48 85 c0             	test   %rax,%rax
    18ec:	74 0c                	je     18fa <skip+0x44>
    18ee:	48 89 c7             	mov    %rax,%rdi
    18f1:	e8 85 ff ff ff       	call   187b <blank_line>
    18f6:	85 c0                	test   %eax,%eax
    18f8:	75 c9                	jne    18c3 <skip+0xd>
    18fa:	48 89 d8             	mov    %rbx,%rax
    18fd:	48 83 c4 08          	add    $0x8,%rsp
    1901:	5b                   	pop    %rbx
    1902:	5d                   	pop    %rbp
    1903:	c3                   	ret    

0000000000001904 <explode_bomb>:
    1904:	48 83 ec 08          	sub    $0x8,%rsp
    1908:	48 8d 3d d4 19 00 00 	lea    0x19d4(%rip),%rdi        # 32e3 <array.0+0x123>
    190f:	e8 4c f7 ff ff       	call   1060 <puts@plt>
    1914:	48 8d 3d d1 19 00 00 	lea    0x19d1(%rip),%rdi        # 32ec <array.0+0x12c>
    191b:	e8 40 f7 ff ff       	call   1060 <puts@plt>
    1920:	bf 08 00 00 00       	mov    $0x8,%edi
    1925:	e8 46 f8 ff ff       	call   1170 <exit@plt>

000000000000192a <read_six_numbers>:
    192a:	48 83 ec 08          	sub    $0x8,%rsp        // allocate 8 bytes on stack
    192e:	48 89 f2             	mov    %rsi,%rdx    // move rsi to rdx
    1931:	48 8d 4e 04          	lea    0x4(%rsi),%rcx   // rcx = rsi + 4 // 4 is the size of an int (address)
    1935:	48 8d 46 14          	lea    0x14(%rsi),%rax  // rax = rsi + 20 // 20 is the size of 5 ints (address)
    1939:	50                   	push   %rax         // push rax to stack
    193a:	48 8d 46 10          	lea    0x10(%rsi),%rax  // rax = rsi + 16 // 16 is the size of 4 ints (address)
    193e:	50                   	push   %rax             // push rax to stack
    193f:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9    // r9 = rsi + 12 // 12 is the size of 3 ints (address)
    1943:	4c 8d 46 08          	lea    0x8(%rsi),%r8    // r8 = rsi + 8 // 8 is the size of 2 ints (address)
    1947:	48 8d 35 b5 19 00 00 	lea    0x19b5(%rip),%rsi // rsi = 0x19b5 // 0x19b5 is the address of the string "Enter six numbers: "
    194e:	b8 00 00 00 00       	mov    $0x0,%eax
    1953:	e8 d8 f7 ff ff       	call   1130 <__isoc99_sscanf@plt>
    1958:	48 83 c4 10          	add    $0x10,%rsp
    195c:	83 f8 05             	cmp    $0x5,%eax
    195f:	7e 05                	jle    1966 <read_six_numbers+0x3c>
    1961:	48 83 c4 08          	add    $0x8,%rsp
    1965:	c3                   	ret    
    1966:	e8 99 ff ff ff       	call   1904 <explode_bomb>

000000000000196b <read_line>:
    196b:	55                   	push   %rbp
    196c:	53                   	push   %rbx
    196d:	48 83 ec 08          	sub    $0x8,%rsp
    1971:	b8 00 00 00 00       	mov    $0x0,%eax
    1976:	e8 3b ff ff ff       	call   18b6 <skip>
    197b:	48 85 c0             	test   %rax,%rax
    197e:	74 60                	je     19e0 <read_line+0x75>
    1980:	8b 2d 4a 3e 00 00    	mov    0x3e4a(%rip),%ebp        # 57d0 <num_input_strings>
    1986:	48 63 c5             	movslq %ebp,%rax
    1989:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    198d:	48 c1 e3 04          	shl    $0x4,%rbx
    1991:	48 8d 05 48 3e 00 00 	lea    0x3e48(%rip),%rax        # 57e0 <input_strings>
    1998:	48 01 c3             	add    %rax,%rbx
    199b:	48 89 df             	mov    %rbx,%rdi
    199e:	e8 dd f6 ff ff       	call   1080 <strlen@plt>
    19a3:	83 f8 4e             	cmp    $0x4e,%eax
    19a6:	0f 8f ac 00 00 00    	jg     1a58 <read_line+0xed>
    19ac:	83 e8 01             	sub    $0x1,%eax
    19af:	48 98                	cltq   
    19b1:	48 63 d5             	movslq %ebp,%rdx
    19b4:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
    19b8:	48 89 d1             	mov    %rdx,%rcx
    19bb:	48 c1 e1 04          	shl    $0x4,%rcx
    19bf:	48 8d 15 1a 3e 00 00 	lea    0x3e1a(%rip),%rdx        # 57e0 <input_strings>
    19c6:	48 01 ca             	add    %rcx,%rdx
    19c9:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    19cd:	83 c5 01             	add    $0x1,%ebp
    19d0:	89 2d fa 3d 00 00    	mov    %ebp,0x3dfa(%rip)        # 57d0 <num_input_strings>
    19d6:	48 89 d8             	mov    %rbx,%rax
    19d9:	48 83 c4 08          	add    $0x8,%rsp
    19dd:	5b                   	pop    %rbx
    19de:	5d                   	pop    %rbp
    19df:	c3                   	ret    
    19e0:	48 8b 05 69 3d 00 00 	mov    0x3d69(%rip),%rax        # 5750 <stdin@GLIBC_2.2.5>
    19e7:	48 39 05 82 3d 00 00 	cmp    %rax,0x3d82(%rip)        # 5770 <infile>
    19ee:	74 1b                	je     1a0b <read_line+0xa0>
    19f0:	48 8d 3d 3c 19 00 00 	lea    0x193c(%rip),%rdi        # 3333 <array.0+0x173>
    19f7:	e8 34 f6 ff ff       	call   1030 <getenv@plt>
    19fc:	48 85 c0             	test   %rax,%rax
    19ff:	74 20                	je     1a21 <read_line+0xb6>
    1a01:	bf 00 00 00 00       	mov    $0x0,%edi
    1a06:	e8 65 f7 ff ff       	call   1170 <exit@plt>
    1a0b:	48 8d 3d 03 19 00 00 	lea    0x1903(%rip),%rdi        # 3315 <array.0+0x155>
    1a12:	e8 49 f6 ff ff       	call   1060 <puts@plt>
    1a17:	bf 08 00 00 00        	mov    $0x8,%edi
    1a1c:	e8 4f f7 ff ff       	call   1170 <exit@plt>
    1a21:	48 8b 05 28 3d 00 00 	mov    0x3d28(%rip),%rax        # 5750 <stdin@GLIBC_2.2.5>
    1a28:	48 89 05 41 3d 00 00 	mov    %rax,0x3d41(%rip)        # 5770 <infile>
    1a2f:	b8 00 00 00 00       	mov    $0x0,%eax
    1a34:	e8 7d fe ff ff       	call   18b6 <skip>
    1a39:	48 85 c0             	test   %rax,%rax
    1a3c:	0f 85 3e ff ff ff    	jne    1980 <read_line+0x15>
    1a42:	48 8d 3d cc 18 00 00 	lea    0x18cc(%rip),%rdi        # 3315 <array.0+0x155>
    1a49:	e8 12 f6 ff ff       	call   1060 <puts@plt>
    1a4e:	bf 00 00 00 00       	mov    $0x0,%edi
    1a53:	e8 18 f7 ff ff       	call   1170 <exit@plt>
    1a58:	48 8d 3d df 18 00 00 	lea    0x18df(%rip),%rdi        # 333e <array.0+0x17e>
    1a5f:	e8 fc f5 ff ff       	call   1060 <puts@plt>
    1a64:	8b 05 66 3d 00 00    	mov    0x3d66(%rip),%eax        # 57d0 <num_input_strings>
    1a6a:	8d 50 01             	lea    0x1(%rax),%edx
    1a6d:	89 15 5d 3d 00 00    	mov    %edx,0x3d5d(%rip)        # 57d0 <num_input_strings>
    1a73:	48 98                	cltq   
    1a75:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1a79:	48 8d 15 60 3d 00 00 	lea    0x3d60(%rip),%rdx        # 57e0 <input_strings>
    1a80:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1a87:	75 6e 63 
    1a8a:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1a91:	2a 2a 00 
    1a94:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1a98:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1a9d:	e8 62 fe ff ff       	call   1904 <explode_bomb>

0000000000001aa2 <phase_defused>:
    1aa2:	83 3d 27 3d 00 00 06 	cmpl   $0x6,0x3d27(%rip)        # 57d0 <num_input_strings>
    1aa9:	74 01                	je     1aac <phase_defused+0xa>
    1aab:	c3                   	ret    
    1aac:	48 83 ec 68          	sub    $0x68,%rsp
    1ab0:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1ab5:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1aba:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1abf:	48 8d 35 93 18 00 00 	lea    0x1893(%rip),%rsi        # 3359 <array.0+0x199>
    1ac6:	48 8d 3d 03 3e 00 00 	lea    0x3e03(%rip),%rdi        # 58d0 <input_strings+0xf0>
    1acd:	b8 00 00 00 00       	mov    $0x0,%eax
    1ad2:	e8 59 f6 ff ff       	call   1130 <__isoc99_sscanf@plt>
    1ad7:	83 f8 03             	cmp    $0x3,%eax
    1ada:	74 11                	je     1aed <phase_defused+0x4b>
    1adc:	48 8d 3d b5 17 00 00 	lea    0x17b5(%rip),%rdi        # 3298 <array.0+0xd8>
    1ae3:	e8 78 f5 ff ff       	call   1060 <puts@plt>
    1ae8:	48 83 c4 68          	add    $0x68,%rsp
    1aec:	c3                   	ret    
    1aed:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1af2:	48 8d 35 69 18 00 00 	lea    0x1869(%rip),%rsi        # 3362 <array.0+0x1a2>
    1af9:	e8 06 fd ff ff       	call   1804 <strings_not_equal>
    1afe:	85 c0                	test   %eax,%eax
    1b00:	75 da                	jne    1adc <phase_defused+0x3a>
    1b02:	48 8d 3d 2f 17 00 00 	lea    0x172f(%rip),%rdi        # 3238 <array.0+0x78>
    1b09:	e8 52 f5 ff ff       	call   1060 <puts@plt>
    1b0e:	48 8d 3d 4b 17 00 00 	lea    0x174b(%rip),%rdi        # 3260 <array.0+0xa0>
    1b15:	e8 46 f5 ff ff       	call   1060 <puts@plt>
    1b1a:	b8 00 00 00 00       	mov    $0x0,%eax
    1b1f:	e8 f1 fb ff ff       	call   1715 <secret_phase>
    1b24:	eb b6                	jmp    1adc <phase_defused+0x3a>

0000000000001b26 <sigalrm_handler>:
    1b26:	48 83 ec 08          	sub    $0x8,%rsp
    1b2a:	ba 00 00 00 00       	mov    $0x0,%edx
    1b2f:	48 8d 35 52 18 00 00 	lea    0x1852(%rip),%rsi        # 3388 <array.0+0x1c8>
    1b36:	48 8b 3d 23 3c 00 00 	mov    0x3c23(%rip),%rdi        # 5760 <stderr@GLIBC_2.2.5>
    1b3d:	b8 00 00 00 00       	mov    $0x0,%eax
    1b42:	e8 b9 f5 ff ff       	call   1100 <fprintf@plt>
    1b47:	bf 01 00 00 00       	mov    $0x1,%edi
    1b4c:	e8 1f f6 ff ff       	call   1170 <exit@plt>

0000000000001b51 <rio_readlineb>:
    1b51:	41 56                	push   %r14
    1b53:	41 55                	push   %r13
    1b55:	41 54                	push   %r12
    1b57:	55                   	push   %rbp
    1b58:	53                   	push   %rbx
    1b59:	49 89 f4             	mov    %rsi,%r12
    1b5c:	48 83 fa 01          	cmp    $0x1,%rdx
    1b60:	0f 86 92 00 00 00    	jbe    1bf8 <rio_readlineb+0xa7>
    1b66:	48 89 fb             	mov    %rdi,%rbx
    1b69:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1b6e:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1b74:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1b78:	eb 56                	jmp    1bd0 <rio_readlineb+0x7f>
    1b7a:	e8 c1 f4 ff ff       	call   1040 <__errno_location@plt>
    1b7f:	83 38 04             	cmpl   $0x4,(%rax)
    1b82:	75 55                	jne    1bd9 <rio_readlineb+0x88>
    1b84:	ba 00 20 00 00       	mov    $0x2000,%edx
    1b89:	48 89 ee             	mov    %rbp,%rsi
    1b8c:	8b 3b                	mov    (%rbx),%edi
    1b8e:	e8 2d f5 ff ff       	call   10c0 <read@plt>
    1b93:	89 c2                	mov    %eax,%edx
    1b95:	89 43 04             	mov    %eax,0x4(%rbx)
    1b98:	85 c0                	test   %eax,%eax
    1b9a:	78 de                	js     1b7a <rio_readlineb+0x29>
    1b9c:	85 c0                	test   %eax,%eax
    1b9e:	74 42                	je     1be2 <rio_readlineb+0x91>
    1ba0:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1ba4:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1ba8:	0f b6 08             	movzbl (%rax),%ecx
    1bab:	48 83 c0 01          	add    $0x1,%rax
    1baf:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1bb3:	83 ea 01             	sub    $0x1,%edx
    1bb6:	89 53 04             	mov    %edx,0x4(%rbx)
    1bb9:	49 83 c4 01          	add    $0x1,%r12
    1bbd:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1bc2:	80 f9 0a             	cmp    $0xa,%cl
    1bc5:	74 3c                	je     1c03 <rio_readlineb+0xb2>
    1bc7:	41 83 c5 01          	add    $0x1,%r13d
    1bcb:	4d 39 f4             	cmp    %r14,%r12
    1bce:	74 30                	je     1c00 <rio_readlineb+0xaf>
    1bd0:	8b 53 04             	mov    0x4(%rbx),%edx
    1bd3:	85 d2                	test   %edx,%edx
    1bd5:	7e ad                	jle    1b84 <rio_readlineb+0x33>
    1bd7:	eb cb                	jmp    1ba4 <rio_readlineb+0x53>
    1bd9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1be0:	eb 05                	jmp    1be7 <rio_readlineb+0x96>
    1be2:	b8 00 00 00 00       	mov    $0x0,%eax
    1be7:	85 c0                	test   %eax,%eax
    1be9:	75 29                	jne    1c14 <rio_readlineb+0xc3>
    1beb:	b8 00 00 00 00       	mov    $0x0,%eax
    1bf0:	41 83 fd 01          	cmp    $0x1,%r13d
    1bf4:	75 0d                	jne    1c03 <rio_readlineb+0xb2>
    1bf6:	eb 13                	jmp    1c0b <rio_readlineb+0xba>
    1bf8:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1bfe:	eb 03                	jmp    1c03 <rio_readlineb+0xb2>
    1c00:	4d 89 f4             	mov    %r14,%r12
    1c03:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1c08:	49 63 c5             	movslq %r13d,%rax
    1c0b:	5b                   	pop    %rbx
    1c0c:	5d                   	pop    %rbp
    1c0d:	41 5c                	pop    %r12
    1c0f:	41 5d                	pop    %r13
    1c11:	41 5e                	pop    %r14
    1c13:	c3                   	ret    
    1c14:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1c1b:	eb ee                	jmp    1c0b <rio_readlineb+0xba>

0000000000001c1d <submitr>:
    1c1d:	41 57                	push   %r15
    1c1f:	41 56                	push   %r14
    1c21:	41 55                	push   %r13
    1c23:	41 54                	push   %r12
    1c25:	55                   	push   %rbp
    1c26:	53                   	push   %rbx
    1c27:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
    1c2e:	48 89 fd             	mov    %rdi,%rbp
    1c31:	41 89 f5             	mov    %esi,%r13d
    1c34:	48 89 14 24          	mov    %rdx,(%rsp)
    1c38:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    1c3d:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    1c42:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    1c47:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
    1c4e:	00 
    1c4f:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
    1c56:	00 
    1c57:	c7 84 24 3c 20 00 00 	movl   $0x0,0x203c(%rsp)
    1c5e:	00 00 00 00 
    1c62:	ba 00 00 00 00       	mov    $0x0,%edx
    1c67:	be 01 00 00 00       	mov    $0x1,%esi
    1c6c:	bf 02 00 00 00       	mov    $0x2,%edi
    1c71:	e8 3a f5 ff ff       	call   11b0 <socket@plt>
    1c76:	85 c0                	test   %eax,%eax
    1c78:	0f 88 13 01 00 00    	js     1d91 <submitr+0x174>
    1c7e:	41 89 c4             	mov    %eax,%r12d
    1c81:	48 89 ef             	mov    %rbp,%rdi
    1c84:	e8 67 f4 ff ff       	call   10f0 <gethostbyname@plt>
    1c89:	48 85 c0             	test   %rax,%rax
    1c8c:	0f 84 4f 01 00 00    	je     1de1 <submitr+0x1c4>
    1c92:	48 8d ac 24 50 a0 00 	lea    0xa050(%rsp),%rbp
    1c99:	00 
    1c9a:	48 c7 84 24 50 a0 00 	movq   $0x0,0xa050(%rsp)
    1ca1:	00 00 00 00 00 
    1ca6:	48 c7 84 24 58 a0 00 	movq   $0x0,0xa058(%rsp)
    1cad:	00 00 00 00 00 
    1cb2:	66 c7 84 24 50 a0 00 	movw   $0x2,0xa050(%rsp)
    1cb9:	00 02 00 
    1cbc:	48 63 50 14          	movslq 0x14(%rax),%rdx
    1cc0:	48 8b 40 18          	mov    0x18(%rax),%rax
    1cc4:	48 8d bc 24 54 a0 00 	lea    0xa054(%rsp),%rdi
    1ccb:	00 
    1ccc:	48 8b 30             	mov    (%rax),%rsi
    1ccf:	e8 6c f4 ff ff       	call   1140 <memmove@plt>
    1cd4:	66 41 c1 c5 08       	rol    $0x8,%r13w
    1cd9:	66 44 89 ac 24 52 a0 	mov    %r13w,0xa052(%rsp)
    1ce0:	00 00 
    1ce2:	ba 10 00 00 00       	mov    $0x10,%edx
    1ce7:	48 89 ee             	mov    %rbp,%rsi
    1cea:	44 89 e7             	mov    %r12d,%edi
    1ced:	e8 8e f4 ff ff       	call   1180 <connect@plt>
    1cf2:	85 c0                	test   %eax,%eax
    1cf4:	0f 88 52 01 00 00    	js     1e4c <submitr+0x22f>
    1cfa:	48 89 df             	mov    %rbx,%rdi
    1cfd:	e8 7e f3 ff ff       	call   1080 <strlen@plt>
    1d02:	48 89 c5             	mov    %rax,%rbp
    1d05:	48 8b 3c 24          	mov    (%rsp),%rdi
    1d09:	e8 72 f3 ff ff       	call   1080 <strlen@plt>
    1d0e:	49 89 c6             	mov    %rax,%r14
    1d11:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1d16:	e8 65 f3 ff ff       	call   1080 <strlen@plt>
    1d1b:	49 89 c5             	mov    %rax,%r13
    1d1e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1d23:	e8 58 f3 ff ff       	call   1080 <strlen@plt>
    1d28:	48 89 c2             	mov    %rax,%rdx
    1d2b:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    1d32:	00 
    1d33:	48 01 d0             	add    %rdx,%rax
    1d36:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    1d3b:	48 01 d0             	add    %rdx,%rax
    1d3e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1d44:	0f 87 5f 01 00 00    	ja     1ea9 <submitr+0x28c>
    1d4a:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
    1d51:	00 
    1d52:	b9 00 04 00 00       	mov    $0x400,%ecx
    1d57:	b8 00 00 00 00       	mov    $0x0,%eax
    1d5c:	48 89 d7             	mov    %rdx,%rdi
    1d5f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1d62:	48 89 df             	mov    %rbx,%rdi
    1d65:	e8 16 f3 ff ff       	call   1080 <strlen@plt>
    1d6a:	85 c0                	test   %eax,%eax
    1d6c:	0f 84 c3 04 00 00    	je     2235 <submitr+0x618>
    1d72:	8d 40 ff             	lea    -0x1(%rax),%eax
    1d75:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    1d7a:	48 8d ac 24 40 40 00 	lea    0x4040(%rsp),%rbp
    1d81:	00 
    1d82:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    1d89:	00 20 00 
    1d8c:	e9 a5 01 00 00       	jmp    1f36 <submitr+0x319>
    1d91:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    1d98:	3a 20 43 
    1d9b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    1da2:	20 75 6e 
    1da5:	49 89 07             	mov    %rax,(%r15)
    1da8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1dac:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1db3:	74 6f 20 
    1db6:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    1dbd:	65 20 73 
    1dc0:	49 89 47 10          	mov    %rax,0x10(%r15)
    1dc4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1dc8:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    1dcf:	65 
    1dd0:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    1dd7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1ddc:	e9 e3 02 00 00       	jmp    20c4 <submitr+0x4a7>
    1de1:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    1de8:	3a 20 44 
    1deb:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    1df2:	20 75 6e 
    1df5:	49 89 07             	mov    %rax,(%r15)
    1df8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1dfc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1e03:	74 6f 20 
    1e06:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    1e0d:	76 65 20 
    1e10:	49 89 47 10          	mov    %rax,0x10(%r15)
    1e14:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1e18:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    1e1f:	72 20 61 
    1e22:	49 89 47 20          	mov    %rax,0x20(%r15)
    1e26:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    1e2d:	65 
    1e2e:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    1e35:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    1e3a:	44 89 e7             	mov    %r12d,%edi
    1e3d:	e8 6e f2 ff ff       	call   10b0 <close@plt>
    1e42:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1e47:	e9 78 02 00 00       	jmp    20c4 <submitr+0x4a7>
    1e4c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    1e53:	3a 20 55 
    1e56:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    1e5d:	20 74 6f 
    1e60:	49 89 07             	mov    %rax,(%r15)
    1e63:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1e67:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    1e6e:	65 63 74 
    1e71:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    1e78:	68 65 20 
    1e7b:	49 89 47 10          	mov    %rax,0x10(%r15)
    1e7f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1e83:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    1e8a:	76 
    1e8b:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    1e92:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    1e97:	44 89 e7             	mov    %r12d,%edi
    1e9a:	e8 11 f2 ff ff       	call   10b0 <close@plt>
    1e9f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1ea4:	e9 1b 02 00 00       	jmp    20c4 <submitr+0x4a7>
    1ea9:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    1eb0:	3a 20 52 
    1eb3:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    1eba:	20 73 74 
    1ebd:	49 89 07             	mov    %rax,(%r15)
    1ec0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1ec4:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    1ecb:	74 6f 6f 
    1ece:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    1ed5:	65 2e 20 
    1ed8:	49 89 47 10          	mov    %rax,0x10(%r15)
    1edc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1ee0:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    1ee7:	61 73 65 
    1eea:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    1ef1:	49 54 52 
    1ef4:	49 89 47 20          	mov    %rax,0x20(%r15)
    1ef8:	49 89 57 28          	mov    %rdx,0x28(%r15)
    1efc:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    1f03:	55 46 00 
    1f06:	49 89 47 30          	mov    %rax,0x30(%r15)
    1f0a:	44 89 e7             	mov    %r12d,%edi
    1f0d:	e8 9e f1 ff ff       	call   10b0 <close@plt>
    1f12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1f17:	e9 a8 01 00 00       	jmp    20c4 <submitr+0x4a7>
    1f1c:	49 0f a3 c6          	bt     %rax,%r14
    1f20:	73 1e                	jae    1f40 <submitr+0x323>
    1f22:	88 55 00             	mov    %dl,0x0(%rbp)
    1f25:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    1f29:	48 83 c3 01          	add    $0x1,%rbx
    1f2d:	4c 39 eb             	cmp    %r13,%rbx
    1f30:	0f 84 ff 02 00 00    	je     2235 <submitr+0x618>
    1f36:	0f b6 13             	movzbl (%rbx),%edx
    1f39:	8d 42 d6             	lea    -0x2a(%rdx),%eax
    1f3c:	3c 35                	cmp    $0x35,%al
    1f3e:	76 dc                	jbe    1f1c <submitr+0x2ff>
    1f40:	89 d0                	mov    %edx,%eax
    1f42:	83 e0 df             	and    $0xffffffdf,%eax
    1f45:	83 e8 41             	sub    $0x41,%eax
    1f48:	3c 19                	cmp    $0x19,%al
    1f4a:	76 d6                	jbe    1f22 <submitr+0x305>
    1f4c:	80 fa 20             	cmp    $0x20,%dl
    1f4f:	74 47                	je     1f98 <submitr+0x37b>
    1f51:	8d 42 e0             	lea    -0x20(%rdx),%eax
    1f54:	3c 5f                	cmp    $0x5f,%al
    1f56:	76 09                	jbe    1f61 <submitr+0x344>
    1f58:	80 fa 09             	cmp    $0x9,%dl
    1f5b:	0f 85 47 02 00 00    	jne    21a8 <submitr+0x58b>
    1f61:	0f b6 d2             	movzbl %dl,%edx
    1f64:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    1f69:	48 8d 35 ee 14 00 00 	lea    0x14ee(%rip),%rsi        # 345e <array.0+0x29e>
    1f70:	b8 00 00 00 00       	mov    $0x0,%eax
    1f75:	e8 e6 f1 ff ff       	call   1160 <sprintf@plt>
    1f7a:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
    1f7f:	88 45 00             	mov    %al,0x0(%rbp)
    1f82:	0f b6 44 24 29       	movzbl 0x29(%rsp),%eax
    1f87:	88 45 01             	mov    %al,0x1(%rbp)
    1f8a:	0f b6 44 24 2a       	movzbl 0x2a(%rsp),%eax
    1f8f:	88 45 02             	mov    %al,0x2(%rbp)
    1f92:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    1f96:	eb 91                	jmp    1f29 <submitr+0x30c>
    1f98:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    1f9c:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    1fa0:	eb 87                	jmp    1f29 <submitr+0x30c>
    1fa2:	48 01 c5             	add    %rax,%rbp
    1fa5:	48 29 c3             	sub    %rax,%rbx
    1fa8:	0f 84 ea 02 00 00    	je     2298 <submitr+0x67b>
    1fae:	48 89 da             	mov    %rbx,%rdx
    1fb1:	48 89 ee             	mov    %rbp,%rsi
    1fb4:	44 89 e7             	mov    %r12d,%edi
    1fb7:	e8 b4 f0 ff ff       	call   1070 <write@plt>
    1fbc:	48 85 c0             	test   %rax,%rax
    1fbf:	7f e1                	jg     1fa2 <submitr+0x385>
    1fc1:	e8 7a f0 ff ff       	call   1040 <__errno_location@plt>
    1fc6:	83 38 04             	cmpl   $0x4,(%rax)
    1fc9:	0f 85 7a 01 00 00    	jne    2149 <submitr+0x52c>
    1fcf:	4c 89 e8             	mov    %r13,%rax
    1fd2:	eb ce                	jmp    1fa2 <submitr+0x385>
    1fd4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    1fdb:	3a 20 43 
    1fde:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    1fe5:	20 75 6e 
    1fe8:	49 89 07             	mov    %rax,(%r15)
    1feb:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1fef:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1ff6:	74 6f 20 
    1ff9:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2000:	66 69 72 
    2003:	49 89 47 10          	mov    %rax,0x10(%r15)
    2007:	49 89 57 18          	mov    %rdx,0x18(%r15)
    200b:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2012:	61 64 65 
    2015:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    201c:	6d 20 73 
    201f:	49 89 47 20          	mov    %rax,0x20(%r15)
    2023:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2027:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    202e:	65 
    202f:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2036:	44 89 e7             	mov    %r12d,%edi
    2039:	e8 72 f0 ff ff       	call   10b0 <close@plt>
    203e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2043:	eb 7f                	jmp    20c4 <submitr+0x4a7>
    2045:	48 8d 4c 24 30       	lea    0x30(%rsp),%rcx
    204a:	48 8d 35 5f 13 00 00 	lea    0x135f(%rip),%rsi        # 33b0 <array.0+0x1f0>
    2051:	4c 89 ff             	mov    %r15,%rdi
    2054:	b8 00 00 00 00       	mov    $0x0,%eax
    2059:	e8 02 f1 ff ff       	call   1160 <sprintf@plt>
    205e:	44 89 e7             	mov    %r12d,%edi
    2061:	e8 4a f0 ff ff       	call   10b0 <close@plt>
    2066:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    206b:	eb 57                	jmp    20c4 <submitr+0x4a7>
    206d:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    2074:	00 
    2075:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    207c:	00 
    207d:	ba 00 20 00 00       	mov    $0x2000,%edx
    2082:	e8 ca fa ff ff       	call   1b51 <rio_readlineb>
    2087:	48 85 c0             	test   %rax,%rax
    208a:	7e 4a                	jle    20d6 <submitr+0x4b9>
    208c:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    2093:	00 
    2094:	4c 89 ff             	mov    %r15,%rdi
    2097:	e8 b4 ef ff ff       	call   1050 <strcpy@plt>
    209c:	44 89 e7             	mov    %r12d,%edi
    209f:	e8 0c f0 ff ff       	call   10b0 <close@plt>
    20a4:	b9 03 00 00 00       	mov    $0x3,%ecx
    20a9:	48 8d 3d c9 13 00 00 	lea    0x13c9(%rip),%rdi        # 3479 <array.0+0x2b9>
    20b0:	4c 89 fe             	mov    %r15,%rsi
    20b3:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    20b5:	0f 97 c0             	seta   %al
    20b8:	1c 00                	sbb    $0x0,%al
    20ba:	84 c0                	test   %al,%al
    20bc:	0f 95 c0             	setne  %al
    20bf:	0f b6 c0             	movzbl %al,%eax
    20c2:	f7 d8                	neg    %eax
    20c4:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    20cb:	5b                   	pop    %rbx
    20cc:	5d                   	pop    %rbp
    20cd:	41 5c                	pop    %r12
    20cf:	41 5d                	pop    %r13
    20d1:	41 5e                	pop    %r14
    20d3:	41 5f                	pop    %r15
    20d5:	c3                   	ret    
    20d6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    20dd:	3a 20 43 
    20e0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    20e7:	20 75 6e 
    20ea:	49 89 07             	mov    %rax,(%r15)
    20ed:	49 89 57 08          	mov    %rdx,0x8(%r15)
    20f1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    20f8:	74 6f 20 
    20fb:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2102:	73 74 61 
    2105:	49 89 47 10          	mov    %rax,0x10(%r15)
    2109:	49 89 57 18          	mov    %rdx,0x18(%r15)
    210d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2114:	65 73 73 
    2117:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    211e:	72 6f 6d 
    2121:	49 89 47 20          	mov    %rax,0x20(%r15)
    2125:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2129:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2130:	65 72 00 
    2133:	49 89 47 30          	mov    %rax,0x30(%r15)
    2137:	44 89 e7             	mov    %r12d,%edi
    213a:	e8 71 ef ff ff       	call   10b0 <close@plt>
    213f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2144:	e9 7b ff ff ff       	jmp    20c4 <submitr+0x4a7>
    2149:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2150:	3a 20 43 
    2153:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    215a:	20 75 6e 
    215d:	49 89 07             	mov    %rax,(%r15)
    2160:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2164:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    216b:	74 6f 20 
    216e:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2175:	20 74 6f 
    2178:	49 89 47 10          	mov    %rax,0x10(%r15)
    217c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2180:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2187:	73 65 72 
    218a:	49 89 47 20          	mov    %rax,0x20(%r15)
    218e:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2195:	00 
    2196:	44 89 e7             	mov    %r12d,%edi
    2199:	e8 12 ef ff ff       	call   10b0 <close@plt>
    219e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21a3:	e9 1c ff ff ff       	jmp    20c4 <submitr+0x4a7>
    21a8:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    21af:	3a 20 52 
    21b2:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    21b9:	20 73 74 
    21bc:	49 89 07             	mov    %rax,(%r15)
    21bf:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21c3:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    21ca:	63 6f 6e 
    21cd:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    21d4:	20 61 6e 
    21d7:	49 89 47 10          	mov    %rax,0x10(%r15)
    21db:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21df:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    21e6:	67 61 6c 
    21e9:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    21f0:	6e 70 72 
    21f3:	49 89 47 20          	mov    %rax,0x20(%r15)
    21f7:	49 89 57 28          	mov    %rdx,0x28(%r15)
    21fb:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2202:	6c 65 20 
    2205:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    220c:	63 74 65 
    220f:	49 89 47 30          	mov    %rax,0x30(%r15)
    2213:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2217:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    221e:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2223:	44 89 e7             	mov    %r12d,%edi
    2226:	e8 85 ee ff ff       	call   10b0 <close@plt>
    222b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2230:	e9 8f fe ff ff       	jmp    20c4 <submitr+0x4a7>
    2235:	48 8d 9c 24 40 60 00 	lea    0x6040(%rsp),%rbx
    223c:	00 
    223d:	48 83 ec 08          	sub    $0x8,%rsp
    2241:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
    2248:	00 
    2249:	50                   	push   %rax
    224a:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
    224f:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2254:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2259:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    225e:	48 8d 35 7b 11 00 00 	lea    0x117b(%rip),%rsi        # 33e0 <array.0+0x220>
    2265:	48 89 df             	mov    %rbx,%rdi
    2268:	b8 00 00 00 00       	mov    $0x0,%eax
    226d:	e8 ee ee ff ff       	call   1160 <sprintf@plt>
    2272:	48 89 df             	mov    %rbx,%rdi
    2275:	e8 06 ee ff ff       	call   1080 <strlen@plt>
    227a:	48 89 c3             	mov    %rax,%rbx
    227d:	48 83 c4 10          	add    $0x10,%rsp
    2281:	48 8d ac 24 40 60 00 	lea    0x6040(%rsp),%rbp
    2288:	00 
    2289:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    228f:	48 85 c0             	test   %rax,%rax
    2292:	0f 85 16 fd ff ff    	jne    1fae <submitr+0x391>
    2298:	44 89 a4 24 40 80 00 	mov    %r12d,0x8040(%rsp)
    229f:	00 
    22a0:	c7 84 24 44 80 00 00 	movl   $0x0,0x8044(%rsp)
    22a7:	00 00 00 00 
    22ab:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    22b2:	00 
    22b3:	48 8d 84 24 50 80 00 	lea    0x8050(%rsp),%rax
    22ba:	00 
    22bb:	48 89 84 24 48 80 00 	mov    %rax,0x8048(%rsp)
    22c2:	00 
    22c3:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    22ca:	00 
    22cb:	ba 00 20 00 00       	mov    $0x2000,%edx
    22d0:	e8 7c f8 ff ff       	call   1b51 <rio_readlineb>
    22d5:	48 85 c0             	test   %rax,%rax
    22d8:	0f 8e f6 fc ff ff    	jle    1fd4 <submitr+0x3b7>
    22de:	48 8d 8c 24 3c 20 00 	lea    0x203c(%rsp),%rcx
    22e5:	00 
    22e6:	48 8d 94 24 40 20 00 	lea    0x2040(%rsp),%rdx
    22ed:	00 
    22ee:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    22f5:	00 
    22f6:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    22fb:	48 8d 35 63 11 00 00 	lea    0x1163(%rip),%rsi        # 3465 <array.0+0x2a5>
    2302:	b8 00 00 00 00       	mov    $0x0,%eax
    2307:	e8 24 ee ff ff       	call   1130 <__isoc99_sscanf@plt>
    230c:	8b 94 24 3c 20 00 00 	mov    0x203c(%rsp),%edx
    2313:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
    2319:	0f 85 26 fd ff ff    	jne    2045 <submitr+0x428>
    231f:	48 8d 1d 50 11 00 00 	lea    0x1150(%rip),%rbx        # 3476 <array.0+0x2b6>
    2326:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    232d:	00 
    232e:	b9 03 00 00 00       	mov    $0x3,%ecx
    2333:	48 89 df             	mov    %rbx,%rdi
    2336:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2338:	0f 97 c0             	seta   %al
    233b:	1c 00                	sbb    $0x0,%al
    233d:	84 c0                	test   %al,%al
    233f:	0f 84 28 fd ff ff    	je     206d <submitr+0x450>
    2345:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    234c:	00 
    234d:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    2354:	00 
    2355:	ba 00 20 00 00       	mov    $0x2000,%edx
    235a:	e8 f2 f7 ff ff       	call   1b51 <rio_readlineb>
    235f:	48 85 c0             	test   %rax,%rax
    2362:	7f c2                	jg     2326 <submitr+0x709>
    2364:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    236b:	3a 20 43 
    236e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2375:	20 75 6e 
    2378:	49 89 07             	mov    %rax,(%r15)
    237b:	49 89 57 08          	mov    %rdx,0x8(%r15)
    237f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2386:	74 6f 20 
    2389:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2390:	68 65 61 
    2393:	49 89 47 10          	mov    %rax,0x10(%r15)
    2397:	49 89 57 18          	mov    %rdx,0x18(%r15)
    239b:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    23a2:	66 72 6f 
    23a5:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    23ac:	76 65 72 
    23af:	49 89 47 20          	mov    %rax,0x20(%r15)
    23b3:	49 89 57 28          	mov    %rdx,0x28(%r15)
    23b7:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    23bc:	44 89 e7             	mov    %r12d,%edi
    23bf:	e8 ec ec ff ff       	call   10b0 <close@plt>
    23c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23c9:	e9 f6 fc ff ff       	jmp    20c4 <submitr+0x4a7>

00000000000023ce <init_timeout>:
    23ce:	85 ff                	test   %edi,%edi
    23d0:	75 01                	jne    23d3 <init_timeout+0x5>
    23d2:	c3                   	ret    
    23d3:	53                   	push   %rbx
    23d4:	89 fb                	mov    %edi,%ebx
    23d6:	48 8d 35 49 f7 ff ff 	lea    -0x8b7(%rip),%rsi        # 1b26 <sigalrm_handler>
    23dd:	bf 0e 00 00 00       	mov    $0xe,%edi
    23e2:	e8 f9 ec ff ff       	call   10e0 <signal@plt>
    23e7:	85 db                	test   %ebx,%ebx
    23e9:	bf 00 00 00 00       	mov    $0x0,%edi
    23ee:	0f 49 fb             	cmovns %ebx,%edi
    23f1:	e8 aa ec ff ff       	call   10a0 <alarm@plt>
    23f6:	5b                   	pop    %rbx
    23f7:	c3                   	ret    

00000000000023f8 <init_driver>:
    23f8:	41 54                	push   %r12
    23fa:	55                   	push   %rbp
    23fb:	53                   	push   %rbx
    23fc:	48 83 ec 10          	sub    $0x10,%rsp
    2400:	48 89 fd             	mov    %rdi,%rbp
    2403:	be 01 00 00 00       	mov    $0x1,%esi
    2408:	bf 0d 00 00 00       	mov    $0xd,%edi
    240d:	e8 ce ec ff ff       	call   10e0 <signal@plt>
    2412:	be 01 00 00 00       	mov    $0x1,%esi
    2417:	bf 1d 00 00 00       	mov    $0x1d,%edi
    241c:	e8 bf ec ff ff       	call   10e0 <signal@plt>
    2421:	be 01 00 00 00       	mov    $0x1,%esi
    2426:	bf 1d 00 00 00       	mov    $0x1d,%edi
    242b:	e8 b0 ec ff ff       	call   10e0 <signal@plt>
    2430:	ba 00 00 00 00       	mov    $0x0,%edx
    2435:	be 01 00 00 00       	mov    $0x1,%esi
    243a:	bf 02 00 00 00       	mov    $0x2,%edi
    243f:	e8 6c ed ff ff       	call   11b0 <socket@plt>
    2444:	85 c0                	test   %eax,%eax
    2446:	0f 88 83 00 00 00    	js     24cf <init_driver+0xd7>
    244c:	89 c3                	mov    %eax,%ebx
    244e:	48 8d 3d 1d 0f 00 00 	lea    0xf1d(%rip),%rdi        # 3372 <array.0+0x1b2>
    2455:	e8 96 ec ff ff       	call   10f0 <gethostbyname@plt>
    245a:	48 85 c0             	test   %rax,%rax
    245d:	0f 84 b8 00 00 00    	je     251b <init_driver+0x123>
    2463:	49 89 e4             	mov    %rsp,%r12
    2466:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    246d:	00 
    246e:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2475:	00 00 
    2477:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    247d:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2481:	48 8b 40 18          	mov    0x18(%rax),%rax
    2485:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    248a:	48 8b 30             	mov    (%rax),%rsi
    248d:	e8 ae ec ff ff       	call   1140 <memmove@plt>
    2492:	66 c7 44 24 02 3b 6f 	movw   $0x6f3b,0x2(%rsp)
    2499:	ba 10 00 00 00       	mov    $0x10,%edx
    249e:	4c 89 e6             	mov    %r12,%rsi
    24a1:	89 df                	mov    %ebx,%edi
    24a3:	e8 d8 ec ff ff       	call   1180 <connect@plt>
    24a8:	85 c0                	test   %eax,%eax
    24aa:	0f 88 d3 00 00 00    	js     2583 <init_driver+0x18b>
    24b0:	89 df                	mov    %ebx,%edi
    24b2:	e8 f9 eb ff ff       	call   10b0 <close@plt>
    24b7:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    24bd:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    24c1:	b8 00 00 00 00       	mov    $0x0,%eax
    24c6:	48 83 c4 10          	add    $0x10,%rsp
    24ca:	5b                   	pop    %rbx
    24cb:	5d                   	pop    %rbp
    24cc:	41 5c                	pop    %r12
    24ce:	c3                   	ret    
    24cf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24d6:	3a 20 43 
    24d9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24e0:	20 75 6e 
    24e3:	48 89 45 00          	mov    %rax,0x0(%rbp)
    24e7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    24eb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24f2:	74 6f 20 
    24f5:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    24fc:	65 20 73 
    24ff:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2503:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2507:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    250e:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2514:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2519:	eb ab                	jmp    24c6 <init_driver+0xce>
    251b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2522:	3a 20 44 
    2525:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    252c:	20 75 6e 
    252f:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2533:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2537:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    253e:	74 6f 20 
    2541:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2548:	76 65 20 
    254b:	48 89 45 10          	mov    %rax,0x10(%rbp)
    254f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2553:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    255a:	72 20 61 
    255d:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2561:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2568:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    256e:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2572:	89 df                	mov    %ebx,%edi
    2574:	e8 37 eb ff ff       	call   10b0 <close@plt>
    2579:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    257e:	e9 43 ff ff ff       	jmp    24c6 <init_driver+0xce>
    2583:	48 8d 15 e8 0d 00 00 	lea    0xde8(%rip),%rdx        # 3372 <array.0+0x1b2>
    258a:	48 8d 35 a7 0e 00 00 	lea    0xea7(%rip),%rsi        # 3438 <array.0+0x278>
    2591:	48 89 ef             	mov    %rbp,%rdi
    2594:	b8 00 00 00 00       	mov    $0x0,%eax
    2599:	e8 c2 eb ff ff       	call   1160 <sprintf@plt>
    259e:	89 df                	mov    %ebx,%edi
    25a0:	e8 0b eb ff ff       	call   10b0 <close@plt>
    25a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25aa:	e9 17 ff ff ff       	jmp    24c6 <init_driver+0xce>

00000000000025af <driver_post>:
    25af:	53                   	push   %rbx
    25b0:	4c 89 c3             	mov    %r8,%rbx
    25b3:	85 c9                	test   %ecx,%ecx
    25b5:	75 17                	jne    25ce <driver_post+0x1f>
    25b7:	48 85 ff             	test   %rdi,%rdi
    25ba:	74 05                	je     25c1 <driver_post+0x12>
    25bc:	80 3f 00             	cmpb   $0x0,(%rdi)
    25bf:	75 31                	jne    25f2 <driver_post+0x43>
    25c1:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    25c6:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    25ca:	89 c8                	mov    %ecx,%eax
    25cc:	5b                   	pop    %rbx
    25cd:	c3                   	ret    
    25ce:	48 89 d6             	mov    %rdx,%rsi
    25d1:	48 8d 3d a4 0e 00 00 	lea    0xea4(%rip),%rdi        # 347c <array.0+0x2bc>
    25d8:	b8 00 00 00 00       	mov    $0x0,%eax
    25dd:	e8 ae ea ff ff       	call   1090 <printf@plt>
    25e2:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    25e7:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    25eb:	b8 00 00 00 00       	mov    $0x0,%eax
    25f0:	eb da                	jmp    25cc <driver_post+0x1d>
    25f2:	41 50                	push   %r8
    25f4:	52                   	push   %rdx
    25f5:	4c 8d 0d 97 0e 00 00 	lea    0xe97(%rip),%r9        # 3493 <array.0+0x2d3>
    25fc:	49 89 f0             	mov    %rsi,%r8
    25ff:	48 89 f9             	mov    %rdi,%rcx
    2602:	48 8d 15 92 0e 00 00 	lea    0xe92(%rip),%rdx        # 349b <array.0+0x2db>
    2609:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    260e:	48 8d 3d 8c 0e 00 00 	lea    0xe8c(%rip),%rdi        # 34a1 <array.0+0x2e1>
    2615:	e8 03 f6 ff ff       	call   1c1d <submitr>
    261a:	48 83 c4 10          	add    $0x10,%rsp
    261e:	eb ac                	jmp    25cc <driver_post+0x1d>

0000000000002620 <__libc_csu_init>:
    2620:	41 57                	push   %r15
    2622:	4c 8d 3d bf 27 00 00 	lea    0x27bf(%rip),%r15        # 4de8 <__frame_dummy_init_array_entry>
    2629:	41 56                	push   %r14
    262b:	49 89 d6             	mov    %rdx,%r14
    262e:	41 55                	push   %r13
    2630:	49 89 f5             	mov    %rsi,%r13
    2633:	41 54                	push   %r12
    2635:	41 89 fc             	mov    %edi,%r12d
    2638:	55                   	push   %rbp
    2639:	48 8d 2d b0 27 00 00 	lea    0x27b0(%rip),%rbp        # 4df0 <__do_global_dtors_aux_fini_array_entry>
    2640:	53                   	push   %rbx
    2641:	4c 29 fd             	sub    %r15,%rbp
    2644:	48 83 ec 08          	sub    $0x8,%rsp
    2648:	e8 b3 e9 ff ff       	call   1000 <_init>
    264d:	48 c1 fd 03          	sar    $0x3,%rbp
    2651:	74 1b                	je     266e <__libc_csu_init+0x4e>
    2653:	31 db                	xor    %ebx,%ebx
    2655:	0f 1f 00             	nopl   (%rax)
    2658:	4c 89 f2             	mov    %r14,%rdx
    265b:	4c 89 ee             	mov    %r13,%rsi
    265e:	44 89 e7             	mov    %r12d,%edi
    2661:	41 ff 14 df          	call   *(%r15,%rbx,8)
    2665:	48 83 c3 01          	add    $0x1,%rbx
    2669:	48 39 dd             	cmp    %rbx,%rbp
    266c:	75 ea                	jne    2658 <__libc_csu_init+0x38>
    266e:	48 83 c4 08          	add    $0x8,%rsp
    2672:	5b                   	pop    %rbx
    2673:	5d                   	pop    %rbp
    2674:	41 5c                	pop    %r12
    2676:	41 5d                	pop    %r13
    2678:	41 5e                	pop    %r14
    267a:	41 5f                	pop    %r15
    267c:	c3                   	ret    
    267d:	0f 1f 00             	nopl   (%rax)

0000000000002680 <__libc_csu_fini>:
    2680:	c3                   	ret    

Disassembly of section .fini:

0000000000002684 <_fini>:
    2684:	48 83 ec 08          	sub    $0x8,%rsp
    2688:	48 83 c4 08          	add    $0x8,%rsp
    268c:	c3                   	ret    
