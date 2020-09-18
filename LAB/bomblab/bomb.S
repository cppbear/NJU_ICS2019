
bomb:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   %ebx
 8049001:	83 ec 08             	sub    $0x8,%esp
 8049004:	e8 67 01 00 00       	call   8049170 <__x86.get_pc_thunk.bx>
 8049009:	81 c3 f7 2f 00 00    	add    $0x2ff7,%ebx
 804900f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8049015:	85 c0                	test   %eax,%eax
 8049017:	74 02                	je     804901b <_init+0x1b>
 8049019:	ff d0                	call   *%eax
 804901b:	83 c4 08             	add    $0x8,%esp
 804901e:	5b                   	pop    %ebx
 804901f:	c3                   	ret    

Disassembly of section .plt:

08049020 <.plt>:
 8049020:	ff 35 04 c0 04 08    	pushl  0x804c004
 8049026:	ff 25 08 c0 04 08    	jmp    *0x804c008
 804902c:	00 00                	add    %al,(%eax)
	...

08049030 <printf@plt>:
 8049030:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8049036:	68 00 00 00 00       	push   $0x0
 804903b:	e9 e0 ff ff ff       	jmp    8049020 <.plt>

08049040 <fflush@plt>:
 8049040:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8049046:	68 08 00 00 00       	push   $0x8
 804904b:	e9 d0 ff ff ff       	jmp    8049020 <.plt>

08049050 <fgets@plt>:
 8049050:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8049056:	68 10 00 00 00       	push   $0x10
 804905b:	e9 c0 ff ff ff       	jmp    8049020 <.plt>

08049060 <signal@plt>:
 8049060:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8049066:	68 18 00 00 00       	push   $0x18
 804906b:	e9 b0 ff ff ff       	jmp    8049020 <.plt>

08049070 <sleep@plt>:
 8049070:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8049076:	68 20 00 00 00       	push   $0x20
 804907b:	e9 a0 ff ff ff       	jmp    8049020 <.plt>

08049080 <getenv@plt>:
 8049080:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8049086:	68 28 00 00 00       	push   $0x28
 804908b:	e9 90 ff ff ff       	jmp    8049020 <.plt>

08049090 <puts@plt>:
 8049090:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8049096:	68 30 00 00 00       	push   $0x30
 804909b:	e9 80 ff ff ff       	jmp    8049020 <.plt>

080490a0 <exit@plt>:
 80490a0:	ff 25 28 c0 04 08    	jmp    *0x804c028
 80490a6:	68 38 00 00 00       	push   $0x38
 80490ab:	e9 70 ff ff ff       	jmp    8049020 <.plt>

080490b0 <strlen@plt>:
 80490b0:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 80490b6:	68 40 00 00 00       	push   $0x40
 80490bb:	e9 60 ff ff ff       	jmp    8049020 <.plt>

080490c0 <__libc_start_main@plt>:
 80490c0:	ff 25 30 c0 04 08    	jmp    *0x804c030
 80490c6:	68 48 00 00 00       	push   $0x48
 80490cb:	e9 50 ff ff ff       	jmp    8049020 <.plt>

080490d0 <__isoc99_sscanf@plt>:
 80490d0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80490d6:	68 50 00 00 00       	push   $0x50
 80490db:	e9 40 ff ff ff       	jmp    8049020 <.plt>

080490e0 <fopen@plt>:
 80490e0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80490e6:	68 58 00 00 00       	push   $0x58
 80490eb:	e9 30 ff ff ff       	jmp    8049020 <.plt>

080490f0 <strtok@plt>:
 80490f0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80490f6:	68 60 00 00 00       	push   $0x60
 80490fb:	e9 20 ff ff ff       	jmp    8049020 <.plt>

08049100 <atoi@plt>:
 8049100:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8049106:	68 68 00 00 00       	push   $0x68
 804910b:	e9 10 ff ff ff       	jmp    8049020 <.plt>

08049110 <__ctype_b_loc@plt>:
 8049110:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8049116:	68 70 00 00 00       	push   $0x70
 804911b:	e9 00 ff ff ff       	jmp    8049020 <.plt>

Disassembly of section .text:

08049120 <_start>:
 8049120:	31 ed                	xor    %ebp,%ebp
 8049122:	5e                   	pop    %esi
 8049123:	89 e1                	mov    %esp,%ecx
 8049125:	83 e4 f0             	and    $0xfffffff0,%esp
 8049128:	50                   	push   %eax
 8049129:	54                   	push   %esp
 804912a:	52                   	push   %edx
 804912b:	e8 23 00 00 00       	call   8049153 <_start+0x33>
 8049130:	81 c3 d0 2e 00 00    	add    $0x2ed0,%ebx
 8049136:	8d 83 d0 df ff ff    	lea    -0x2030(%ebx),%eax
 804913c:	50                   	push   %eax
 804913d:	8d 83 70 df ff ff    	lea    -0x2090(%ebx),%eax
 8049143:	50                   	push   %eax
 8049144:	51                   	push   %ecx
 8049145:	56                   	push   %esi
 8049146:	c7 c0 32 92 04 08    	mov    $0x8049232,%eax
 804914c:	50                   	push   %eax
 804914d:	e8 6e ff ff ff       	call   80490c0 <__libc_start_main@plt>
 8049152:	f4                   	hlt    
 8049153:	8b 1c 24             	mov    (%esp),%ebx
 8049156:	c3                   	ret    
 8049157:	66 90                	xchg   %ax,%ax
 8049159:	66 90                	xchg   %ax,%ax
 804915b:	66 90                	xchg   %ax,%ax
 804915d:	66 90                	xchg   %ax,%ax
 804915f:	90                   	nop

08049160 <_dl_relocate_static_pie>:
 8049160:	c3                   	ret    
 8049161:	66 90                	xchg   %ax,%ax
 8049163:	66 90                	xchg   %ax,%ax
 8049165:	66 90                	xchg   %ax,%ax
 8049167:	66 90                	xchg   %ax,%ax
 8049169:	66 90                	xchg   %ax,%ax
 804916b:	66 90                	xchg   %ax,%ax
 804916d:	66 90                	xchg   %ax,%ax
 804916f:	90                   	nop

08049170 <__x86.get_pc_thunk.bx>:
 8049170:	8b 1c 24             	mov    (%esp),%ebx
 8049173:	c3                   	ret    
 8049174:	66 90                	xchg   %ax,%ax
 8049176:	66 90                	xchg   %ax,%ax
 8049178:	66 90                	xchg   %ax,%ax
 804917a:	66 90                	xchg   %ax,%ax
 804917c:	66 90                	xchg   %ax,%ax
 804917e:	66 90                	xchg   %ax,%ax

08049180 <deregister_tm_clones>:
 8049180:	b8 40 c2 04 08       	mov    $0x804c240,%eax
 8049185:	3d 40 c2 04 08       	cmp    $0x804c240,%eax
 804918a:	74 24                	je     80491b0 <deregister_tm_clones+0x30>
 804918c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049191:	85 c0                	test   %eax,%eax
 8049193:	74 1b                	je     80491b0 <deregister_tm_clones+0x30>
 8049195:	55                   	push   %ebp
 8049196:	89 e5                	mov    %esp,%ebp
 8049198:	83 ec 14             	sub    $0x14,%esp
 804919b:	68 40 c2 04 08       	push   $0x804c240
 80491a0:	ff d0                	call   *%eax
 80491a2:	83 c4 10             	add    $0x10,%esp
 80491a5:	c9                   	leave  
 80491a6:	c3                   	ret    
 80491a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491ae:	66 90                	xchg   %ax,%ax
 80491b0:	c3                   	ret    
 80491b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491bf:	90                   	nop

080491c0 <register_tm_clones>:
 80491c0:	b8 40 c2 04 08       	mov    $0x804c240,%eax
 80491c5:	2d 40 c2 04 08       	sub    $0x804c240,%eax
 80491ca:	c1 f8 02             	sar    $0x2,%eax
 80491cd:	89 c2                	mov    %eax,%edx
 80491cf:	c1 ea 1f             	shr    $0x1f,%edx
 80491d2:	01 d0                	add    %edx,%eax
 80491d4:	d1 f8                	sar    %eax
 80491d6:	74 20                	je     80491f8 <register_tm_clones+0x38>
 80491d8:	ba 00 00 00 00       	mov    $0x0,%edx
 80491dd:	85 d2                	test   %edx,%edx
 80491df:	74 17                	je     80491f8 <register_tm_clones+0x38>
 80491e1:	55                   	push   %ebp
 80491e2:	89 e5                	mov    %esp,%ebp
 80491e4:	83 ec 10             	sub    $0x10,%esp
 80491e7:	50                   	push   %eax
 80491e8:	68 40 c2 04 08       	push   $0x804c240
 80491ed:	ff d2                	call   *%edx
 80491ef:	83 c4 10             	add    $0x10,%esp
 80491f2:	c9                   	leave  
 80491f3:	c3                   	ret    
 80491f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80491f8:	c3                   	ret    
 80491f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049200 <__do_global_dtors_aux>:
 8049200:	80 3d 48 c2 04 08 00 	cmpb   $0x0,0x804c248
 8049207:	75 17                	jne    8049220 <__do_global_dtors_aux+0x20>
 8049209:	55                   	push   %ebp
 804920a:	89 e5                	mov    %esp,%ebp
 804920c:	83 ec 08             	sub    $0x8,%esp
 804920f:	e8 6c ff ff ff       	call   8049180 <deregister_tm_clones>
 8049214:	c6 05 48 c2 04 08 01 	movb   $0x1,0x804c248
 804921b:	c9                   	leave  
 804921c:	c3                   	ret    
 804921d:	8d 76 00             	lea    0x0(%esi),%esi
 8049220:	c3                   	ret    
 8049221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049228:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804922f:	90                   	nop

08049230 <frame_dummy>:
 8049230:	eb 8e                	jmp    80491c0 <register_tm_clones>

08049232 <main>:
 8049232:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8049236:	83 e4 f0             	and    $0xfffffff0,%esp
 8049239:	ff 71 fc             	pushl  -0x4(%ecx)
 804923c:	55                   	push   %ebp
 804923d:	89 e5                	mov    %esp,%ebp
 804923f:	53                   	push   %ebx
 8049240:	51                   	push   %ecx
 8049241:	83 ec 10             	sub    $0x10,%esp
 8049244:	89 cb                	mov    %ecx,%ebx
 8049246:	83 3b 01             	cmpl   $0x1,(%ebx)
 8049249:	75 0c                	jne    8049257 <main+0x25>
 804924b:	a1 40 c2 04 08       	mov    0x804c240,%eax
 8049250:	a3 50 c2 04 08       	mov    %eax,0x804c250
 8049255:	eb 75                	jmp    80492cc <main+0x9a>
 8049257:	83 3b 02             	cmpl   $0x2,(%ebx)
 804925a:	75 50                	jne    80492ac <main+0x7a>
 804925c:	8b 43 04             	mov    0x4(%ebx),%eax
 804925f:	83 c0 04             	add    $0x4,%eax
 8049262:	8b 00                	mov    (%eax),%eax
 8049264:	83 ec 08             	sub    $0x8,%esp
 8049267:	68 08 a0 04 08       	push   $0x804a008
 804926c:	50                   	push   %eax
 804926d:	e8 6e fe ff ff       	call   80490e0 <fopen@plt>
 8049272:	83 c4 10             	add    $0x10,%esp
 8049275:	a3 50 c2 04 08       	mov    %eax,0x804c250
 804927a:	a1 50 c2 04 08       	mov    0x804c250,%eax
 804927f:	85 c0                	test   %eax,%eax
 8049281:	75 49                	jne    80492cc <main+0x9a>
 8049283:	8b 43 04             	mov    0x4(%ebx),%eax
 8049286:	83 c0 04             	add    $0x4,%eax
 8049289:	8b 10                	mov    (%eax),%edx
 804928b:	8b 43 04             	mov    0x4(%ebx),%eax
 804928e:	8b 00                	mov    (%eax),%eax
 8049290:	83 ec 04             	sub    $0x4,%esp
 8049293:	52                   	push   %edx
 8049294:	50                   	push   %eax
 8049295:	68 0a a0 04 08       	push   $0x804a00a
 804929a:	e8 91 fd ff ff       	call   8049030 <printf@plt>
 804929f:	83 c4 10             	add    $0x10,%esp
 80492a2:	83 ec 0c             	sub    $0xc,%esp
 80492a5:	6a 08                	push   $0x8
 80492a7:	e8 f4 fd ff ff       	call   80490a0 <exit@plt>
 80492ac:	8b 43 04             	mov    0x4(%ebx),%eax
 80492af:	8b 00                	mov    (%eax),%eax
 80492b1:	83 ec 08             	sub    $0x8,%esp
 80492b4:	50                   	push   %eax
 80492b5:	68 27 a0 04 08       	push   $0x804a027
 80492ba:	e8 71 fd ff ff       	call   8049030 <printf@plt>
 80492bf:	83 c4 10             	add    $0x10,%esp
 80492c2:	83 ec 0c             	sub    $0xc,%esp
 80492c5:	6a 08                	push   $0x8
 80492c7:	e8 d4 fd ff ff       	call   80490a0 <exit@plt>
 80492cc:	e8 e9 09 00 00       	call   8049cba <initialize_bomb>
 80492d1:	83 ec 0c             	sub    $0xc,%esp
 80492d4:	68 44 a0 04 08       	push   $0x804a044
 80492d9:	e8 b2 fd ff ff       	call   8049090 <puts@plt>
 80492de:	83 c4 10             	add    $0x10,%esp
 80492e1:	83 ec 0c             	sub    $0xc,%esp
 80492e4:	68 80 a0 04 08       	push   $0x804a080
 80492e9:	e8 a2 fd ff ff       	call   8049090 <puts@plt>
 80492ee:	83 c4 10             	add    $0x10,%esp
 80492f1:	e8 7e 0a 00 00       	call   8049d74 <read_line>
 80492f6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80492f9:	83 ec 0c             	sub    $0xc,%esp
 80492fc:	ff 75 f4             	pushl  -0xc(%ebp)
 80492ff:	e8 5a 01 00 00       	call   804945e <phase_0>
 8049304:	83 c4 10             	add    $0x10,%esp
 8049307:	85 c0                	test   %eax,%eax
 8049309:	74 15                	je     8049320 <main+0xee>
 804930b:	e8 d0 0b 00 00       	call   8049ee0 <phase_defused>
 8049310:	83 ec 0c             	sub    $0xc,%esp
 8049313:	68 ac a0 04 08       	push   $0x804a0ac
 8049318:	e8 73 fd ff ff       	call   8049090 <puts@plt>
 804931d:	83 c4 10             	add    $0x10,%esp
 8049320:	e8 4f 0a 00 00       	call   8049d74 <read_line>
 8049325:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049328:	83 ec 0c             	sub    $0xc,%esp
 804932b:	ff 75 f4             	pushl  -0xc(%ebp)
 804932e:	e8 5b 01 00 00       	call   804948e <phase_1>
 8049333:	83 c4 10             	add    $0x10,%esp
 8049336:	85 c0                	test   %eax,%eax
 8049338:	74 15                	je     804934f <main+0x11d>
 804933a:	e8 a1 0b 00 00       	call   8049ee0 <phase_defused>
 804933f:	83 ec 0c             	sub    $0xc,%esp
 8049342:	68 d4 a0 04 08       	push   $0x804a0d4
 8049347:	e8 44 fd ff ff       	call   8049090 <puts@plt>
 804934c:	83 c4 10             	add    $0x10,%esp
 804934f:	e8 20 0a 00 00       	call   8049d74 <read_line>
 8049354:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049357:	83 ec 0c             	sub    $0xc,%esp
 804935a:	ff 75 f4             	pushl  -0xc(%ebp)
 804935d:	e8 9e 01 00 00       	call   8049500 <phase_2>
 8049362:	83 c4 10             	add    $0x10,%esp
 8049365:	85 c0                	test   %eax,%eax
 8049367:	74 15                	je     804937e <main+0x14c>
 8049369:	e8 72 0b 00 00       	call   8049ee0 <phase_defused>
 804936e:	83 ec 0c             	sub    $0xc,%esp
 8049371:	68 fd a0 04 08       	push   $0x804a0fd
 8049376:	e8 15 fd ff ff       	call   8049090 <puts@plt>
 804937b:	83 c4 10             	add    $0x10,%esp
 804937e:	e8 f1 09 00 00       	call   8049d74 <read_line>
 8049383:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049386:	83 ec 0c             	sub    $0xc,%esp
 8049389:	ff 75 f4             	pushl  -0xc(%ebp)
 804938c:	e8 fb 01 00 00       	call   804958c <phase_3>
 8049391:	83 c4 10             	add    $0x10,%esp
 8049394:	85 c0                	test   %eax,%eax
 8049396:	74 15                	je     80493ad <main+0x17b>
 8049398:	e8 43 0b 00 00       	call   8049ee0 <phase_defused>
 804939d:	83 ec 0c             	sub    $0xc,%esp
 80493a0:	68 1b a1 04 08       	push   $0x804a11b
 80493a5:	e8 e6 fc ff ff       	call   8049090 <puts@plt>
 80493aa:	83 c4 10             	add    $0x10,%esp
 80493ad:	e8 c2 09 00 00       	call   8049d74 <read_line>
 80493b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493b5:	83 ec 0c             	sub    $0xc,%esp
 80493b8:	ff 75 f4             	pushl  -0xc(%ebp)
 80493bb:	e8 ab 03 00 00       	call   804976b <phase_4>
 80493c0:	83 c4 10             	add    $0x10,%esp
 80493c3:	85 c0                	test   %eax,%eax
 80493c5:	74 15                	je     80493dc <main+0x1aa>
 80493c7:	e8 14 0b 00 00       	call   8049ee0 <phase_defused>
 80493cc:	83 ec 0c             	sub    $0xc,%esp
 80493cf:	68 2c a1 04 08       	push   $0x804a12c
 80493d4:	e8 b7 fc ff ff       	call   8049090 <puts@plt>
 80493d9:	83 c4 10             	add    $0x10,%esp
 80493dc:	e8 93 09 00 00       	call   8049d74 <read_line>
 80493e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493e4:	83 ec 0c             	sub    $0xc,%esp
 80493e7:	ff 75 f4             	pushl  -0xc(%ebp)
 80493ea:	e8 e4 03 00 00       	call   80497d3 <phase_5>
 80493ef:	83 c4 10             	add    $0x10,%esp
 80493f2:	85 c0                	test   %eax,%eax
 80493f4:	74 15                	je     804940b <main+0x1d9>
 80493f6:	e8 e5 0a 00 00       	call   8049ee0 <phase_defused>
 80493fb:	83 ec 0c             	sub    $0xc,%esp
 80493fe:	68 50 a1 04 08       	push   $0x804a150
 8049403:	e8 88 fc ff ff       	call   8049090 <puts@plt>
 8049408:	83 c4 10             	add    $0x10,%esp
 804940b:	e8 64 09 00 00       	call   8049d74 <read_line>
 8049410:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049413:	83 ec 0c             	sub    $0xc,%esp
 8049416:	ff 75 f4             	pushl  -0xc(%ebp)
 8049419:	e8 41 04 00 00       	call   804985f <phase_6>
 804941e:	83 c4 10             	add    $0x10,%esp
 8049421:	85 c0                	test   %eax,%eax
 8049423:	74 05                	je     804942a <main+0x1f8>
 8049425:	e8 b6 0a 00 00       	call   8049ee0 <phase_defused>
 804942a:	b8 00 00 00 00       	mov    $0x0,%eax
 804942f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049432:	59                   	pop    %ecx
 8049433:	5b                   	pop    %ebx
 8049434:	5d                   	pop    %ebp
 8049435:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049438:	c3                   	ret    

08049439 <iumqOOGS>:
 8049439:	55                   	push   %ebp
 804943a:	89 e5                	mov    %esp,%ebp
 804943c:	53                   	push   %ebx
 804943d:	8b 55 08             	mov    0x8(%ebp),%edx
 8049440:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049443:	01 c2                	add    %eax,%edx
 8049445:	8b 45 10             	mov    0x10(%ebp),%eax
 8049448:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
 804944b:	8b 45 08             	mov    0x8(%ebp),%eax
 804944e:	2b 45 0c             	sub    0xc(%ebp),%eax
 8049451:	2b 45 10             	sub    0x10(%ebp),%eax
 8049454:	89 c3                	mov    %eax,%ebx
 8049456:	89 c8                	mov    %ecx,%eax
 8049458:	99                   	cltd   
 8049459:	f7 fb                	idiv   %ebx
 804945b:	5b                   	pop    %ebx
 804945c:	5d                   	pop    %ebp
 804945d:	c3                   	ret    

0804945e <phase_0>:
 804945e:	55                   	push   %ebp
 804945f:	89 e5                	mov    %esp,%ebp
 8049461:	83 ec 08             	sub    $0x8,%esp
 8049464:	83 ec 08             	sub    $0x8,%esp
 8049467:	68 cc a1 04 08       	push   $0x804a1cc
 804946c:	ff 75 08             	pushl  0x8(%ebp)
 804946f:	e8 db 07 00 00       	call   8049c4f <strings_not_equal>
 8049474:	83 c4 10             	add    $0x10,%esp
 8049477:	85 c0                	test   %eax,%eax
 8049479:	74 0c                	je     8049487 <phase_0+0x29>
 804947b:	e8 37 0a 00 00       	call   8049eb7 <explode_bomb>
 8049480:	b8 00 00 00 00       	mov    $0x0,%eax
 8049485:	eb 05                	jmp    804948c <phase_0+0x2e>
 8049487:	b8 01 00 00 00       	mov    $0x1,%eax
 804948c:	c9                   	leave  
 804948d:	c3                   	ret    

0804948e <phase_1>:
 804948e:	55                   	push   %ebp
 804948f:	89 e5                	mov    %esp,%ebp
 8049491:	83 ec 18             	sub    $0x18,%esp
 8049494:	c7 45 f4 ff 7b a3 2c 	movl   $0x2ca37bff,-0xc(%ebp)
 804949b:	db 45 f4             	fildl  -0xc(%ebp)
 804949e:	d9 5d f0             	fstps  -0x10(%ebp)
 80494a1:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80494a4:	50                   	push   %eax
 80494a5:	8d 45 ec             	lea    -0x14(%ebp),%eax
 80494a8:	50                   	push   %eax
 80494a9:	68 fb a1 04 08       	push   $0x804a1fb
 80494ae:	ff 75 08             	pushl  0x8(%ebp)
 80494b1:	e8 1a fc ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80494b6:	83 c4 10             	add    $0x10,%esp
 80494b9:	83 f8 02             	cmp    $0x2,%eax
 80494bc:	74 0c                	je     80494ca <phase_1+0x3c>
 80494be:	e8 f4 09 00 00       	call   8049eb7 <explode_bomb>
 80494c3:	b8 00 00 00 00       	mov    $0x0,%eax
 80494c8:	eb 34                	jmp    80494fe <phase_1+0x70>
 80494ca:	8d 45 f0             	lea    -0x10(%ebp),%eax
 80494cd:	0f b7 00             	movzwl (%eax),%eax
 80494d0:	0f bf d0             	movswl %ax,%edx
 80494d3:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80494d6:	39 c2                	cmp    %eax,%edx
 80494d8:	75 13                	jne    80494ed <phase_1+0x5f>
 80494da:	8d 45 f0             	lea    -0x10(%ebp),%eax
 80494dd:	83 c0 02             	add    $0x2,%eax
 80494e0:	0f b7 00             	movzwl (%eax),%eax
 80494e3:	0f bf d0             	movswl %ax,%edx
 80494e6:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80494e9:	39 c2                	cmp    %eax,%edx
 80494eb:	74 0c                	je     80494f9 <phase_1+0x6b>
 80494ed:	e8 c5 09 00 00       	call   8049eb7 <explode_bomb>
 80494f2:	b8 00 00 00 00       	mov    $0x0,%eax
 80494f7:	eb 05                	jmp    80494fe <phase_1+0x70>
 80494f9:	b8 01 00 00 00       	mov    $0x1,%eax
 80494fe:	c9                   	leave  
 80494ff:	c3                   	ret    

08049500 <phase_2>:
 8049500:	55                   	push   %ebp
 8049501:	89 e5                	mov    %esp,%ebp
 8049503:	83 ec 28             	sub    $0x28,%esp
 8049506:	83 ec 04             	sub    $0x4,%esp
 8049509:	6a 06                	push   $0x6
 804950b:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804950e:	50                   	push   %eax
 804950f:	ff 75 08             	pushl  0x8(%ebp)
 8049512:	e8 7e 06 00 00       	call   8049b95 <read_n_numbers>
 8049517:	83 c4 10             	add    $0x10,%esp
 804951a:	85 c0                	test   %eax,%eax
 804951c:	75 07                	jne    8049525 <phase_2+0x25>
 804951e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049523:	eb 65                	jmp    804958a <phase_2+0x8a>
 8049525:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049528:	83 f8 1b             	cmp    $0x1b,%eax
 804952b:	75 08                	jne    8049535 <phase_2+0x35>
 804952d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049530:	83 f8 36             	cmp    $0x36,%eax
 8049533:	74 0c                	je     8049541 <phase_2+0x41>
 8049535:	e8 7d 09 00 00       	call   8049eb7 <explode_bomb>
 804953a:	b8 00 00 00 00       	mov    $0x0,%eax
 804953f:	eb 49                	jmp    804958a <phase_2+0x8a>
 8049541:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%ebp)
 8049548:	eb 35                	jmp    804957f <phase_2+0x7f>
 804954a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804954d:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
 8049551:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049554:	83 ea 02             	sub    $0x2,%edx
 8049557:	8b 54 95 dc          	mov    -0x24(%ebp,%edx,4),%edx
 804955b:	89 d1                	mov    %edx,%ecx
 804955d:	d1 f9                	sar    %ecx
 804955f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049562:	83 ea 01             	sub    $0x1,%edx
 8049565:	8b 54 95 dc          	mov    -0x24(%ebp,%edx,4),%edx
 8049569:	01 ca                	add    %ecx,%edx
 804956b:	39 d0                	cmp    %edx,%eax
 804956d:	74 0c                	je     804957b <phase_2+0x7b>
 804956f:	e8 43 09 00 00       	call   8049eb7 <explode_bomb>
 8049574:	b8 00 00 00 00       	mov    $0x0,%eax
 8049579:	eb 0f                	jmp    804958a <phase_2+0x8a>
 804957b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804957f:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
 8049583:	7e c5                	jle    804954a <phase_2+0x4a>
 8049585:	b8 01 00 00 00       	mov    $0x1,%eax
 804958a:	c9                   	leave  
 804958b:	c3                   	ret    

0804958c <phase_3>:
 804958c:	55                   	push   %ebp
 804958d:	89 e5                	mov    %esp,%ebp
 804958f:	83 ec 28             	sub    $0x28,%esp
 8049592:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049599:	83 ec 0c             	sub    $0xc,%esp
 804959c:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804959f:	50                   	push   %eax
 80495a0:	8d 45 e7             	lea    -0x19(%ebp),%eax
 80495a3:	50                   	push   %eax
 80495a4:	8d 45 ec             	lea    -0x14(%ebp),%eax
 80495a7:	50                   	push   %eax
 80495a8:	68 01 a2 04 08       	push   $0x804a201
 80495ad:	ff 75 08             	pushl  0x8(%ebp)
 80495b0:	e8 1b fb ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80495b5:	83 c4 20             	add    $0x20,%esp
 80495b8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80495bb:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
 80495bf:	7f 0f                	jg     80495d0 <phase_3+0x44>
 80495c1:	e8 f1 08 00 00       	call   8049eb7 <explode_bomb>
 80495c6:	b8 00 00 00 00       	mov    $0x0,%eax
 80495cb:	e9 49 01 00 00       	jmp    8049719 <phase_3+0x18d>
 80495d0:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80495d3:	2d d9 00 00 00       	sub    $0xd9,%eax
 80495d8:	83 f8 07             	cmp    $0x7,%eax
 80495db:	0f 87 f8 00 00 00    	ja     80496d9 <phase_3+0x14d>
 80495e1:	8b 04 85 0c a2 04 08 	mov    0x804a20c(,%eax,4),%eax
 80495e8:	ff e0                	jmp    *%eax
 80495ea:	c6 45 f7 62          	movb   $0x62,-0x9(%ebp)
 80495ee:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80495f1:	3d 87 02 00 00       	cmp    $0x287,%eax
 80495f6:	0f 84 ed 00 00 00    	je     80496e9 <phase_3+0x15d>
 80495fc:	e8 b6 08 00 00       	call   8049eb7 <explode_bomb>
 8049601:	b8 00 00 00 00       	mov    $0x0,%eax
 8049606:	e9 0e 01 00 00       	jmp    8049719 <phase_3+0x18d>
 804960b:	c6 45 f7 62          	movb   $0x62,-0x9(%ebp)
 804960f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049612:	3d 87 02 00 00       	cmp    $0x287,%eax
 8049617:	0f 84 cf 00 00 00    	je     80496ec <phase_3+0x160>
 804961d:	e8 95 08 00 00       	call   8049eb7 <explode_bomb>
 8049622:	b8 00 00 00 00       	mov    $0x0,%eax
 8049627:	e9 ed 00 00 00       	jmp    8049719 <phase_3+0x18d>
 804962c:	c6 45 f7 62          	movb   $0x62,-0x9(%ebp)
 8049630:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049633:	3d 87 02 00 00       	cmp    $0x287,%eax
 8049638:	0f 84 b1 00 00 00    	je     80496ef <phase_3+0x163>
 804963e:	e8 74 08 00 00       	call   8049eb7 <explode_bomb>
 8049643:	b8 00 00 00 00       	mov    $0x0,%eax
 8049648:	e9 cc 00 00 00       	jmp    8049719 <phase_3+0x18d>
 804964d:	c6 45 f7 62          	movb   $0x62,-0x9(%ebp)
 8049651:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049654:	3d 87 02 00 00       	cmp    $0x287,%eax
 8049659:	0f 84 93 00 00 00    	je     80496f2 <phase_3+0x166>
 804965f:	e8 53 08 00 00       	call   8049eb7 <explode_bomb>
 8049664:	b8 00 00 00 00       	mov    $0x0,%eax
 8049669:	e9 ab 00 00 00       	jmp    8049719 <phase_3+0x18d>
 804966e:	c6 45 f7 62          	movb   $0x62,-0x9(%ebp)
 8049672:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049675:	3d 87 02 00 00       	cmp    $0x287,%eax
 804967a:	74 79                	je     80496f5 <phase_3+0x169>
 804967c:	e8 36 08 00 00       	call   8049eb7 <explode_bomb>
 8049681:	b8 00 00 00 00       	mov    $0x0,%eax
 8049686:	e9 8e 00 00 00       	jmp    8049719 <phase_3+0x18d>
 804968b:	c6 45 f7 62          	movb   $0x62,-0x9(%ebp)
 804968f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049692:	3d 87 02 00 00       	cmp    $0x287,%eax
 8049697:	74 5f                	je     80496f8 <phase_3+0x16c>
 8049699:	e8 19 08 00 00       	call   8049eb7 <explode_bomb>
 804969e:	b8 00 00 00 00       	mov    $0x0,%eax
 80496a3:	eb 74                	jmp    8049719 <phase_3+0x18d>
 80496a5:	c6 45 f7 62          	movb   $0x62,-0x9(%ebp)
 80496a9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80496ac:	3d 87 02 00 00       	cmp    $0x287,%eax
 80496b1:	74 48                	je     80496fb <phase_3+0x16f>
 80496b3:	e8 ff 07 00 00       	call   8049eb7 <explode_bomb>
 80496b8:	b8 00 00 00 00       	mov    $0x0,%eax
 80496bd:	eb 5a                	jmp    8049719 <phase_3+0x18d>
 80496bf:	c6 45 f7 6e          	movb   $0x6e,-0x9(%ebp)
 80496c3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80496c6:	3d 52 02 00 00       	cmp    $0x252,%eax
 80496cb:	74 31                	je     80496fe <phase_3+0x172>
 80496cd:	e8 e5 07 00 00       	call   8049eb7 <explode_bomb>
 80496d2:	b8 00 00 00 00       	mov    $0x0,%eax
 80496d7:	eb 40                	jmp    8049719 <phase_3+0x18d>
 80496d9:	c6 45 f7 62          	movb   $0x62,-0x9(%ebp)
 80496dd:	e8 d5 07 00 00       	call   8049eb7 <explode_bomb>
 80496e2:	b8 00 00 00 00       	mov    $0x0,%eax
 80496e7:	eb 30                	jmp    8049719 <phase_3+0x18d>
 80496e9:	90                   	nop
 80496ea:	eb 13                	jmp    80496ff <phase_3+0x173>
 80496ec:	90                   	nop
 80496ed:	eb 10                	jmp    80496ff <phase_3+0x173>
 80496ef:	90                   	nop
 80496f0:	eb 0d                	jmp    80496ff <phase_3+0x173>
 80496f2:	90                   	nop
 80496f3:	eb 0a                	jmp    80496ff <phase_3+0x173>
 80496f5:	90                   	nop
 80496f6:	eb 07                	jmp    80496ff <phase_3+0x173>
 80496f8:	90                   	nop
 80496f9:	eb 04                	jmp    80496ff <phase_3+0x173>
 80496fb:	90                   	nop
 80496fc:	eb 01                	jmp    80496ff <phase_3+0x173>
 80496fe:	90                   	nop
 80496ff:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 8049703:	38 45 f7             	cmp    %al,-0x9(%ebp)
 8049706:	74 0c                	je     8049714 <phase_3+0x188>
 8049708:	e8 aa 07 00 00       	call   8049eb7 <explode_bomb>
 804970d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049712:	eb 05                	jmp    8049719 <phase_3+0x18d>
 8049714:	b8 01 00 00 00       	mov    $0x1,%eax
 8049719:	c9                   	leave  
 804971a:	c3                   	ret    

0804971b <func4>:
 804971b:	55                   	push   %ebp
 804971c:	89 e5                	mov    %esp,%ebp
 804971e:	53                   	push   %ebx
 804971f:	83 ec 04             	sub    $0x4,%esp
 8049722:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049726:	7f 07                	jg     804972f <func4+0x14>
 8049728:	b8 07 00 00 00       	mov    $0x7,%eax
 804972d:	eb 37                	jmp    8049766 <func4+0x4b>
 804972f:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 8049733:	75 07                	jne    804973c <func4+0x21>
 8049735:	b8 10 00 00 00       	mov    $0x10,%eax
 804973a:	eb 2a                	jmp    8049766 <func4+0x4b>
 804973c:	8b 45 08             	mov    0x8(%ebp),%eax
 804973f:	83 e8 01             	sub    $0x1,%eax
 8049742:	83 ec 0c             	sub    $0xc,%esp
 8049745:	50                   	push   %eax
 8049746:	e8 d0 ff ff ff       	call   804971b <func4>
 804974b:	83 c4 10             	add    $0x10,%esp
 804974e:	89 c3                	mov    %eax,%ebx
 8049750:	8b 45 08             	mov    0x8(%ebp),%eax
 8049753:	83 e8 02             	sub    $0x2,%eax
 8049756:	83 ec 0c             	sub    $0xc,%esp
 8049759:	50                   	push   %eax
 804975a:	e8 bc ff ff ff       	call   804971b <func4>
 804975f:	83 c4 10             	add    $0x10,%esp
 8049762:	d1 f8                	sar    %eax
 8049764:	01 d8                	add    %ebx,%eax
 8049766:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049769:	c9                   	leave  
 804976a:	c3                   	ret    

0804976b <phase_4>:
 804976b:	55                   	push   %ebp
 804976c:	89 e5                	mov    %esp,%ebp
 804976e:	83 ec 18             	sub    $0x18,%esp
 8049771:	8d 45 e8             	lea    -0x18(%ebp),%eax
 8049774:	50                   	push   %eax
 8049775:	8d 45 ec             	lea    -0x14(%ebp),%eax
 8049778:	50                   	push   %eax
 8049779:	68 fb a1 04 08       	push   $0x804a1fb
 804977e:	ff 75 08             	pushl  0x8(%ebp)
 8049781:	e8 4a f9 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049786:	83 c4 10             	add    $0x10,%esp
 8049789:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804978c:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)
 8049790:	75 08                	jne    804979a <phase_4+0x2f>
 8049792:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049795:	83 f8 09             	cmp    $0x9,%eax
 8049798:	7f 0c                	jg     80497a6 <phase_4+0x3b>
 804979a:	e8 18 07 00 00       	call   8049eb7 <explode_bomb>
 804979f:	b8 00 00 00 00       	mov    $0x0,%eax
 80497a4:	eb 2b                	jmp    80497d1 <phase_4+0x66>
 80497a6:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80497a9:	83 ec 0c             	sub    $0xc,%esp
 80497ac:	50                   	push   %eax
 80497ad:	e8 69 ff ff ff       	call   804971b <func4>
 80497b2:	83 c4 10             	add    $0x10,%esp
 80497b5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80497b8:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80497bb:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 80497be:	74 0c                	je     80497cc <phase_4+0x61>
 80497c0:	e8 f2 06 00 00       	call   8049eb7 <explode_bomb>
 80497c5:	b8 00 00 00 00       	mov    $0x0,%eax
 80497ca:	eb 05                	jmp    80497d1 <phase_4+0x66>
 80497cc:	b8 01 00 00 00       	mov    $0x1,%eax
 80497d1:	c9                   	leave  
 80497d2:	c3                   	ret    

080497d3 <phase_5>:
 80497d3:	55                   	push   %ebp
 80497d4:	89 e5                	mov    %esp,%ebp
 80497d6:	83 ec 28             	sub    $0x28,%esp
 80497d9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 80497dc:	50                   	push   %eax
 80497dd:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80497e0:	50                   	push   %eax
 80497e1:	68 fb a1 04 08       	push   $0x804a1fb
 80497e6:	ff 75 08             	pushl  0x8(%ebp)
 80497e9:	e8 e2 f8 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80497ee:	83 c4 10             	add    $0x10,%esp
 80497f1:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80497f4:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 80497f8:	7f 0c                	jg     8049806 <phase_5+0x33>
 80497fa:	e8 b8 06 00 00       	call   8049eb7 <explode_bomb>
 80497ff:	b8 00 00 00 00       	mov    $0x0,%eax
 8049804:	eb 57                	jmp    804985d <phase_5+0x8a>
 8049806:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049809:	83 e0 0f             	and    $0xf,%eax
 804980c:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804980f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049816:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804981d:	eb 17                	jmp    8049836 <phase_5+0x63>
 804981f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049823:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049826:	8b 04 85 00 c2 04 08 	mov    0x804c200(,%eax,4),%eax
 804982d:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049830:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049833:	01 45 f0             	add    %eax,-0x10(%ebp)
 8049836:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049839:	83 f8 0f             	cmp    $0xf,%eax
 804983c:	75 e1                	jne    804981f <phase_5+0x4c>
 804983e:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
 8049842:	75 08                	jne    804984c <phase_5+0x79>
 8049844:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049847:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 804984a:	74 0c                	je     8049858 <phase_5+0x85>
 804984c:	e8 66 06 00 00       	call   8049eb7 <explode_bomb>
 8049851:	b8 00 00 00 00       	mov    $0x0,%eax
 8049856:	eb 05                	jmp    804985d <phase_5+0x8a>
 8049858:	b8 01 00 00 00       	mov    $0x1,%eax
 804985d:	c9                   	leave  
 804985e:	c3                   	ret    

0804985f <phase_6>:
 804985f:	55                   	push   %ebp
 8049860:	89 e5                	mov    %esp,%ebp
 8049862:	83 ec 58             	sub    $0x58,%esp
 8049865:	c7 45 e8 2c c1 04 08 	movl   $0x804c12c,-0x18(%ebp)
 804986c:	83 ec 04             	sub    $0x4,%esp
 804986f:	6a 07                	push   $0x7
 8049871:	8d 45 cc             	lea    -0x34(%ebp),%eax
 8049874:	50                   	push   %eax
 8049875:	ff 75 08             	pushl  0x8(%ebp)
 8049878:	e8 18 03 00 00       	call   8049b95 <read_n_numbers>
 804987d:	83 c4 10             	add    $0x10,%esp
 8049880:	85 c0                	test   %eax,%eax
 8049882:	75 0a                	jne    804988e <phase_6+0x2f>
 8049884:	b8 00 00 00 00       	mov    $0x0,%eax
 8049889:	e9 37 01 00 00       	jmp    80499c5 <phase_6+0x166>
 804988e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049895:	eb 60                	jmp    80498f7 <phase_6+0x98>
 8049897:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804989a:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax
 804989e:	85 c0                	test   %eax,%eax
 80498a0:	7e 0c                	jle    80498ae <phase_6+0x4f>
 80498a2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80498a5:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax
 80498a9:	83 f8 07             	cmp    $0x7,%eax
 80498ac:	7e 0f                	jle    80498bd <phase_6+0x5e>
 80498ae:	e8 04 06 00 00       	call   8049eb7 <explode_bomb>
 80498b3:	b8 00 00 00 00       	mov    $0x0,%eax
 80498b8:	e9 08 01 00 00       	jmp    80499c5 <phase_6+0x166>
 80498bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80498c0:	83 c0 01             	add    $0x1,%eax
 80498c3:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80498c6:	eb 25                	jmp    80498ed <phase_6+0x8e>
 80498c8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80498cb:	8b 54 85 cc          	mov    -0x34(%ebp,%eax,4),%edx
 80498cf:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80498d2:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax
 80498d6:	39 c2                	cmp    %eax,%edx
 80498d8:	75 0f                	jne    80498e9 <phase_6+0x8a>
 80498da:	e8 d8 05 00 00       	call   8049eb7 <explode_bomb>
 80498df:	b8 00 00 00 00       	mov    $0x0,%eax
 80498e4:	e9 dc 00 00 00       	jmp    80499c5 <phase_6+0x166>
 80498e9:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 80498ed:	83 7d ec 06          	cmpl   $0x6,-0x14(%ebp)
 80498f1:	7e d5                	jle    80498c8 <phase_6+0x69>
 80498f3:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80498f7:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
 80498fb:	7e 9a                	jle    8049897 <phase_6+0x38>
 80498fd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049904:	eb 36                	jmp    804993c <phase_6+0xdd>
 8049906:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049909:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804990c:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 8049913:	eb 0d                	jmp    8049922 <phase_6+0xc3>
 8049915:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049918:	8b 40 08             	mov    0x8(%eax),%eax
 804991b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804991e:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 8049922:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049925:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax
 8049929:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 804992c:	7c e7                	jl     8049915 <phase_6+0xb6>
 804992e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049931:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049934:	89 54 85 b0          	mov    %edx,-0x50(%ebp,%eax,4)
 8049938:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804993c:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
 8049940:	7e c4                	jle    8049906 <phase_6+0xa7>
 8049942:	8b 45 b0             	mov    -0x50(%ebp),%eax
 8049945:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049948:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804994b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804994e:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8049955:	eb 1a                	jmp    8049971 <phase_6+0x112>
 8049957:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804995a:	8b 54 85 b0          	mov    -0x50(%ebp,%eax,4),%edx
 804995e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049961:	89 50 08             	mov    %edx,0x8(%eax)
 8049964:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049967:	8b 40 08             	mov    0x8(%eax),%eax
 804996a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804996d:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049971:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
 8049975:	7e e0                	jle    8049957 <phase_6+0xf8>
 8049977:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804997a:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8049981:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049984:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049987:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804998e:	eb 2a                	jmp    80499ba <phase_6+0x15b>
 8049990:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049993:	8b 10                	mov    (%eax),%edx
 8049995:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049998:	8b 40 08             	mov    0x8(%eax),%eax
 804999b:	8b 00                	mov    (%eax),%eax
 804999d:	39 c2                	cmp    %eax,%edx
 804999f:	7e 0c                	jle    80499ad <phase_6+0x14e>
 80499a1:	e8 11 05 00 00       	call   8049eb7 <explode_bomb>
 80499a6:	b8 00 00 00 00       	mov    $0x0,%eax
 80499ab:	eb 18                	jmp    80499c5 <phase_6+0x166>
 80499ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80499b0:	8b 40 08             	mov    0x8(%eax),%eax
 80499b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80499b6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80499ba:	83 7d f0 05          	cmpl   $0x5,-0x10(%ebp)
 80499be:	7e d0                	jle    8049990 <phase_6+0x131>
 80499c0:	b8 01 00 00 00       	mov    $0x1,%eax
 80499c5:	c9                   	leave  
 80499c6:	c3                   	ret    

080499c7 <fun7>:
 80499c7:	55                   	push   %ebp
 80499c8:	89 e5                	mov    %esp,%ebp
 80499ca:	83 ec 08             	sub    $0x8,%esp
 80499cd:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80499d1:	75 07                	jne    80499da <fun7+0x13>
 80499d3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80499d8:	eb 4e                	jmp    8049a28 <fun7+0x61>
 80499da:	8b 45 08             	mov    0x8(%ebp),%eax
 80499dd:	8b 00                	mov    (%eax),%eax
 80499df:	39 45 0c             	cmp    %eax,0xc(%ebp)
 80499e2:	7d 19                	jge    80499fd <fun7+0x36>
 80499e4:	8b 45 08             	mov    0x8(%ebp),%eax
 80499e7:	8b 40 04             	mov    0x4(%eax),%eax
 80499ea:	83 ec 08             	sub    $0x8,%esp
 80499ed:	ff 75 0c             	pushl  0xc(%ebp)
 80499f0:	50                   	push   %eax
 80499f1:	e8 d1 ff ff ff       	call   80499c7 <fun7>
 80499f6:	83 c4 10             	add    $0x10,%esp
 80499f9:	01 c0                	add    %eax,%eax
 80499fb:	eb 2b                	jmp    8049a28 <fun7+0x61>
 80499fd:	8b 45 08             	mov    0x8(%ebp),%eax
 8049a00:	8b 00                	mov    (%eax),%eax
 8049a02:	39 45 0c             	cmp    %eax,0xc(%ebp)
 8049a05:	75 07                	jne    8049a0e <fun7+0x47>
 8049a07:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a0c:	eb 1a                	jmp    8049a28 <fun7+0x61>
 8049a0e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049a11:	8b 40 08             	mov    0x8(%eax),%eax
 8049a14:	83 ec 08             	sub    $0x8,%esp
 8049a17:	ff 75 0c             	pushl  0xc(%ebp)
 8049a1a:	50                   	push   %eax
 8049a1b:	e8 a7 ff ff ff       	call   80499c7 <fun7>
 8049a20:	83 c4 10             	add    $0x10,%esp
 8049a23:	01 c0                	add    %eax,%eax
 8049a25:	83 c0 01             	add    $0x1,%eax
 8049a28:	c9                   	leave  
 8049a29:	c3                   	ret    

08049a2a <secret_phase>:
 8049a2a:	55                   	push   %ebp
 8049a2b:	89 e5                	mov    %esp,%ebp
 8049a2d:	83 ec 18             	sub    $0x18,%esp
 8049a30:	e8 3f 03 00 00       	call   8049d74 <read_line>
 8049a35:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049a38:	83 ec 0c             	sub    $0xc,%esp
 8049a3b:	ff 75 f4             	pushl  -0xc(%ebp)
 8049a3e:	e8 bd f6 ff ff       	call   8049100 <atoi@plt>
 8049a43:	83 c4 10             	add    $0x10,%esp
 8049a46:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049a49:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049a4d:	7e 09                	jle    8049a58 <secret_phase+0x2e>
 8049a4f:	81 7d f0 e9 03 00 00 	cmpl   $0x3e9,-0x10(%ebp)
 8049a56:	7e 0c                	jle    8049a64 <secret_phase+0x3a>
 8049a58:	e8 5a 04 00 00       	call   8049eb7 <explode_bomb>
 8049a5d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a62:	eb 42                	jmp    8049aa6 <secret_phase+0x7c>
 8049a64:	83 ec 08             	sub    $0x8,%esp
 8049a67:	ff 75 f0             	pushl  -0x10(%ebp)
 8049a6a:	68 e0 c1 04 08       	push   $0x804c1e0
 8049a6f:	e8 53 ff ff ff       	call   80499c7 <fun7>
 8049a74:	83 c4 10             	add    $0x10,%esp
 8049a77:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049a7a:	83 7d ec 03          	cmpl   $0x3,-0x14(%ebp)
 8049a7e:	74 0c                	je     8049a8c <secret_phase+0x62>
 8049a80:	e8 32 04 00 00       	call   8049eb7 <explode_bomb>
 8049a85:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a8a:	eb 1a                	jmp    8049aa6 <secret_phase+0x7c>
 8049a8c:	83 ec 0c             	sub    $0xc,%esp
 8049a8f:	68 2c a2 04 08       	push   $0x804a22c
 8049a94:	e8 f7 f5 ff ff       	call   8049090 <puts@plt>
 8049a99:	83 c4 10             	add    $0x10,%esp
 8049a9c:	e8 3f 04 00 00       	call   8049ee0 <phase_defused>
 8049aa1:	b8 01 00 00 00       	mov    $0x1,%eax
 8049aa6:	c9                   	leave  
 8049aa7:	c3                   	ret    

08049aa8 <sig_handler>:
 8049aa8:	55                   	push   %ebp
 8049aa9:	89 e5                	mov    %esp,%ebp
 8049aab:	83 ec 08             	sub    $0x8,%esp
 8049aae:	83 ec 0c             	sub    $0xc,%esp
 8049ab1:	68 54 a2 04 08       	push   $0x804a254
 8049ab6:	e8 d5 f5 ff ff       	call   8049090 <puts@plt>
 8049abb:	83 c4 10             	add    $0x10,%esp
 8049abe:	83 ec 0c             	sub    $0xc,%esp
 8049ac1:	6a 03                	push   $0x3
 8049ac3:	e8 a8 f5 ff ff       	call   8049070 <sleep@plt>
 8049ac8:	83 c4 10             	add    $0x10,%esp
 8049acb:	83 ec 0c             	sub    $0xc,%esp
 8049ace:	68 8c a2 04 08       	push   $0x804a28c
 8049ad3:	e8 58 f5 ff ff       	call   8049030 <printf@plt>
 8049ad8:	83 c4 10             	add    $0x10,%esp
 8049adb:	a1 44 c2 04 08       	mov    0x804c244,%eax
 8049ae0:	83 ec 0c             	sub    $0xc,%esp
 8049ae3:	50                   	push   %eax
 8049ae4:	e8 57 f5 ff ff       	call   8049040 <fflush@plt>
 8049ae9:	83 c4 10             	add    $0x10,%esp
 8049aec:	83 ec 0c             	sub    $0xc,%esp
 8049aef:	6a 01                	push   $0x1
 8049af1:	e8 7a f5 ff ff       	call   8049070 <sleep@plt>
 8049af6:	83 c4 10             	add    $0x10,%esp
 8049af9:	83 ec 0c             	sub    $0xc,%esp
 8049afc:	68 94 a2 04 08       	push   $0x804a294
 8049b01:	e8 8a f5 ff ff       	call   8049090 <puts@plt>
 8049b06:	83 c4 10             	add    $0x10,%esp
 8049b09:	83 ec 0c             	sub    $0xc,%esp
 8049b0c:	6a 10                	push   $0x10
 8049b0e:	e8 8d f5 ff ff       	call   80490a0 <exit@plt>

08049b13 <invalid_phase>:
 8049b13:	55                   	push   %ebp
 8049b14:	89 e5                	mov    %esp,%ebp
 8049b16:	83 ec 08             	sub    $0x8,%esp
 8049b19:	83 ec 08             	sub    $0x8,%esp
 8049b1c:	ff 75 08             	pushl  0x8(%ebp)
 8049b1f:	68 9c a2 04 08       	push   $0x804a29c
 8049b24:	e8 07 f5 ff ff       	call   8049030 <printf@plt>
 8049b29:	83 c4 10             	add    $0x10,%esp
 8049b2c:	83 ec 0c             	sub    $0xc,%esp
 8049b2f:	6a 08                	push   $0x8
 8049b31:	e8 6a f5 ff ff       	call   80490a0 <exit@plt>

08049b36 <read_six_numbers>:
 8049b36:	55                   	push   %ebp
 8049b37:	89 e5                	mov    %esp,%ebp
 8049b39:	56                   	push   %esi
 8049b3a:	53                   	push   %ebx
 8049b3b:	83 ec 10             	sub    $0x10,%esp
 8049b3e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b41:	8d 70 14             	lea    0x14(%eax),%esi
 8049b44:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b47:	8d 58 10             	lea    0x10(%eax),%ebx
 8049b4a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b4d:	8d 48 0c             	lea    0xc(%eax),%ecx
 8049b50:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b53:	8d 50 08             	lea    0x8(%eax),%edx
 8049b56:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b59:	83 c0 04             	add    $0x4,%eax
 8049b5c:	56                   	push   %esi
 8049b5d:	53                   	push   %ebx
 8049b5e:	51                   	push   %ecx
 8049b5f:	52                   	push   %edx
 8049b60:	50                   	push   %eax
 8049b61:	ff 75 0c             	pushl  0xc(%ebp)
 8049b64:	68 ad a2 04 08       	push   $0x804a2ad
 8049b69:	ff 75 08             	pushl  0x8(%ebp)
 8049b6c:	e8 5f f5 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049b71:	83 c4 20             	add    $0x20,%esp
 8049b74:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049b77:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
 8049b7b:	7f 0c                	jg     8049b89 <read_six_numbers+0x53>
 8049b7d:	e8 35 03 00 00       	call   8049eb7 <explode_bomb>
 8049b82:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b87:	eb 05                	jmp    8049b8e <read_six_numbers+0x58>
 8049b89:	b8 01 00 00 00       	mov    $0x1,%eax
 8049b8e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049b91:	5b                   	pop    %ebx
 8049b92:	5e                   	pop    %esi
 8049b93:	5d                   	pop    %ebp
 8049b94:	c3                   	ret    

08049b95 <read_n_numbers>:
 8049b95:	55                   	push   %ebp
 8049b96:	89 e5                	mov    %esp,%ebp
 8049b98:	83 ec 18             	sub    $0x18,%esp
 8049b9b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049ba2:	eb 70                	jmp    8049c14 <read_n_numbers+0x7f>
 8049ba4:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049ba8:	75 18                	jne    8049bc2 <read_n_numbers+0x2d>
 8049baa:	83 ec 08             	sub    $0x8,%esp
 8049bad:	68 bf a2 04 08       	push   $0x804a2bf
 8049bb2:	ff 75 08             	pushl  0x8(%ebp)
 8049bb5:	e8 36 f5 ff ff       	call   80490f0 <strtok@plt>
 8049bba:	83 c4 10             	add    $0x10,%esp
 8049bbd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049bc0:	eb 15                	jmp    8049bd7 <read_n_numbers+0x42>
 8049bc2:	83 ec 08             	sub    $0x8,%esp
 8049bc5:	68 bf a2 04 08       	push   $0x804a2bf
 8049bca:	6a 00                	push   $0x0
 8049bcc:	e8 1f f5 ff ff       	call   80490f0 <strtok@plt>
 8049bd1:	83 c4 10             	add    $0x10,%esp
 8049bd4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049bd7:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049bdb:	74 27                	je     8049c04 <read_n_numbers+0x6f>
 8049bdd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049be0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049be7:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049bea:	01 d0                	add    %edx,%eax
 8049bec:	83 ec 04             	sub    $0x4,%esp
 8049bef:	50                   	push   %eax
 8049bf0:	68 c3 a2 04 08       	push   $0x804a2c3
 8049bf5:	ff 75 f4             	pushl  -0xc(%ebp)
 8049bf8:	e8 d3 f4 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049bfd:	83 c4 10             	add    $0x10,%esp
 8049c00:	85 c0                	test   %eax,%eax
 8049c02:	7f 0c                	jg     8049c10 <read_n_numbers+0x7b>
 8049c04:	e8 ae 02 00 00       	call   8049eb7 <explode_bomb>
 8049c09:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c0e:	eb 11                	jmp    8049c21 <read_n_numbers+0x8c>
 8049c10:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049c14:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049c17:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049c1a:	7c 88                	jl     8049ba4 <read_n_numbers+0xf>
 8049c1c:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c21:	c9                   	leave  
 8049c22:	c3                   	ret    

08049c23 <string_length>:
 8049c23:	55                   	push   %ebp
 8049c24:	89 e5                	mov    %esp,%ebp
 8049c26:	83 ec 10             	sub    $0x10,%esp
 8049c29:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c2c:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049c2f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8049c36:	eb 08                	jmp    8049c40 <string_length+0x1d>
 8049c38:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8049c3c:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8049c40:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049c43:	0f b6 00             	movzbl (%eax),%eax
 8049c46:	84 c0                	test   %al,%al
 8049c48:	75 ee                	jne    8049c38 <string_length+0x15>
 8049c4a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049c4d:	c9                   	leave  
 8049c4e:	c3                   	ret    

08049c4f <strings_not_equal>:
 8049c4f:	55                   	push   %ebp
 8049c50:	89 e5                	mov    %esp,%ebp
 8049c52:	53                   	push   %ebx
 8049c53:	83 ec 10             	sub    $0x10,%esp
 8049c56:	ff 75 08             	pushl  0x8(%ebp)
 8049c59:	e8 c5 ff ff ff       	call   8049c23 <string_length>
 8049c5e:	83 c4 04             	add    $0x4,%esp
 8049c61:	89 c3                	mov    %eax,%ebx
 8049c63:	ff 75 0c             	pushl  0xc(%ebp)
 8049c66:	e8 b8 ff ff ff       	call   8049c23 <string_length>
 8049c6b:	83 c4 04             	add    $0x4,%esp
 8049c6e:	39 c3                	cmp    %eax,%ebx
 8049c70:	74 07                	je     8049c79 <strings_not_equal+0x2a>
 8049c72:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c77:	eb 3c                	jmp    8049cb5 <strings_not_equal+0x66>
 8049c79:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c7c:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049c7f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c82:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049c85:	eb 1f                	jmp    8049ca6 <strings_not_equal+0x57>
 8049c87:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049c8a:	0f b6 10             	movzbl (%eax),%edx
 8049c8d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049c90:	0f b6 00             	movzbl (%eax),%eax
 8049c93:	38 c2                	cmp    %al,%dl
 8049c95:	74 07                	je     8049c9e <strings_not_equal+0x4f>
 8049c97:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c9c:	eb 17                	jmp    8049cb5 <strings_not_equal+0x66>
 8049c9e:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8049ca2:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049ca6:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049ca9:	0f b6 00             	movzbl (%eax),%eax
 8049cac:	84 c0                	test   %al,%al
 8049cae:	75 d7                	jne    8049c87 <strings_not_equal+0x38>
 8049cb0:	b8 00 00 00 00       	mov    $0x0,%eax
 8049cb5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049cb8:	c9                   	leave  
 8049cb9:	c3                   	ret    

08049cba <initialize_bomb>:
 8049cba:	55                   	push   %ebp
 8049cbb:	89 e5                	mov    %esp,%ebp
 8049cbd:	83 ec 08             	sub    $0x8,%esp
 8049cc0:	83 ec 08             	sub    $0x8,%esp
 8049cc3:	68 a8 9a 04 08       	push   $0x8049aa8
 8049cc8:	6a 02                	push   $0x2
 8049cca:	e8 91 f3 ff ff       	call   8049060 <signal@plt>
 8049ccf:	83 c4 10             	add    $0x10,%esp
 8049cd2:	90                   	nop
 8049cd3:	c9                   	leave  
 8049cd4:	c3                   	ret    

08049cd5 <initialize_bomb_solve>:
 8049cd5:	55                   	push   %ebp
 8049cd6:	89 e5                	mov    %esp,%ebp
 8049cd8:	90                   	nop
 8049cd9:	5d                   	pop    %ebp
 8049cda:	c3                   	ret    

08049cdb <blank_line>:
 8049cdb:	55                   	push   %ebp
 8049cdc:	89 e5                	mov    %esp,%ebp
 8049cde:	83 ec 08             	sub    $0x8,%esp
 8049ce1:	eb 30                	jmp    8049d13 <blank_line+0x38>
 8049ce3:	e8 28 f4 ff ff       	call   8049110 <__ctype_b_loc@plt>
 8049ce8:	8b 08                	mov    (%eax),%ecx
 8049cea:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ced:	8d 50 01             	lea    0x1(%eax),%edx
 8049cf0:	89 55 08             	mov    %edx,0x8(%ebp)
 8049cf3:	0f b6 00             	movzbl (%eax),%eax
 8049cf6:	0f be c0             	movsbl %al,%eax
 8049cf9:	01 c0                	add    %eax,%eax
 8049cfb:	01 c8                	add    %ecx,%eax
 8049cfd:	0f b7 00             	movzwl (%eax),%eax
 8049d00:	0f b7 c0             	movzwl %ax,%eax
 8049d03:	25 00 20 00 00       	and    $0x2000,%eax
 8049d08:	85 c0                	test   %eax,%eax
 8049d0a:	75 07                	jne    8049d13 <blank_line+0x38>
 8049d0c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d11:	eb 0f                	jmp    8049d22 <blank_line+0x47>
 8049d13:	8b 45 08             	mov    0x8(%ebp),%eax
 8049d16:	0f b6 00             	movzbl (%eax),%eax
 8049d19:	84 c0                	test   %al,%al
 8049d1b:	75 c6                	jne    8049ce3 <blank_line+0x8>
 8049d1d:	b8 01 00 00 00       	mov    $0x1,%eax
 8049d22:	c9                   	leave  
 8049d23:	c3                   	ret    

08049d24 <skip>:
 8049d24:	55                   	push   %ebp
 8049d25:	89 e5                	mov    %esp,%ebp
 8049d27:	83 ec 18             	sub    $0x18,%esp
 8049d2a:	8b 0d 50 c2 04 08    	mov    0x804c250,%ecx
 8049d30:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049d36:	89 d0                	mov    %edx,%eax
 8049d38:	c1 e0 02             	shl    $0x2,%eax
 8049d3b:	01 d0                	add    %edx,%eax
 8049d3d:	c1 e0 04             	shl    $0x4,%eax
 8049d40:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049d45:	83 ec 04             	sub    $0x4,%esp
 8049d48:	51                   	push   %ecx
 8049d49:	6a 50                	push   $0x50
 8049d4b:	50                   	push   %eax
 8049d4c:	e8 ff f2 ff ff       	call   8049050 <fgets@plt>
 8049d51:	83 c4 10             	add    $0x10,%esp
 8049d54:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049d57:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049d5b:	74 12                	je     8049d6f <skip+0x4b>
 8049d5d:	83 ec 0c             	sub    $0xc,%esp
 8049d60:	ff 75 f4             	pushl  -0xc(%ebp)
 8049d63:	e8 73 ff ff ff       	call   8049cdb <blank_line>
 8049d68:	83 c4 10             	add    $0x10,%esp
 8049d6b:	85 c0                	test   %eax,%eax
 8049d6d:	75 bb                	jne    8049d2a <skip+0x6>
 8049d6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049d72:	c9                   	leave  
 8049d73:	c3                   	ret    

08049d74 <read_line>:
 8049d74:	55                   	push   %ebp
 8049d75:	89 e5                	mov    %esp,%ebp
 8049d77:	83 ec 18             	sub    $0x18,%esp
 8049d7a:	e8 a5 ff ff ff       	call   8049d24 <skip>
 8049d7f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049d82:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049d86:	75 79                	jne    8049e01 <read_line+0x8d>
 8049d88:	8b 15 50 c2 04 08    	mov    0x804c250,%edx
 8049d8e:	a1 40 c2 04 08       	mov    0x804c240,%eax
 8049d93:	39 c2                	cmp    %eax,%edx
 8049d95:	75 1a                	jne    8049db1 <read_line+0x3d>
 8049d97:	83 ec 0c             	sub    $0xc,%esp
 8049d9a:	68 c6 a2 04 08       	push   $0x804a2c6
 8049d9f:	e8 ec f2 ff ff       	call   8049090 <puts@plt>
 8049da4:	83 c4 10             	add    $0x10,%esp
 8049da7:	83 ec 0c             	sub    $0xc,%esp
 8049daa:	6a 08                	push   $0x8
 8049dac:	e8 ef f2 ff ff       	call   80490a0 <exit@plt>
 8049db1:	83 ec 0c             	sub    $0xc,%esp
 8049db4:	68 e4 a2 04 08       	push   $0x804a2e4
 8049db9:	e8 c2 f2 ff ff       	call   8049080 <getenv@plt>
 8049dbe:	83 c4 10             	add    $0x10,%esp
 8049dc1:	85 c0                	test   %eax,%eax
 8049dc3:	74 0a                	je     8049dcf <read_line+0x5b>
 8049dc5:	83 ec 0c             	sub    $0xc,%esp
 8049dc8:	6a 00                	push   $0x0
 8049dca:	e8 d1 f2 ff ff       	call   80490a0 <exit@plt>
 8049dcf:	a1 40 c2 04 08       	mov    0x804c240,%eax
 8049dd4:	a3 50 c2 04 08       	mov    %eax,0x804c250
 8049dd9:	e8 46 ff ff ff       	call   8049d24 <skip>
 8049dde:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049de1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049de5:	75 1a                	jne    8049e01 <read_line+0x8d>
 8049de7:	83 ec 0c             	sub    $0xc,%esp
 8049dea:	68 c6 a2 04 08       	push   $0x804a2c6
 8049def:	e8 9c f2 ff ff       	call   8049090 <puts@plt>
 8049df4:	83 c4 10             	add    $0x10,%esp
 8049df7:	83 ec 0c             	sub    $0xc,%esp
 8049dfa:	6a 00                	push   $0x0
 8049dfc:	e8 9f f2 ff ff       	call   80490a0 <exit@plt>
 8049e01:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049e07:	89 d0                	mov    %edx,%eax
 8049e09:	c1 e0 02             	shl    $0x2,%eax
 8049e0c:	01 d0                	add    %edx,%eax
 8049e0e:	c1 e0 04             	shl    $0x4,%eax
 8049e11:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049e16:	83 ec 0c             	sub    $0xc,%esp
 8049e19:	50                   	push   %eax
 8049e1a:	e8 91 f2 ff ff       	call   80490b0 <strlen@plt>
 8049e1f:	83 c4 10             	add    $0x10,%esp
 8049e22:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049e25:	83 7d f0 4e          	cmpl   $0x4e,-0x10(%ebp)
 8049e29:	7e 4d                	jle    8049e78 <read_line+0x104>
 8049e2b:	83 ec 0c             	sub    $0xc,%esp
 8049e2e:	68 ef a2 04 08       	push   $0x804a2ef
 8049e33:	e8 58 f2 ff ff       	call   8049090 <puts@plt>
 8049e38:	83 c4 10             	add    $0x10,%esp
 8049e3b:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049e41:	8d 42 01             	lea    0x1(%edx),%eax
 8049e44:	a3 4c c2 04 08       	mov    %eax,0x804c24c
 8049e49:	89 d0                	mov    %edx,%eax
 8049e4b:	c1 e0 02             	shl    $0x2,%eax
 8049e4e:	01 d0                	add    %edx,%eax
 8049e50:	c1 e0 04             	shl    $0x4,%eax
 8049e53:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049e58:	c7 00 2a 2a 2a 74    	movl   $0x742a2a2a,(%eax)
 8049e5e:	c7 40 04 72 75 6e 63 	movl   $0x636e7572,0x4(%eax)
 8049e65:	c7 40 08 61 74 65 64 	movl   $0x64657461,0x8(%eax)
 8049e6c:	c7 40 0c 2a 2a 2a 00 	movl   $0x2a2a2a,0xc(%eax)
 8049e73:	e8 3f 00 00 00       	call   8049eb7 <explode_bomb>
 8049e78:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049e7e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049e81:	8d 48 ff             	lea    -0x1(%eax),%ecx
 8049e84:	89 d0                	mov    %edx,%eax
 8049e86:	c1 e0 02             	shl    $0x2,%eax
 8049e89:	01 d0                	add    %edx,%eax
 8049e8b:	c1 e0 04             	shl    $0x4,%eax
 8049e8e:	01 c8                	add    %ecx,%eax
 8049e90:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049e95:	c6 00 00             	movb   $0x0,(%eax)
 8049e98:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049e9e:	8d 42 01             	lea    0x1(%edx),%eax
 8049ea1:	a3 4c c2 04 08       	mov    %eax,0x804c24c
 8049ea6:	89 d0                	mov    %edx,%eax
 8049ea8:	c1 e0 02             	shl    $0x2,%eax
 8049eab:	01 d0                	add    %edx,%eax
 8049ead:	c1 e0 04             	shl    $0x4,%eax
 8049eb0:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049eb5:	c9                   	leave  
 8049eb6:	c3                   	ret    

08049eb7 <explode_bomb>:
 8049eb7:	55                   	push   %ebp
 8049eb8:	89 e5                	mov    %esp,%ebp
 8049eba:	83 ec 08             	sub    $0x8,%esp
 8049ebd:	83 ec 0c             	sub    $0xc,%esp
 8049ec0:	68 0a a3 04 08       	push   $0x804a30a
 8049ec5:	e8 c6 f1 ff ff       	call   8049090 <puts@plt>
 8049eca:	83 c4 10             	add    $0x10,%esp
 8049ecd:	83 ec 0c             	sub    $0xc,%esp
 8049ed0:	68 13 a3 04 08       	push   $0x804a313
 8049ed5:	e8 b6 f1 ff ff       	call   8049090 <puts@plt>
 8049eda:	83 c4 10             	add    $0x10,%esp
 8049edd:	90                   	nop
 8049ede:	c9                   	leave  
 8049edf:	c3                   	ret    

08049ee0 <phase_defused>:
 8049ee0:	55                   	push   %ebp
 8049ee1:	89 e5                	mov    %esp,%ebp
 8049ee3:	83 ec 68             	sub    $0x68,%esp
 8049ee6:	a1 4c c2 04 08       	mov    0x804c24c,%eax
 8049eeb:	83 f8 07             	cmp    $0x7,%eax
 8049eee:	75 77                	jne    8049f67 <phase_defused+0x87>
 8049ef0:	83 ec 0c             	sub    $0xc,%esp
 8049ef3:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049ef6:	50                   	push   %eax
 8049ef7:	8d 45 9c             	lea    -0x64(%ebp),%eax
 8049efa:	50                   	push   %eax
 8049efb:	8d 45 a0             	lea    -0x60(%ebp),%eax
 8049efe:	50                   	push   %eax
 8049eff:	68 2a a3 04 08       	push   $0x804a32a
 8049f04:	68 a0 c3 04 08       	push   $0x804c3a0
 8049f09:	e8 c2 f1 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049f0e:	83 c4 20             	add    $0x20,%esp
 8049f11:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049f14:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
 8049f18:	75 3d                	jne    8049f57 <phase_defused+0x77>
 8049f1a:	83 ec 08             	sub    $0x8,%esp
 8049f1d:	68 33 a3 04 08       	push   $0x804a333
 8049f22:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049f25:	50                   	push   %eax
 8049f26:	e8 24 fd ff ff       	call   8049c4f <strings_not_equal>
 8049f2b:	83 c4 10             	add    $0x10,%esp
 8049f2e:	85 c0                	test   %eax,%eax
 8049f30:	75 25                	jne    8049f57 <phase_defused+0x77>
 8049f32:	83 ec 0c             	sub    $0xc,%esp
 8049f35:	68 3c a3 04 08       	push   $0x804a33c
 8049f3a:	e8 51 f1 ff ff       	call   8049090 <puts@plt>
 8049f3f:	83 c4 10             	add    $0x10,%esp
 8049f42:	83 ec 0c             	sub    $0xc,%esp
 8049f45:	68 64 a3 04 08       	push   $0x804a364
 8049f4a:	e8 41 f1 ff ff       	call   8049090 <puts@plt>
 8049f4f:	83 c4 10             	add    $0x10,%esp
 8049f52:	e8 d3 fa ff ff       	call   8049a2a <secret_phase>
 8049f57:	83 ec 0c             	sub    $0xc,%esp
 8049f5a:	68 9c a3 04 08       	push   $0x804a39c
 8049f5f:	e8 2c f1 ff ff       	call   8049090 <puts@plt>
 8049f64:	83 c4 10             	add    $0x10,%esp
 8049f67:	90                   	nop
 8049f68:	c9                   	leave  
 8049f69:	c3                   	ret    
 8049f6a:	66 90                	xchg   %ax,%ax
 8049f6c:	66 90                	xchg   %ax,%ax
 8049f6e:	66 90                	xchg   %ax,%ax

08049f70 <__libc_csu_init>:
 8049f70:	55                   	push   %ebp
 8049f71:	57                   	push   %edi
 8049f72:	56                   	push   %esi
 8049f73:	53                   	push   %ebx
 8049f74:	e8 f7 f1 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049f79:	81 c3 87 20 00 00    	add    $0x2087,%ebx
 8049f7f:	83 ec 0c             	sub    $0xc,%esp
 8049f82:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 8049f86:	e8 75 f0 ff ff       	call   8049000 <_init>
 8049f8b:	8d b3 10 ff ff ff    	lea    -0xf0(%ebx),%esi
 8049f91:	8d 83 0c ff ff ff    	lea    -0xf4(%ebx),%eax
 8049f97:	29 c6                	sub    %eax,%esi
 8049f99:	c1 fe 02             	sar    $0x2,%esi
 8049f9c:	74 1f                	je     8049fbd <__libc_csu_init+0x4d>
 8049f9e:	31 ff                	xor    %edi,%edi
 8049fa0:	83 ec 04             	sub    $0x4,%esp
 8049fa3:	55                   	push   %ebp
 8049fa4:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049fa8:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049fac:	ff 94 bb 0c ff ff ff 	call   *-0xf4(%ebx,%edi,4)
 8049fb3:	83 c7 01             	add    $0x1,%edi
 8049fb6:	83 c4 10             	add    $0x10,%esp
 8049fb9:	39 fe                	cmp    %edi,%esi
 8049fbb:	75 e3                	jne    8049fa0 <__libc_csu_init+0x30>
 8049fbd:	83 c4 0c             	add    $0xc,%esp
 8049fc0:	5b                   	pop    %ebx
 8049fc1:	5e                   	pop    %esi
 8049fc2:	5f                   	pop    %edi
 8049fc3:	5d                   	pop    %ebp
 8049fc4:	c3                   	ret    
 8049fc5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049fcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08049fd0 <__libc_csu_fini>:
 8049fd0:	c3                   	ret    

Disassembly of section .fini:

08049fd4 <_fini>:
 8049fd4:	53                   	push   %ebx
 8049fd5:	83 ec 08             	sub    $0x8,%esp
 8049fd8:	e8 93 f1 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049fdd:	81 c3 23 20 00 00    	add    $0x2023,%ebx
 8049fe3:	83 c4 08             	add    $0x8,%esp
 8049fe6:	5b                   	pop    %ebx
 8049fe7:	c3                   	ret    
