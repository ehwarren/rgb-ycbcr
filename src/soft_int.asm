
bin/soft_int.out:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	e8 c3 00 00 00       	callq  40057c <call_gmon_start>
  4004b9:	e8 52 01 00 00       	callq  400610 <frame_dummy>
  4004be:	e8 0d 07 00 00       	callq  400bd0 <__do_global_ctors_aux>
  4004c3:	48 83 c4 08          	add    $0x8,%rsp
  4004c7:	c3                   	retq   

Disassembly of section .plt:

00000000004004c8 <printf@plt-0x10>:
  4004c8:	ff 35 fa 0c 20 00    	pushq  0x200cfa(%rip)        # 6011c8 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004ce:	ff 25 fc 0c 20 00    	jmpq   *0x200cfc(%rip)        # 6011d0 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004d4:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004d8 <printf@plt>:
  4004d8:	ff 25 fa 0c 20 00    	jmpq   *0x200cfa(%rip)        # 6011d8 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004de:	68 00 00 00 00       	pushq  $0x0
  4004e3:	e9 e0 ff ff ff       	jmpq   4004c8 <_init+0x18>

00000000004004e8 <gettimeofday@plt>:
  4004e8:	ff 25 f2 0c 20 00    	jmpq   *0x200cf2(%rip)        # 6011e0 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004ee:	68 01 00 00 00       	pushq  $0x1
  4004f3:	e9 d0 ff ff ff       	jmpq   4004c8 <_init+0x18>

00000000004004f8 <fopen@plt>:
  4004f8:	ff 25 ea 0c 20 00    	jmpq   *0x200cea(%rip)        # 6011e8 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004fe:	68 02 00 00 00       	pushq  $0x2
  400503:	e9 c0 ff ff ff       	jmpq   4004c8 <_init+0x18>

0000000000400508 <__libc_start_main@plt>:
  400508:	ff 25 e2 0c 20 00    	jmpq   *0x200ce2(%rip)        # 6011f0 <_GLOBAL_OFFSET_TABLE_+0x30>
  40050e:	68 03 00 00 00       	pushq  $0x3
  400513:	e9 b0 ff ff ff       	jmpq   4004c8 <_init+0x18>

0000000000400518 <fread@plt>:
  400518:	ff 25 da 0c 20 00    	jmpq   *0x200cda(%rip)        # 6011f8 <_GLOBAL_OFFSET_TABLE_+0x38>
  40051e:	68 04 00 00 00       	pushq  $0x4
  400523:	e9 a0 ff ff ff       	jmpq   4004c8 <_init+0x18>

0000000000400528 <fclose@plt>:
  400528:	ff 25 d2 0c 20 00    	jmpq   *0x200cd2(%rip)        # 601200 <_GLOBAL_OFFSET_TABLE_+0x40>
  40052e:	68 05 00 00 00       	pushq  $0x5
  400533:	e9 90 ff ff ff       	jmpq   4004c8 <_init+0x18>

0000000000400538 <fwrite@plt>:
  400538:	ff 25 ca 0c 20 00    	jmpq   *0x200cca(%rip)        # 601208 <_GLOBAL_OFFSET_TABLE_+0x48>
  40053e:	68 06 00 00 00       	pushq  $0x6
  400543:	e9 80 ff ff ff       	jmpq   4004c8 <_init+0x18>

Disassembly of section .text:

0000000000400550 <_start>:
  400550:	31 ed                	xor    %ebp,%ebp
  400552:	49 89 d1             	mov    %rdx,%r9
  400555:	5e                   	pop    %rsi
  400556:	48 89 e2             	mov    %rsp,%rdx
  400559:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40055d:	50                   	push   %rax
  40055e:	54                   	push   %rsp
  40055f:	49 c7 c0 30 0b 40 00 	mov    $0x400b30,%r8
  400566:	48 c7 c1 40 0b 40 00 	mov    $0x400b40,%rcx
  40056d:	48 c7 c7 34 06 40 00 	mov    $0x400634,%rdi
  400574:	e8 8f ff ff ff       	callq  400508 <__libc_start_main@plt>
  400579:	f4                   	hlt    
  40057a:	90                   	nop
  40057b:	90                   	nop

000000000040057c <call_gmon_start>:
  40057c:	48 83 ec 08          	sub    $0x8,%rsp
  400580:	48 8b 05 31 0c 20 00 	mov    0x200c31(%rip),%rax        # 6011b8 <_DYNAMIC+0x190>
  400587:	48 85 c0             	test   %rax,%rax
  40058a:	74 02                	je     40058e <call_gmon_start+0x12>
  40058c:	ff d0                	callq  *%rax
  40058e:	48 83 c4 08          	add    $0x8,%rsp
  400592:	c3                   	retq   
  400593:	90                   	nop
  400594:	90                   	nop
  400595:	90                   	nop
  400596:	90                   	nop
  400597:	90                   	nop
  400598:	90                   	nop
  400599:	90                   	nop
  40059a:	90                   	nop
  40059b:	90                   	nop
  40059c:	90                   	nop
  40059d:	90                   	nop
  40059e:	90                   	nop
  40059f:	90                   	nop

00000000004005a0 <__do_global_dtors_aux>:
  4005a0:	55                   	push   %rbp
  4005a1:	48 89 e5             	mov    %rsp,%rbp
  4005a4:	53                   	push   %rbx
  4005a5:	48 83 ec 08          	sub    $0x8,%rsp
  4005a9:	80 3d 70 0c 20 00 00 	cmpb   $0x0,0x200c70(%rip)        # 601220 <completed.6349>
  4005b0:	75 4b                	jne    4005fd <__do_global_dtors_aux+0x5d>
  4005b2:	bb 18 10 60 00       	mov    $0x601018,%ebx
  4005b7:	48 8b 05 6a 0c 20 00 	mov    0x200c6a(%rip),%rax        # 601228 <dtor_idx.6351>
  4005be:	48 81 eb 10 10 60 00 	sub    $0x601010,%rbx
  4005c5:	48 c1 fb 03          	sar    $0x3,%rbx
  4005c9:	48 83 eb 01          	sub    $0x1,%rbx
  4005cd:	48 39 d8             	cmp    %rbx,%rax
  4005d0:	73 24                	jae    4005f6 <__do_global_dtors_aux+0x56>
  4005d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4005d8:	48 83 c0 01          	add    $0x1,%rax
  4005dc:	48 89 05 45 0c 20 00 	mov    %rax,0x200c45(%rip)        # 601228 <dtor_idx.6351>
  4005e3:	ff 14 c5 10 10 60 00 	callq  *0x601010(,%rax,8)
  4005ea:	48 8b 05 37 0c 20 00 	mov    0x200c37(%rip),%rax        # 601228 <dtor_idx.6351>
  4005f1:	48 39 d8             	cmp    %rbx,%rax
  4005f4:	72 e2                	jb     4005d8 <__do_global_dtors_aux+0x38>
  4005f6:	c6 05 23 0c 20 00 01 	movb   $0x1,0x200c23(%rip)        # 601220 <completed.6349>
  4005fd:	48 83 c4 08          	add    $0x8,%rsp
  400601:	5b                   	pop    %rbx
  400602:	c9                   	leaveq 
  400603:	c3                   	retq   
  400604:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40060b:	00 00 00 00 00 

0000000000400610 <frame_dummy>:
  400610:	48 83 3d 08 0a 20 00 	cmpq   $0x0,0x200a08(%rip)        # 601020 <__JCR_END__>
  400617:	00 
  400618:	55                   	push   %rbp
  400619:	48 89 e5             	mov    %rsp,%rbp
  40061c:	74 12                	je     400630 <frame_dummy+0x20>
  40061e:	b8 00 00 00 00       	mov    $0x0,%eax
  400623:	48 85 c0             	test   %rax,%rax
  400626:	74 08                	je     400630 <frame_dummy+0x20>
  400628:	bf 20 10 60 00       	mov    $0x601020,%edi
  40062d:	c9                   	leaveq 
  40062e:	ff e0                	jmpq   *%rax
  400630:	c9                   	leaveq 
  400631:	c3                   	retq   
  400632:	90                   	nop
  400633:	90                   	nop

0000000000400634 <main>:
  400634:	55                   	push   %rbp
  400635:	48 89 e5             	mov    %rsp,%rbp
  400638:	53                   	push   %rbx
  400639:	48 83 ec 48          	sub    $0x48,%rsp
  40063d:	89 7d bc             	mov    %edi,-0x44(%rbp)
  400640:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  400644:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400648:	48 83 c0 08          	add    $0x8,%rax
  40064c:	48 8b 10             	mov    (%rax),%rdx
  40064f:	b8 28 0c 40 00       	mov    $0x400c28,%eax
  400654:	48 89 d6             	mov    %rdx,%rsi
  400657:	48 89 c7             	mov    %rax,%rdi
  40065a:	b8 00 00 00 00       	mov    $0x0,%eax
  40065f:	e8 74 fe ff ff       	callq  4004d8 <printf@plt>
  400664:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400668:	48 83 c0 08          	add    $0x8,%rax
  40066c:	48 8b 00             	mov    (%rax),%rax
  40066f:	48 89 c7             	mov    %rax,%rdi
  400672:	b8 00 00 00 00       	mov    $0x0,%eax
  400677:	e8 b3 02 00 00       	callq  40092f <loadFile>
  40067c:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400680:	be 00 00 00 00       	mov    $0x0,%esi
  400685:	48 89 c7             	mov    %rax,%rdi
  400688:	e8 5b fe ff ff       	callq  4004e8 <gettimeofday@plt>
  40068d:	c7 05 a9 a7 fa 01 00 	movl   $0x0,0x1faa7a9(%rip)        # 23aae40 <i>
  400694:	00 00 00 
  400697:	e9 56 01 00 00       	jmpq   4007f2 <main+0x1be>
  40069c:	c7 05 a6 a7 fa 01 00 	movl   $0x0,0x1faa7a6(%rip)        # 23aae4c <j>
  4006a3:	00 00 00 
  4006a6:	e9 26 01 00 00       	jmpq   4007d1 <main+0x19d>
  4006ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4006b0:	e8 08 04 00 00       	callq  400abd <loadNextRGB>
  4006b5:	8b 05 95 a7 fa 01    	mov    0x1faa795(%rip),%eax        # 23aae50 <r>
  4006bb:	8d 50 40             	lea    0x40(%rax),%edx
  4006be:	8b 05 94 a7 fa 01    	mov    0x1faa794(%rip),%eax        # 23aae58 <g>
  4006c4:	01 c0                	add    %eax,%eax
  4006c6:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  4006c9:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
  4006d0:	8b 15 72 a7 fa 01    	mov    0x1faa772(%rip),%edx        # 23aae48 <b>
  4006d6:	89 d0                	mov    %edx,%eax
  4006d8:	01 c0                	add    %eax,%eax
  4006da:	01 d0                	add    %edx,%eax
  4006dc:	8d 04 01             	lea    (%rcx,%rax,1),%eax
  4006df:	8d 50 1f             	lea    0x1f(%rax),%edx
  4006e2:	85 c0                	test   %eax,%eax
  4006e4:	0f 48 c2             	cmovs  %edx,%eax
  4006e7:	c1 f8 05             	sar    $0x5,%eax
  4006ea:	89 05 54 a7 fa 01    	mov    %eax,0x1faa754(%rip)        # 23aae44 <y>
  4006f0:	8b 15 5a a7 fa 01    	mov    0x1faa75a(%rip),%edx        # 23aae50 <r>
  4006f6:	89 d0                	mov    %edx,%eax
  4006f8:	01 c0                	add    %eax,%eax
  4006fa:	01 d0                	add    %edx,%eax
  4006fc:	01 c0                	add    %eax,%eax
  4006fe:	89 c1                	mov    %eax,%ecx
  400700:	f7 d9                	neg    %ecx
  400702:	8b 15 50 a7 fa 01    	mov    0x1faa750(%rip),%edx        # 23aae58 <g>
  400708:	89 d0                	mov    %edx,%eax
  40070a:	c1 e0 03             	shl    $0x3,%eax
  40070d:	01 d0                	add    %edx,%eax
  40070f:	f7 d8                	neg    %eax
  400711:	8d 04 01             	lea    (%rcx,%rax,1),%eax
  400714:	8d 88 00 10 00 00    	lea    0x1000(%rax),%ecx
  40071a:	8b 05 28 a7 fa 01    	mov    0x1faa728(%rip),%eax        # 23aae48 <b>
  400720:	01 c0                	add    %eax,%eax
  400722:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  400729:	89 d3                	mov    %edx,%ebx
  40072b:	29 c3                	sub    %eax,%ebx
  40072d:	89 d8                	mov    %ebx,%eax
  40072f:	8d 04 01             	lea    (%rcx,%rax,1),%eax
  400732:	8d 50 1f             	lea    0x1f(%rax),%edx
  400735:	85 c0                	test   %eax,%eax
  400737:	0f 48 c2             	cmovs  %edx,%eax
  40073a:	c1 f8 05             	sar    $0x5,%eax
  40073d:	89 c2                	mov    %eax,%edx
  40073f:	8b 05 0f a7 fa 01    	mov    0x1faa70f(%rip),%eax        # 23aae54 <cb>
  400745:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  400748:	89 c2                	mov    %eax,%edx
  40074a:	c1 ea 1f             	shr    $0x1f,%edx
  40074d:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  400750:	d1 f8                	sar    %eax
  400752:	89 05 fc a6 fa 01    	mov    %eax,0x1faa6fc(%rip)        # 23aae54 <cb>
  400758:	8b 05 f2 a6 fa 01    	mov    0x1faa6f2(%rip),%eax        # 23aae50 <r>
  40075e:	01 c0                	add    %eax,%eax
  400760:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  400767:	29 c2                	sub    %eax,%edx
  400769:	8b 05 e9 a6 fa 01    	mov    0x1faa6e9(%rip),%eax        # 23aae58 <g>
  40076f:	6b c0 f5             	imul   $0xfffffffffffffff5,%eax,%eax
  400772:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  400775:	8d 90 00 10 00 00    	lea    0x1000(%rax),%edx
  40077b:	8b 05 c7 a6 fa 01    	mov    0x1faa6c7(%rip),%eax        # 23aae48 <b>
  400781:	01 c0                	add    %eax,%eax
  400783:	f7 d8                	neg    %eax
  400785:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  400788:	8d 50 1f             	lea    0x1f(%rax),%edx
  40078b:	85 c0                	test   %eax,%eax
  40078d:	0f 48 c2             	cmovs  %edx,%eax
  400790:	c1 f8 05             	sar    $0x5,%eax
  400793:	89 c2                	mov    %eax,%edx
  400795:	8b 05 c1 a6 fa 01    	mov    0x1faa6c1(%rip),%eax        # 23aae5c <cr>
  40079b:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  40079e:	89 c2                	mov    %eax,%edx
  4007a0:	c1 ea 1f             	shr    $0x1f,%edx
  4007a3:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  4007a6:	d1 f8                	sar    %eax
  4007a8:	89 05 ae a6 fa 01    	mov    %eax,0x1faa6ae(%rip)        # 23aae5c <cr>
  4007ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4007b3:	e8 e7 00 00 00       	callq  40089f <checkThresholds>
  4007b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4007bd:	e8 80 02 00 00       	callq  400a42 <writeNextYCbCr>
  4007c2:	8b 05 84 a6 fa 01    	mov    0x1faa684(%rip),%eax        # 23aae4c <j>
  4007c8:	83 c0 01             	add    $0x1,%eax
  4007cb:	89 05 7b a6 fa 01    	mov    %eax,0x1faa67b(%rip)        # 23aae4c <j>
  4007d1:	8b 05 75 a6 fa 01    	mov    0x1faa675(%rip),%eax        # 23aae4c <j>
  4007d7:	3d 37 04 00 00       	cmp    $0x437,%eax
  4007dc:	0f 8e c9 fe ff ff    	jle    4006ab <main+0x77>
  4007e2:	90                   	nop
  4007e3:	8b 05 57 a6 fa 01    	mov    0x1faa657(%rip),%eax        # 23aae40 <i>
  4007e9:	83 c0 01             	add    $0x1,%eax
  4007ec:	89 05 4e a6 fa 01    	mov    %eax,0x1faa64e(%rip)        # 23aae40 <i>
  4007f2:	8b 05 48 a6 fa 01    	mov    0x1faa648(%rip),%eax        # 23aae40 <i>
  4007f8:	3d 7f 07 00 00       	cmp    $0x77f,%eax
  4007fd:	0f 8e 99 fe ff ff    	jle    40069c <main+0x68>
  400803:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400807:	be 00 00 00 00       	mov    $0x0,%esi
  40080c:	48 89 c7             	mov    %rax,%rdi
  40080f:	e8 d4 fc ff ff       	callq  4004e8 <gettimeofday@plt>
  400814:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400818:	48 69 d0 40 42 0f 00 	imul   $0xf4240,%rax,%rdx
  40081f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400823:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  400827:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40082b:	48 69 d0 c0 bd f0 ff 	imul   $0xfffffffffff0bdc0,%rax,%rdx
  400832:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400836:	48 89 d3             	mov    %rdx,%rbx
  400839:	48 29 c3             	sub    %rax,%rbx
  40083c:	48 89 d8             	mov    %rbx,%rax
  40083f:	48 8d 04 01          	lea    (%rcx,%rax,1),%rax
  400843:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  400847:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40084b:	48 83 c0 10          	add    $0x10,%rax
  40084f:	48 8b 00             	mov    (%rax),%rax
  400852:	48 89 c7             	mov    %rax,%rdi
  400855:	b8 00 00 00 00       	mov    $0x0,%eax
  40085a:	e8 36 01 00 00       	callq  400995 <writeFile>
  40085f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400863:	48 83 c0 10          	add    $0x10,%rax
  400867:	48 8b 10             	mov    (%rax),%rdx
  40086a:	b8 40 0c 40 00       	mov    $0x400c40,%eax
  40086f:	48 89 d6             	mov    %rdx,%rsi
  400872:	48 89 c7             	mov    %rax,%rdi
  400875:	b8 00 00 00 00       	mov    $0x0,%eax
  40087a:	e8 59 fc ff ff       	callq  4004d8 <printf@plt>
  40087f:	b8 62 0c 40 00       	mov    $0x400c62,%eax
  400884:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400888:	48 89 d6             	mov    %rdx,%rsi
  40088b:	48 89 c7             	mov    %rax,%rdi
  40088e:	b8 00 00 00 00       	mov    $0x0,%eax
  400893:	e8 40 fc ff ff       	callq  4004d8 <printf@plt>
  400898:	48 83 c4 48          	add    $0x48,%rsp
  40089c:	5b                   	pop    %rbx
  40089d:	c9                   	leaveq 
  40089e:	c3                   	retq   

000000000040089f <checkThresholds>:
  40089f:	55                   	push   %rbp
  4008a0:	48 89 e5             	mov    %rsp,%rbp
  4008a3:	8b 05 9b a5 fa 01    	mov    0x1faa59b(%rip),%eax        # 23aae44 <y>
  4008a9:	83 f8 0f             	cmp    $0xf,%eax
  4008ac:	7f 0c                	jg     4008ba <checkThresholds+0x1b>
  4008ae:	c7 05 8c a5 fa 01 10 	movl   $0x10,0x1faa58c(%rip)        # 23aae44 <y>
  4008b5:	00 00 00 
  4008b8:	eb 17                	jmp    4008d1 <checkThresholds+0x32>
  4008ba:	8b 05 84 a5 fa 01    	mov    0x1faa584(%rip),%eax        # 23aae44 <y>
  4008c0:	3d eb 00 00 00       	cmp    $0xeb,%eax
  4008c5:	7e 0a                	jle    4008d1 <checkThresholds+0x32>
  4008c7:	c7 05 73 a5 fa 01 eb 	movl   $0xeb,0x1faa573(%rip)        # 23aae44 <y>
  4008ce:	00 00 00 
  4008d1:	8b 05 7d a5 fa 01    	mov    0x1faa57d(%rip),%eax        # 23aae54 <cb>
  4008d7:	83 f8 0f             	cmp    $0xf,%eax
  4008da:	7f 0c                	jg     4008e8 <checkThresholds+0x49>
  4008dc:	c7 05 6e a5 fa 01 10 	movl   $0x10,0x1faa56e(%rip)        # 23aae54 <cb>
  4008e3:	00 00 00 
  4008e6:	eb 17                	jmp    4008ff <checkThresholds+0x60>
  4008e8:	8b 05 66 a5 fa 01    	mov    0x1faa566(%rip),%eax        # 23aae54 <cb>
  4008ee:	3d f0 00 00 00       	cmp    $0xf0,%eax
  4008f3:	7e 0a                	jle    4008ff <checkThresholds+0x60>
  4008f5:	c7 05 55 a5 fa 01 f0 	movl   $0xf0,0x1faa555(%rip)        # 23aae54 <cb>
  4008fc:	00 00 00 
  4008ff:	8b 05 57 a5 fa 01    	mov    0x1faa557(%rip),%eax        # 23aae5c <cr>
  400905:	83 f8 0f             	cmp    $0xf,%eax
  400908:	7f 0c                	jg     400916 <checkThresholds+0x77>
  40090a:	c7 05 48 a5 fa 01 10 	movl   $0x10,0x1faa548(%rip)        # 23aae5c <cr>
  400911:	00 00 00 
  400914:	eb 17                	jmp    40092d <checkThresholds+0x8e>
  400916:	8b 05 40 a5 fa 01    	mov    0x1faa540(%rip),%eax        # 23aae5c <cr>
  40091c:	3d f0 00 00 00       	cmp    $0xf0,%eax
  400921:	7e 0a                	jle    40092d <checkThresholds+0x8e>
  400923:	c7 05 2f a5 fa 01 f0 	movl   $0xf0,0x1faa52f(%rip)        # 23aae5c <cr>
  40092a:	00 00 00 
  40092d:	c9                   	leaveq 
  40092e:	c3                   	retq   

000000000040092f <loadFile>:
  40092f:	55                   	push   %rbp
  400930:	48 89 e5             	mov    %rsp,%rbp
  400933:	48 83 ec 20          	sub    $0x20,%rsp
  400937:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40093b:	ba 7b 0c 40 00       	mov    $0x400c7b,%edx
  400940:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400944:	48 89 d6             	mov    %rdx,%rsi
  400947:	48 89 c7             	mov    %rax,%rdi
  40094a:	e8 a9 fb ff ff       	callq  4004f8 <fopen@plt>
  40094f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400953:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400958:	75 12                	jne    40096c <loadFile+0x3d>
  40095a:	b8 80 0c 40 00       	mov    $0x400c80,%eax
  40095f:	48 89 c7             	mov    %rax,%rdi
  400962:	b8 00 00 00 00       	mov    $0x0,%eax
  400967:	e8 6c fb ff ff       	callq  4004d8 <printf@plt>
  40096c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400970:	48 89 c1             	mov    %rax,%rcx
  400973:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  400978:	be 01 00 00 00       	mov    $0x1,%esi
  40097d:	bf 40 12 60 00       	mov    $0x601240,%edi
  400982:	e8 91 fb ff ff       	callq  400518 <fread@plt>
  400987:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40098b:	48 89 c7             	mov    %rax,%rdi
  40098e:	e8 95 fb ff ff       	callq  400528 <fclose@plt>
  400993:	c9                   	leaveq 
  400994:	c3                   	retq   

0000000000400995 <writeFile>:
  400995:	55                   	push   %rbp
  400996:	48 89 e5             	mov    %rsp,%rbp
  400999:	48 81 ec 20 76 2f 00 	sub    $0x2f7620,%rsp
  4009a0:	48 89 bd e8 89 d0 ff 	mov    %rdi,-0x2f7618(%rbp)
  4009a7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  4009ae:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  4009b5:	eb 1f                	jmp    4009d6 <writeFile+0x41>
  4009b7:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  4009ba:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4009bd:	48 98                	cltq   
  4009bf:	8b 04 85 40 fe be 00 	mov    0xbefe40(,%rax,4),%eax
  4009c6:	89 c2                	mov    %eax,%edx
  4009c8:	48 63 c1             	movslq %ecx,%rax
  4009cb:	88 94 05 f0 89 d0 ff 	mov    %dl,-0x2f7610(%rbp,%rax,1)
  4009d2:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
  4009d6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4009d9:	3d ff 75 2f 00       	cmp    $0x2f75ff,%eax
  4009de:	76 d7                	jbe    4009b7 <writeFile+0x22>
  4009e0:	ba a1 0c 40 00       	mov    $0x400ca1,%edx
  4009e5:	48 8b 85 e8 89 d0 ff 	mov    -0x2f7618(%rbp),%rax
  4009ec:	48 89 d6             	mov    %rdx,%rsi
  4009ef:	48 89 c7             	mov    %rax,%rdi
  4009f2:	e8 01 fb ff ff       	callq  4004f8 <fopen@plt>
  4009f7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4009fb:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400a00:	75 12                	jne    400a14 <writeFile+0x7f>
  400a02:	b8 a8 0c 40 00       	mov    $0x400ca8,%eax
  400a07:	48 89 c7             	mov    %rax,%rdi
  400a0a:	b8 00 00 00 00       	mov    $0x0,%eax
  400a0f:	e8 c4 fa ff ff       	callq  4004d8 <printf@plt>
  400a14:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400a18:	48 8d 85 f0 89 d0 ff 	lea    -0x2f7610(%rbp),%rax
  400a1f:	48 89 d1             	mov    %rdx,%rcx
  400a22:	ba 00 76 2f 00       	mov    $0x2f7600,%edx
  400a27:	be 01 00 00 00       	mov    $0x1,%esi
  400a2c:	48 89 c7             	mov    %rax,%rdi
  400a2f:	e8 04 fb ff ff       	callq  400538 <fwrite@plt>
  400a34:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a38:	48 89 c7             	mov    %rax,%rdi
  400a3b:	e8 e8 fa ff ff       	callq  400528 <fclose@plt>
  400a40:	c9                   	leaveq 
  400a41:	c3                   	retq   

0000000000400a42 <writeNextYCbCr>:
  400a42:	55                   	push   %rbp
  400a43:	48 89 e5             	mov    %rsp,%rbp
  400a46:	8b 05 e4 07 20 00    	mov    0x2007e4(%rip),%eax        # 601230 <curByte>
  400a4c:	83 e8 01             	sub    $0x1,%eax
  400a4f:	8b 15 ef a3 fa 01    	mov    0x1faa3ef(%rip),%edx        # 23aae44 <y>
  400a55:	48 98                	cltq   
  400a57:	89 14 85 40 fe be 00 	mov    %edx,0xbefe40(,%rax,4)
  400a5e:	8b 05 e8 a3 fa 01    	mov    0x1faa3e8(%rip),%eax        # 23aae4c <j>
  400a64:	83 e0 03             	and    $0x3,%eax
  400a67:	85 c0                	test   %eax,%eax
  400a69:	75 50                	jne    400abb <writeNextYCbCr+0x79>
  400a6b:	8b 05 bf 07 20 00    	mov    0x2007bf(%rip),%eax        # 601230 <curByte>
  400a71:	83 e8 01             	sub    $0x1,%eax
  400a74:	8d 50 03             	lea    0x3(%rax),%edx
  400a77:	85 c0                	test   %eax,%eax
  400a79:	0f 48 c2             	cmovs  %edx,%eax
  400a7c:	c1 f8 02             	sar    $0x2,%eax
  400a7f:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400a84:	8b 15 ca a3 fa 01    	mov    0x1faa3ca(%rip),%edx        # 23aae54 <cb>
  400a8a:	48 98                	cltq   
  400a8c:	89 14 85 40 fe be 00 	mov    %edx,0xbefe40(,%rax,4)
  400a93:	8b 05 97 07 20 00    	mov    0x200797(%rip),%eax        # 601230 <curByte>
  400a99:	83 e8 01             	sub    $0x1,%eax
  400a9c:	8d 50 03             	lea    0x3(%rax),%edx
  400a9f:	85 c0                	test   %eax,%eax
  400aa1:	0f 48 c2             	cmovs  %edx,%eax
  400aa4:	c1 f8 02             	sar    $0x2,%eax
  400aa7:	05 00 8d 27 00       	add    $0x278d00,%eax
  400aac:	8b 15 aa a3 fa 01    	mov    0x1faa3aa(%rip),%edx        # 23aae5c <cr>
  400ab2:	48 98                	cltq   
  400ab4:	89 14 85 40 fe be 00 	mov    %edx,0xbefe40(,%rax,4)
  400abb:	c9                   	leaveq 
  400abc:	c3                   	retq   

0000000000400abd <loadNextRGB>:
  400abd:	55                   	push   %rbp
  400abe:	48 89 e5             	mov    %rsp,%rbp
  400ac1:	8b 05 69 07 20 00    	mov    0x200769(%rip),%eax        # 601230 <curByte>
  400ac7:	48 98                	cltq   
  400ac9:	0f b6 80 40 12 60 00 	movzbl 0x601240(%rax),%eax
  400ad0:	0f be c0             	movsbl %al,%eax
  400ad3:	89 05 77 a3 fa 01    	mov    %eax,0x1faa377(%rip)        # 23aae50 <r>
  400ad9:	8b 05 51 07 20 00    	mov    0x200751(%rip),%eax        # 601230 <curByte>
  400adf:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400ae4:	48 98                	cltq   
  400ae6:	0f b6 80 40 12 60 00 	movzbl 0x601240(%rax),%eax
  400aed:	0f be c0             	movsbl %al,%eax
  400af0:	89 05 62 a3 fa 01    	mov    %eax,0x1faa362(%rip)        # 23aae58 <g>
  400af6:	8b 05 34 07 20 00    	mov    0x200734(%rip),%eax        # 601230 <curByte>
  400afc:	05 00 48 3f 00       	add    $0x3f4800,%eax
  400b01:	48 98                	cltq   
  400b03:	0f b6 80 40 12 60 00 	movzbl 0x601240(%rax),%eax
  400b0a:	0f be c0             	movsbl %al,%eax
  400b0d:	89 05 35 a3 fa 01    	mov    %eax,0x1faa335(%rip)        # 23aae48 <b>
  400b13:	8b 05 17 07 20 00    	mov    0x200717(%rip),%eax        # 601230 <curByte>
  400b19:	83 c0 01             	add    $0x1,%eax
  400b1c:	89 05 0e 07 20 00    	mov    %eax,0x20070e(%rip)        # 601230 <curByte>
  400b22:	c9                   	leaveq 
  400b23:	c3                   	retq   
  400b24:	90                   	nop
  400b25:	90                   	nop
  400b26:	90                   	nop
  400b27:	90                   	nop
  400b28:	90                   	nop
  400b29:	90                   	nop
  400b2a:	90                   	nop
  400b2b:	90                   	nop
  400b2c:	90                   	nop
  400b2d:	90                   	nop
  400b2e:	90                   	nop
  400b2f:	90                   	nop

0000000000400b30 <__libc_csu_fini>:
  400b30:	f3 c3                	repz retq 
  400b32:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400b39:	1f 84 00 00 00 00 00 

0000000000400b40 <__libc_csu_init>:
  400b40:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400b45:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  400b4a:	48 8d 2d af 04 20 00 	lea    0x2004af(%rip),%rbp        # 601000 <__CTOR_LIST__>
  400b51:	4c 8d 25 a8 04 20 00 	lea    0x2004a8(%rip),%r12        # 601000 <__CTOR_LIST__>
  400b58:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  400b5d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400b62:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400b67:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  400b6c:	48 83 ec 38          	sub    $0x38,%rsp
  400b70:	4c 29 e5             	sub    %r12,%rbp
  400b73:	41 89 fd             	mov    %edi,%r13d
  400b76:	49 89 f6             	mov    %rsi,%r14
  400b79:	48 c1 fd 03          	sar    $0x3,%rbp
  400b7d:	49 89 d7             	mov    %rdx,%r15
  400b80:	e8 2b f9 ff ff       	callq  4004b0 <_init>
  400b85:	48 85 ed             	test   %rbp,%rbp
  400b88:	74 1c                	je     400ba6 <__libc_csu_init+0x66>
  400b8a:	31 db                	xor    %ebx,%ebx
  400b8c:	0f 1f 40 00          	nopl   0x0(%rax)
  400b90:	4c 89 fa             	mov    %r15,%rdx
  400b93:	4c 89 f6             	mov    %r14,%rsi
  400b96:	44 89 ef             	mov    %r13d,%edi
  400b99:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b9d:	48 83 c3 01          	add    $0x1,%rbx
  400ba1:	48 39 eb             	cmp    %rbp,%rbx
  400ba4:	72 ea                	jb     400b90 <__libc_csu_init+0x50>
  400ba6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400bab:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400bb0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400bb5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400bba:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400bbf:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400bc4:	48 83 c4 38          	add    $0x38,%rsp
  400bc8:	c3                   	retq   
  400bc9:	90                   	nop
  400bca:	90                   	nop
  400bcb:	90                   	nop
  400bcc:	90                   	nop
  400bcd:	90                   	nop
  400bce:	90                   	nop
  400bcf:	90                   	nop

0000000000400bd0 <__do_global_ctors_aux>:
  400bd0:	55                   	push   %rbp
  400bd1:	48 89 e5             	mov    %rsp,%rbp
  400bd4:	53                   	push   %rbx
  400bd5:	48 83 ec 08          	sub    $0x8,%rsp
  400bd9:	48 8b 05 20 04 20 00 	mov    0x200420(%rip),%rax        # 601000 <__CTOR_LIST__>
  400be0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400be4:	74 19                	je     400bff <__do_global_ctors_aux+0x2f>
  400be6:	bb 00 10 60 00       	mov    $0x601000,%ebx
  400beb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400bf0:	48 83 eb 08          	sub    $0x8,%rbx
  400bf4:	ff d0                	callq  *%rax
  400bf6:	48 8b 03             	mov    (%rbx),%rax
  400bf9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400bfd:	75 f1                	jne    400bf0 <__do_global_ctors_aux+0x20>
  400bff:	48 83 c4 08          	add    $0x8,%rsp
  400c03:	5b                   	pop    %rbx
  400c04:	c9                   	leaveq 
  400c05:	c3                   	retq   
  400c06:	90                   	nop
  400c07:	90                   	nop

Disassembly of section .fini:

0000000000400c08 <_fini>:
  400c08:	48 83 ec 08          	sub    $0x8,%rsp
  400c0c:	e8 8f f9 ff ff       	callq  4005a0 <__do_global_dtors_aux>
  400c11:	48 83 c4 08          	add    $0x8,%rsp
  400c15:	c3                   	retq   
