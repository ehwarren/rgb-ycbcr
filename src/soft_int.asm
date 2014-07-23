
bin/soft_int.out:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	e8 b3 00 00 00       	callq  40056c <call_gmon_start>
  4004b9:	e8 42 01 00 00       	callq  400600 <frame_dummy>
  4004be:	e8 bd 05 00 00       	callq  400a80 <__do_global_ctors_aux>
  4004c3:	48 83 c4 08          	add    $0x8,%rsp
  4004c7:	c3                   	retq   

Disassembly of section .plt:

00000000004004d0 <fread@plt-0x10>:
  4004d0:	ff 35 1a 0b 20 00    	pushq  0x200b1a(%rip)        # 600ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004d6:	ff 25 1c 0b 20 00    	jmpq   *0x200b1c(%rip)        # 600ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004e0 <fread@plt>:
  4004e0:	ff 25 1a 0b 20 00    	jmpq   *0x200b1a(%rip)        # 601000 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004e6:	68 00 00 00 00       	pushq  $0x0
  4004eb:	e9 e0 ff ff ff       	jmpq   4004d0 <_init+0x20>

00000000004004f0 <fclose@plt>:
  4004f0:	ff 25 12 0b 20 00    	jmpq   *0x200b12(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004f6:	68 01 00 00 00       	pushq  $0x1
  4004fb:	e9 d0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400500 <printf@plt>:
  400500:	ff 25 0a 0b 20 00    	jmpq   *0x200b0a(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x28>
  400506:	68 02 00 00 00       	pushq  $0x2
  40050b:	e9 c0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400510 <__libc_start_main@plt>:
  400510:	ff 25 02 0b 20 00    	jmpq   *0x200b02(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x30>
  400516:	68 03 00 00 00       	pushq  $0x3
  40051b:	e9 b0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400520 <fopen@plt>:
  400520:	ff 25 fa 0a 20 00    	jmpq   *0x200afa(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x38>
  400526:	68 04 00 00 00       	pushq  $0x4
  40052b:	e9 a0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400530 <fwrite@plt>:
  400530:	ff 25 f2 0a 20 00    	jmpq   *0x200af2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x40>
  400536:	68 05 00 00 00       	pushq  $0x5
  40053b:	e9 90 ff ff ff       	jmpq   4004d0 <_init+0x20>

Disassembly of section .text:

0000000000400540 <_start>:
  400540:	31 ed                	xor    %ebp,%ebp
  400542:	49 89 d1             	mov    %rdx,%r9
  400545:	5e                   	pop    %rsi
  400546:	48 89 e2             	mov    %rsp,%rdx
  400549:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40054d:	50                   	push   %rax
  40054e:	54                   	push   %rsp
  40054f:	49 c7 c0 70 0a 40 00 	mov    $0x400a70,%r8
  400556:	48 c7 c1 e0 09 40 00 	mov    $0x4009e0,%rcx
  40055d:	48 c7 c7 24 06 40 00 	mov    $0x400624,%rdi
  400564:	e8 a7 ff ff ff       	callq  400510 <__libc_start_main@plt>
  400569:	f4                   	hlt    
  40056a:	90                   	nop
  40056b:	90                   	nop

000000000040056c <call_gmon_start>:
  40056c:	48 83 ec 08          	sub    $0x8,%rsp
  400570:	48 8b 05 69 0a 20 00 	mov    0x200a69(%rip),%rax        # 600fe0 <_DYNAMIC+0x190>
  400577:	48 85 c0             	test   %rax,%rax
  40057a:	74 02                	je     40057e <call_gmon_start+0x12>
  40057c:	ff d0                	callq  *%rax
  40057e:	48 83 c4 08          	add    $0x8,%rsp
  400582:	c3                   	retq   
  400583:	90                   	nop
  400584:	90                   	nop
  400585:	90                   	nop
  400586:	90                   	nop
  400587:	90                   	nop
  400588:	90                   	nop
  400589:	90                   	nop
  40058a:	90                   	nop
  40058b:	90                   	nop
  40058c:	90                   	nop
  40058d:	90                   	nop
  40058e:	90                   	nop
  40058f:	90                   	nop

0000000000400590 <__do_global_dtors_aux>:
  400590:	55                   	push   %rbp
  400591:	48 89 e5             	mov    %rsp,%rbp
  400594:	53                   	push   %rbx
  400595:	48 83 ec 08          	sub    $0x8,%rsp
  400599:	80 3d a0 0a 20 00 00 	cmpb   $0x0,0x200aa0(%rip)        # 601040 <__bss_start>
  4005a0:	75 4b                	jne    4005ed <__do_global_dtors_aux+0x5d>
  4005a2:	bb 40 0e 60 00       	mov    $0x600e40,%ebx
  4005a7:	48 8b 05 9a 0a 20 00 	mov    0x200a9a(%rip),%rax        # 601048 <dtor_idx.6533>
  4005ae:	48 81 eb 38 0e 60 00 	sub    $0x600e38,%rbx
  4005b5:	48 c1 fb 03          	sar    $0x3,%rbx
  4005b9:	48 83 eb 01          	sub    $0x1,%rbx
  4005bd:	48 39 d8             	cmp    %rbx,%rax
  4005c0:	73 24                	jae    4005e6 <__do_global_dtors_aux+0x56>
  4005c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4005c8:	48 83 c0 01          	add    $0x1,%rax
  4005cc:	48 89 05 75 0a 20 00 	mov    %rax,0x200a75(%rip)        # 601048 <dtor_idx.6533>
  4005d3:	ff 14 c5 38 0e 60 00 	callq  *0x600e38(,%rax,8)
  4005da:	48 8b 05 67 0a 20 00 	mov    0x200a67(%rip),%rax        # 601048 <dtor_idx.6533>
  4005e1:	48 39 d8             	cmp    %rbx,%rax
  4005e4:	72 e2                	jb     4005c8 <__do_global_dtors_aux+0x38>
  4005e6:	c6 05 53 0a 20 00 01 	movb   $0x1,0x200a53(%rip)        # 601040 <__bss_start>
  4005ed:	48 83 c4 08          	add    $0x8,%rsp
  4005f1:	5b                   	pop    %rbx
  4005f2:	5d                   	pop    %rbp
  4005f3:	c3                   	retq   
  4005f4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4005fb:	00 00 00 00 00 

0000000000400600 <frame_dummy>:
  400600:	48 83 3d 40 08 20 00 	cmpq   $0x0,0x200840(%rip)        # 600e48 <__JCR_END__>
  400607:	00 
  400608:	55                   	push   %rbp
  400609:	48 89 e5             	mov    %rsp,%rbp
  40060c:	74 12                	je     400620 <frame_dummy+0x20>
  40060e:	b8 00 00 00 00       	mov    $0x0,%eax
  400613:	48 85 c0             	test   %rax,%rax
  400616:	74 08                	je     400620 <frame_dummy+0x20>
  400618:	5d                   	pop    %rbp
  400619:	bf 48 0e 60 00       	mov    $0x600e48,%edi
  40061e:	ff e0                	jmpq   *%rax
  400620:	5d                   	pop    %rbp
  400621:	c3                   	retq   
  400622:	90                   	nop
  400623:	90                   	nop

0000000000400624 <main>:
  400624:	55                   	push   %rbp
  400625:	48 89 e5             	mov    %rsp,%rbp
  400628:	48 83 ec 10          	sub    $0x10,%rsp
  40062c:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40062f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400633:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400637:	48 83 c0 08          	add    $0x8,%rax
  40063b:	48 8b 10             	mov    (%rax),%rdx
  40063e:	b8 d0 0a 40 00       	mov    $0x400ad0,%eax
  400643:	48 89 d6             	mov    %rdx,%rsi
  400646:	48 89 c7             	mov    %rax,%rdi
  400649:	b8 00 00 00 00       	mov    $0x0,%eax
  40064e:	e8 ad fe ff ff       	callq  400500 <printf@plt>
  400653:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400657:	48 83 c0 08          	add    $0x8,%rax
  40065b:	48 8b 00             	mov    (%rax),%rax
  40065e:	48 89 c7             	mov    %rax,%rdi
  400661:	e8 e0 01 00 00       	callq  400846 <loadFile>
  400666:	c7 05 84 68 11 04 00 	movl   $0x0,0x4116884(%rip)        # 4516ef4 <i>
  40066d:	00 00 00 
  400670:	e9 f5 00 00 00       	jmpq   40076a <main+0x146>
  400675:	c7 05 e5 09 20 00 00 	movl   $0x0,0x2009e5(%rip)        # 601064 <j>
  40067c:	00 00 00 
  40067f:	e9 c6 00 00 00       	jmpq   40074a <main+0x126>
  400684:	b8 00 00 00 00       	mov    $0x0,%eax
  400689:	e8 dc 02 00 00       	callq  40096a <loadNextRGB>
  40068e:	8b 05 d4 09 20 00    	mov    0x2009d4(%rip),%eax        # 601068 <r>
  400694:	8d 50 40             	lea    0x40(%rax),%edx
  400697:	8b 05 53 68 11 04    	mov    0x4116853(%rip),%eax        # 4516ef0 <g>
  40069d:	01 c0                	add    %eax,%eax
  40069f:	01 d0                	add    %edx,%eax
  4006a1:	8d 14 00             	lea    (%rax,%rax,1),%edx
  4006a4:	8b 05 b6 09 20 00    	mov    0x2009b6(%rip),%eax        # 601060 <b>
  4006aa:	01 d0                	add    %edx,%eax
  4006ac:	01 c0                	add    %eax,%eax
  4006ae:	89 05 44 68 11 04    	mov    %eax,0x4116844(%rip)        # 4516ef8 <y>
  4006b4:	8b 05 ae 09 20 00    	mov    0x2009ae(%rip),%eax        # 601068 <r>
  4006ba:	ba 00 04 00 00       	mov    $0x400,%edx
  4006bf:	89 d1                	mov    %edx,%ecx
  4006c1:	29 c1                	sub    %eax,%ecx
  4006c3:	89 c8                	mov    %ecx,%eax
  4006c5:	8d 0c 00             	lea    (%rax,%rax,1),%ecx
  4006c8:	8b 15 22 68 11 04    	mov    0x4116822(%rip),%edx        # 4516ef0 <g>
  4006ce:	89 d0                	mov    %edx,%eax
  4006d0:	c1 e0 02             	shl    $0x2,%eax
  4006d3:	01 d0                	add    %edx,%eax
  4006d5:	f7 d8                	neg    %eax
  4006d7:	01 c1                	add    %eax,%ecx
  4006d9:	8b 15 81 09 20 00    	mov    0x200981(%rip),%edx        # 601060 <b>
  4006df:	89 d0                	mov    %edx,%eax
  4006e1:	c1 e0 03             	shl    $0x3,%eax
  4006e4:	29 d0                	sub    %edx,%eax
  4006e6:	01 c8                	add    %ecx,%eax
  4006e8:	89 05 7e 09 20 00    	mov    %eax,0x20097e(%rip)        # 60106c <cb>
  4006ee:	8b 15 74 09 20 00    	mov    0x200974(%rip),%edx        # 601068 <r>
  4006f4:	89 d0                	mov    %edx,%eax
  4006f6:	c1 e0 03             	shl    $0x3,%eax
  4006f9:	89 c1                	mov    %eax,%ecx
  4006fb:	29 d1                	sub    %edx,%ecx
  4006fd:	8b 15 ed 67 11 04    	mov    0x41167ed(%rip),%edx        # 4516ef0 <g>
  400703:	89 d0                	mov    %edx,%eax
  400705:	01 c0                	add    %eax,%eax
  400707:	01 d0                	add    %edx,%eax
  400709:	01 c0                	add    %eax,%eax
  40070b:	f7 d8                	neg    %eax
  40070d:	01 c8                	add    %ecx,%eax
  40070f:	8d 90 00 08 00 00    	lea    0x800(%rax),%edx
  400715:	8b 05 45 09 20 00    	mov    0x200945(%rip),%eax        # 601060 <b>
  40071b:	89 d1                	mov    %edx,%ecx
  40071d:	29 c1                	sub    %eax,%ecx
  40071f:	89 c8                	mov    %ecx,%eax
  400721:	89 05 49 09 20 00    	mov    %eax,0x200949(%rip)        # 601070 <cr>
  400727:	b8 00 00 00 00       	mov    $0x0,%eax
  40072c:	e8 7f 00 00 00       	callq  4007b0 <checkThresholds>
  400731:	b8 00 00 00 00       	mov    $0x0,%eax
  400736:	e8 dd 01 00 00       	callq  400918 <writeNextYCbCr>
  40073b:	8b 05 23 09 20 00    	mov    0x200923(%rip),%eax        # 601064 <j>
  400741:	83 c0 01             	add    $0x1,%eax
  400744:	89 05 1a 09 20 00    	mov    %eax,0x20091a(%rip)        # 601064 <j>
  40074a:	8b 05 14 09 20 00    	mov    0x200914(%rip),%eax        # 601064 <j>
  400750:	3d 26 06 00 00       	cmp    $0x626,%eax
  400755:	0f 8e 29 ff ff ff    	jle    400684 <main+0x60>
  40075b:	8b 05 93 67 11 04    	mov    0x4116793(%rip),%eax        # 4516ef4 <i>
  400761:	83 c0 01             	add    $0x1,%eax
  400764:	89 05 8a 67 11 04    	mov    %eax,0x411678a(%rip)        # 4516ef4 <i>
  40076a:	8b 05 84 67 11 04    	mov    0x4116784(%rip),%eax        # 4516ef4 <i>
  400770:	3d ef 0a 00 00       	cmp    $0xaef,%eax
  400775:	0f 8e fa fe ff ff    	jle    400675 <main+0x51>
  40077b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40077f:	48 83 c0 10          	add    $0x10,%rax
  400783:	48 8b 00             	mov    (%rax),%rax
  400786:	48 89 c7             	mov    %rax,%rdi
  400789:	e8 21 01 00 00       	callq  4008af <writeFile>
  40078e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400792:	48 83 c0 10          	add    $0x10,%rax
  400796:	48 8b 10             	mov    (%rax),%rdx
  400799:	b8 e8 0a 40 00       	mov    $0x400ae8,%eax
  40079e:	48 89 d6             	mov    %rdx,%rsi
  4007a1:	48 89 c7             	mov    %rax,%rdi
  4007a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4007a9:	e8 52 fd ff ff       	callq  400500 <printf@plt>
  4007ae:	c9                   	leaveq 
  4007af:	c3                   	retq   

00000000004007b0 <checkThresholds>:
  4007b0:	55                   	push   %rbp
  4007b1:	48 89 e5             	mov    %rsp,%rbp
  4007b4:	8b 05 3e 67 11 04    	mov    0x411673e(%rip),%eax        # 4516ef8 <y>
  4007ba:	3d ff 00 00 00       	cmp    $0xff,%eax
  4007bf:	7f 0c                	jg     4007cd <checkThresholds+0x1d>
  4007c1:	c7 05 2d 67 11 04 00 	movl   $0x100,0x411672d(%rip)        # 4516ef8 <y>
  4007c8:	01 00 00 
  4007cb:	eb 17                	jmp    4007e4 <checkThresholds+0x34>
  4007cd:	8b 05 25 67 11 04    	mov    0x4116725(%rip),%eax        # 4516ef8 <y>
  4007d3:	3d b0 0e 00 00       	cmp    $0xeb0,%eax
  4007d8:	7e 0a                	jle    4007e4 <checkThresholds+0x34>
  4007da:	c7 05 14 67 11 04 b0 	movl   $0xeb0,0x4116714(%rip)        # 4516ef8 <y>
  4007e1:	0e 00 00 
  4007e4:	8b 05 82 08 20 00    	mov    0x200882(%rip),%eax        # 60106c <cb>
  4007ea:	3d ff 00 00 00       	cmp    $0xff,%eax
  4007ef:	7f 0c                	jg     4007fd <checkThresholds+0x4d>
  4007f1:	c7 05 71 08 20 00 00 	movl   $0x100,0x200871(%rip)        # 60106c <cb>
  4007f8:	01 00 00 
  4007fb:	eb 17                	jmp    400814 <checkThresholds+0x64>
  4007fd:	8b 05 69 08 20 00    	mov    0x200869(%rip),%eax        # 60106c <cb>
  400803:	3d 00 0f 00 00       	cmp    $0xf00,%eax
  400808:	7e 0a                	jle    400814 <checkThresholds+0x64>
  40080a:	c7 05 58 08 20 00 00 	movl   $0xf00,0x200858(%rip)        # 60106c <cb>
  400811:	0f 00 00 
  400814:	8b 05 56 08 20 00    	mov    0x200856(%rip),%eax        # 601070 <cr>
  40081a:	3d ff 00 00 00       	cmp    $0xff,%eax
  40081f:	7f 0c                	jg     40082d <checkThresholds+0x7d>
  400821:	c7 05 45 08 20 00 00 	movl   $0x100,0x200845(%rip)        # 601070 <cr>
  400828:	01 00 00 
  40082b:	eb 17                	jmp    400844 <checkThresholds+0x94>
  40082d:	8b 05 3d 08 20 00    	mov    0x20083d(%rip),%eax        # 601070 <cr>
  400833:	3d 00 0f 00 00       	cmp    $0xf00,%eax
  400838:	7e 0a                	jle    400844 <checkThresholds+0x94>
  40083a:	c7 05 2c 08 20 00 00 	movl   $0xf00,0x20082c(%rip)        # 601070 <cr>
  400841:	0f 00 00 
  400844:	5d                   	pop    %rbp
  400845:	c3                   	retq   

0000000000400846 <loadFile>:
  400846:	55                   	push   %rbp
  400847:	48 89 e5             	mov    %rsp,%rbp
  40084a:	48 83 ec 20          	sub    $0x20,%rsp
  40084e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400852:	ba 0a 0b 40 00       	mov    $0x400b0a,%edx
  400857:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40085b:	48 89 d6             	mov    %rdx,%rsi
  40085e:	48 89 c7             	mov    %rax,%rdi
  400861:	e8 ba fc ff ff       	callq  400520 <fopen@plt>
  400866:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40086a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40086f:	75 12                	jne    400883 <loadFile+0x3d>
  400871:	b8 10 0b 40 00       	mov    $0x400b10,%eax
  400876:	48 89 c7             	mov    %rax,%rdi
  400879:	b8 00 00 00 00       	mov    $0x0,%eax
  40087e:	e8 7d fc ff ff       	callq  400500 <printf@plt>
  400883:	b8 40 8f 87 03       	mov    $0x3878f40,%eax
  400888:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40088c:	48 89 d1             	mov    %rdx,%rcx
  40088f:	ba b0 df c9 00       	mov    $0xc9dfb0,%edx
  400894:	be 01 00 00 00       	mov    $0x1,%esi
  400899:	48 89 c7             	mov    %rax,%rdi
  40089c:	e8 3f fc ff ff       	callq  4004e0 <fread@plt>
  4008a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008a5:	48 89 c7             	mov    %rax,%rdi
  4008a8:	e8 43 fc ff ff       	callq  4004f0 <fclose@plt>
  4008ad:	c9                   	leaveq 
  4008ae:	c3                   	retq   

00000000004008af <writeFile>:
  4008af:	55                   	push   %rbp
  4008b0:	48 89 e5             	mov    %rsp,%rbp
  4008b3:	48 83 ec 20          	sub    $0x20,%rsp
  4008b7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4008bb:	ba 31 0b 40 00       	mov    $0x400b31,%edx
  4008c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008c4:	48 89 d6             	mov    %rdx,%rsi
  4008c7:	48 89 c7             	mov    %rax,%rdi
  4008ca:	e8 51 fc ff ff       	callq  400520 <fopen@plt>
  4008cf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4008d3:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4008d8:	75 12                	jne    4008ec <writeFile+0x3d>
  4008da:	b8 38 0b 40 00       	mov    $0x400b38,%eax
  4008df:	48 89 c7             	mov    %rax,%rdi
  4008e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4008e7:	e8 14 fc ff ff       	callq  400500 <printf@plt>
  4008ec:	b8 80 10 60 00       	mov    $0x601080,%eax
  4008f1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4008f5:	48 89 d1             	mov    %rdx,%rcx
  4008f8:	ba b0 df c9 00       	mov    $0xc9dfb0,%edx
  4008fd:	be 04 00 00 00       	mov    $0x4,%esi
  400902:	48 89 c7             	mov    %rax,%rdi
  400905:	e8 26 fc ff ff       	callq  400530 <fwrite@plt>
  40090a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40090e:	48 89 c7             	mov    %rax,%rdi
  400911:	e8 da fb ff ff       	callq  4004f0 <fclose@plt>
  400916:	c9                   	leaveq 
  400917:	c3                   	retq   

0000000000400918 <writeNextYCbCr>:
  400918:	55                   	push   %rbp
  400919:	48 89 e5             	mov    %rsp,%rbp
  40091c:	8b 05 2e 07 20 00    	mov    0x20072e(%rip),%eax        # 601050 <curByte>
  400922:	83 e8 01             	sub    $0x1,%eax
  400925:	8b 15 cd 65 11 04    	mov    0x41165cd(%rip),%edx        # 4516ef8 <y>
  40092b:	48 98                	cltq   
  40092d:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  400934:	8b 05 16 07 20 00    	mov    0x200716(%rip),%eax        # 601050 <curByte>
  40093a:	05 8f 4a 43 00       	add    $0x434a8f,%eax
  40093f:	8b 15 27 07 20 00    	mov    0x200727(%rip),%edx        # 60106c <cb>
  400945:	48 98                	cltq   
  400947:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  40094e:	8b 05 fc 06 20 00    	mov    0x2006fc(%rip),%eax        # 601050 <curByte>
  400954:	05 1f 95 86 00       	add    $0x86951f,%eax
  400959:	8b 15 11 07 20 00    	mov    0x200711(%rip),%edx        # 601070 <cr>
  40095f:	48 98                	cltq   
  400961:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  400968:	5d                   	pop    %rbp
  400969:	c3                   	retq   

000000000040096a <loadNextRGB>:
  40096a:	55                   	push   %rbp
  40096b:	48 89 e5             	mov    %rsp,%rbp
  40096e:	8b 05 dc 06 20 00    	mov    0x2006dc(%rip),%eax        # 601050 <curByte>
  400974:	48 98                	cltq   
  400976:	0f b6 80 40 8f 87 03 	movzbl 0x3878f40(%rax),%eax
  40097d:	0f be c0             	movsbl %al,%eax
  400980:	89 05 e2 06 20 00    	mov    %eax,0x2006e2(%rip)        # 601068 <r>
  400986:	8b 05 c4 06 20 00    	mov    0x2006c4(%rip),%eax        # 601050 <curByte>
  40098c:	05 90 4a 43 00       	add    $0x434a90,%eax
  400991:	48 98                	cltq   
  400993:	0f b6 80 40 8f 87 03 	movzbl 0x3878f40(%rax),%eax
  40099a:	0f be c0             	movsbl %al,%eax
  40099d:	89 05 4d 65 11 04    	mov    %eax,0x411654d(%rip)        # 4516ef0 <g>
  4009a3:	8b 05 a7 06 20 00    	mov    0x2006a7(%rip),%eax        # 601050 <curByte>
  4009a9:	05 20 95 86 00       	add    $0x869520,%eax
  4009ae:	48 98                	cltq   
  4009b0:	0f b6 80 40 8f 87 03 	movzbl 0x3878f40(%rax),%eax
  4009b7:	0f be c0             	movsbl %al,%eax
  4009ba:	89 05 a0 06 20 00    	mov    %eax,0x2006a0(%rip)        # 601060 <b>
  4009c0:	8b 05 8a 06 20 00    	mov    0x20068a(%rip),%eax        # 601050 <curByte>
  4009c6:	83 c0 01             	add    $0x1,%eax
  4009c9:	89 05 81 06 20 00    	mov    %eax,0x200681(%rip)        # 601050 <curByte>
  4009cf:	5d                   	pop    %rbp
  4009d0:	c3                   	retq   
  4009d1:	90                   	nop
  4009d2:	90                   	nop
  4009d3:	90                   	nop
  4009d4:	90                   	nop
  4009d5:	90                   	nop
  4009d6:	90                   	nop
  4009d7:	90                   	nop
  4009d8:	90                   	nop
  4009d9:	90                   	nop
  4009da:	90                   	nop
  4009db:	90                   	nop
  4009dc:	90                   	nop
  4009dd:	90                   	nop
  4009de:	90                   	nop
  4009df:	90                   	nop

00000000004009e0 <__libc_csu_init>:
  4009e0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4009e5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4009ea:	48 8d 2d 33 04 20 00 	lea    0x200433(%rip),%rbp        # 600e24 <__init_array_end>
  4009f1:	4c 8d 25 2c 04 20 00 	lea    0x20042c(%rip),%r12        # 600e24 <__init_array_end>
  4009f8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4009fd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400a02:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400a07:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  400a0c:	48 83 ec 38          	sub    $0x38,%rsp
  400a10:	4c 29 e5             	sub    %r12,%rbp
  400a13:	41 89 fd             	mov    %edi,%r13d
  400a16:	49 89 f6             	mov    %rsi,%r14
  400a19:	48 c1 fd 03          	sar    $0x3,%rbp
  400a1d:	49 89 d7             	mov    %rdx,%r15
  400a20:	e8 8b fa ff ff       	callq  4004b0 <_init>
  400a25:	48 85 ed             	test   %rbp,%rbp
  400a28:	74 1c                	je     400a46 <__libc_csu_init+0x66>
  400a2a:	31 db                	xor    %ebx,%ebx
  400a2c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a30:	4c 89 fa             	mov    %r15,%rdx
  400a33:	4c 89 f6             	mov    %r14,%rsi
  400a36:	44 89 ef             	mov    %r13d,%edi
  400a39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a3d:	48 83 c3 01          	add    $0x1,%rbx
  400a41:	48 39 eb             	cmp    %rbp,%rbx
  400a44:	75 ea                	jne    400a30 <__libc_csu_init+0x50>
  400a46:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400a4b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400a50:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400a55:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400a5a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400a5f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400a64:	48 83 c4 38          	add    $0x38,%rsp
  400a68:	c3                   	retq   
  400a69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400a70 <__libc_csu_fini>:
  400a70:	f3 c3                	repz retq 
  400a72:	90                   	nop
  400a73:	90                   	nop
  400a74:	90                   	nop
  400a75:	90                   	nop
  400a76:	90                   	nop
  400a77:	90                   	nop
  400a78:	90                   	nop
  400a79:	90                   	nop
  400a7a:	90                   	nop
  400a7b:	90                   	nop
  400a7c:	90                   	nop
  400a7d:	90                   	nop
  400a7e:	90                   	nop
  400a7f:	90                   	nop

0000000000400a80 <__do_global_ctors_aux>:
  400a80:	55                   	push   %rbp
  400a81:	48 89 e5             	mov    %rsp,%rbp
  400a84:	53                   	push   %rbx
  400a85:	48 83 ec 08          	sub    $0x8,%rsp
  400a89:	48 8b 05 98 03 20 00 	mov    0x200398(%rip),%rax        # 600e28 <__CTOR_LIST__>
  400a90:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400a94:	74 19                	je     400aaf <__do_global_ctors_aux+0x2f>
  400a96:	bb 28 0e 60 00       	mov    $0x600e28,%ebx
  400a9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400aa0:	48 83 eb 08          	sub    $0x8,%rbx
  400aa4:	ff d0                	callq  *%rax
  400aa6:	48 8b 03             	mov    (%rbx),%rax
  400aa9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400aad:	75 f1                	jne    400aa0 <__do_global_ctors_aux+0x20>
  400aaf:	48 83 c4 08          	add    $0x8,%rsp
  400ab3:	5b                   	pop    %rbx
  400ab4:	5d                   	pop    %rbp
  400ab5:	c3                   	retq   
  400ab6:	90                   	nop
  400ab7:	90                   	nop

Disassembly of section .fini:

0000000000400ab8 <_fini>:
  400ab8:	48 83 ec 08          	sub    $0x8,%rsp
  400abc:	e8 cf fa ff ff       	callq  400590 <__do_global_dtors_aux>
  400ac1:	48 83 c4 08          	add    $0x8,%rsp
  400ac5:	c3                   	retq   
