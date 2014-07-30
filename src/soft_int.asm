
bin/soft_int.out:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	e8 b3 00 00 00       	callq  40056c <call_gmon_start>
  4004b9:	e8 42 01 00 00       	callq  400600 <frame_dummy>
  4004be:	e8 ad 06 00 00       	callq  400b70 <__do_global_ctors_aux>
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
  40054f:	49 c7 c0 60 0b 40 00 	mov    $0x400b60,%r8
  400556:	48 c7 c1 d0 0a 40 00 	mov    $0x400ad0,%rcx
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
  400628:	53                   	push   %rbx
  400629:	48 83 ec 18          	sub    $0x18,%rsp
  40062d:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400630:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400634:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400638:	48 83 c0 08          	add    $0x8,%rax
  40063c:	48 8b 10             	mov    (%rax),%rdx
  40063f:	b8 c0 0b 40 00       	mov    $0x400bc0,%eax
  400644:	48 89 d6             	mov    %rdx,%rsi
  400647:	48 89 c7             	mov    %rax,%rdi
  40064a:	b8 00 00 00 00       	mov    $0x0,%eax
  40064f:	e8 ac fe ff ff       	callq  400500 <printf@plt>
  400654:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400658:	48 83 c0 08          	add    $0x8,%rax
  40065c:	48 8b 00             	mov    (%rax),%rax
  40065f:	48 89 c7             	mov    %rax,%rdi
  400662:	e8 41 02 00 00       	callq  4008a8 <loadFile>
  400667:	c7 05 13 a6 fa 01 00 	movl   $0x0,0x1faa613(%rip)        # 23aac84 <i>
  40066e:	00 00 00 
  400671:	e9 57 01 00 00       	jmpq   4007cd <main+0x1a9>
  400676:	c7 05 e4 09 20 00 00 	movl   $0x0,0x2009e4(%rip)        # 601064 <j>
  40067d:	00 00 00 
  400680:	e9 28 01 00 00       	jmpq   4007ad <main+0x189>
  400685:	b8 00 00 00 00       	mov    $0x0,%eax
  40068a:	e8 cc 03 00 00       	callq  400a5b <loadNextRGB>
  40068f:	8b 05 d3 09 20 00    	mov    0x2009d3(%rip),%eax        # 601068 <r>
  400695:	8d 50 40             	lea    0x40(%rax),%edx
  400698:	8b 05 e2 a5 fa 01    	mov    0x1faa5e2(%rip),%eax        # 23aac80 <g>
  40069e:	01 c0                	add    %eax,%eax
  4006a0:	01 d0                	add    %edx,%eax
  4006a2:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
  4006a9:	8b 15 b1 09 20 00    	mov    0x2009b1(%rip),%edx        # 601060 <b>
  4006af:	89 d0                	mov    %edx,%eax
  4006b1:	01 c0                	add    %eax,%eax
  4006b3:	01 d0                	add    %edx,%eax
  4006b5:	01 c8                	add    %ecx,%eax
  4006b7:	8d 50 1f             	lea    0x1f(%rax),%edx
  4006ba:	85 c0                	test   %eax,%eax
  4006bc:	0f 48 c2             	cmovs  %edx,%eax
  4006bf:	c1 f8 05             	sar    $0x5,%eax
  4006c2:	89 05 c0 a5 fa 01    	mov    %eax,0x1faa5c0(%rip)        # 23aac88 <y>
  4006c8:	8b 15 9a 09 20 00    	mov    0x20099a(%rip),%edx        # 601068 <r>
  4006ce:	89 d0                	mov    %edx,%eax
  4006d0:	c1 e0 02             	shl    $0x2,%eax
  4006d3:	01 c2                	add    %eax,%edx
  4006d5:	f7 da                	neg    %edx
  4006d7:	8b 0d a3 a5 fa 01    	mov    0x1faa5a3(%rip),%ecx        # 23aac80 <g>
  4006dd:	89 c8                	mov    %ecx,%eax
  4006df:	c1 e0 03             	shl    $0x3,%eax
  4006e2:	01 c8                	add    %ecx,%eax
  4006e4:	f7 d8                	neg    %eax
  4006e6:	01 d0                	add    %edx,%eax
  4006e8:	8d 88 00 10 00 00    	lea    0x1000(%rax),%ecx
  4006ee:	8b 05 6c 09 20 00    	mov    0x20096c(%rip),%eax        # 601060 <b>
  4006f4:	01 c0                	add    %eax,%eax
  4006f6:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  4006fd:	89 d3                	mov    %edx,%ebx
  4006ff:	29 c3                	sub    %eax,%ebx
  400701:	89 d8                	mov    %ebx,%eax
  400703:	01 c8                	add    %ecx,%eax
  400705:	8d 50 1f             	lea    0x1f(%rax),%edx
  400708:	85 c0                	test   %eax,%eax
  40070a:	0f 48 c2             	cmovs  %edx,%eax
  40070d:	c1 f8 05             	sar    $0x5,%eax
  400710:	89 c2                	mov    %eax,%edx
  400712:	8b 05 54 09 20 00    	mov    0x200954(%rip),%eax        # 60106c <cb>
  400718:	01 d0                	add    %edx,%eax
  40071a:	89 c2                	mov    %eax,%edx
  40071c:	c1 ea 1f             	shr    $0x1f,%edx
  40071f:	01 d0                	add    %edx,%eax
  400721:	d1 f8                	sar    %eax
  400723:	89 05 43 09 20 00    	mov    %eax,0x200943(%rip)        # 60106c <cb>
  400729:	8b 05 39 09 20 00    	mov    0x200939(%rip),%eax        # 601068 <r>
  40072f:	01 c0                	add    %eax,%eax
  400731:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  400738:	89 d1                	mov    %edx,%ecx
  40073a:	29 c1                	sub    %eax,%ecx
  40073c:	8b 15 3e a5 fa 01    	mov    0x1faa53e(%rip),%edx        # 23aac80 <g>
  400742:	89 d0                	mov    %edx,%eax
  400744:	01 c0                	add    %eax,%eax
  400746:	01 d0                	add    %edx,%eax
  400748:	c1 e0 02             	shl    $0x2,%eax
  40074b:	f7 d8                	neg    %eax
  40074d:	01 c8                	add    %ecx,%eax
  40074f:	8d 88 00 10 00 00    	lea    0x1000(%rax),%ecx
  400755:	8b 15 05 09 20 00    	mov    0x200905(%rip),%edx        # 601060 <b>
  40075b:	b8 00 00 00 00       	mov    $0x0,%eax
  400760:	29 d0                	sub    %edx,%eax
  400762:	01 c0                	add    %eax,%eax
  400764:	01 c8                	add    %ecx,%eax
  400766:	8d 50 1f             	lea    0x1f(%rax),%edx
  400769:	85 c0                	test   %eax,%eax
  40076b:	0f 48 c2             	cmovs  %edx,%eax
  40076e:	c1 f8 05             	sar    $0x5,%eax
  400771:	89 c2                	mov    %eax,%edx
  400773:	8b 05 f7 08 20 00    	mov    0x2008f7(%rip),%eax        # 601070 <cr>
  400779:	01 d0                	add    %edx,%eax
  40077b:	89 c2                	mov    %eax,%edx
  40077d:	c1 ea 1f             	shr    $0x1f,%edx
  400780:	01 d0                	add    %edx,%eax
  400782:	d1 f8                	sar    %eax
  400784:	89 05 e6 08 20 00    	mov    %eax,0x2008e6(%rip)        # 601070 <cr>
  40078a:	b8 00 00 00 00       	mov    $0x0,%eax
  40078f:	e8 84 00 00 00       	callq  400818 <checkThresholds>
  400794:	b8 00 00 00 00       	mov    $0x0,%eax
  400799:	e8 2e 02 00 00       	callq  4009cc <writeNextYCbCr>
  40079e:	8b 05 c0 08 20 00    	mov    0x2008c0(%rip),%eax        # 601064 <j>
  4007a4:	83 c0 01             	add    $0x1,%eax
  4007a7:	89 05 b7 08 20 00    	mov    %eax,0x2008b7(%rip)        # 601064 <j>
  4007ad:	8b 05 b1 08 20 00    	mov    0x2008b1(%rip),%eax        # 601064 <j>
  4007b3:	3d 37 04 00 00       	cmp    $0x437,%eax
  4007b8:	0f 8e c7 fe ff ff    	jle    400685 <main+0x61>
  4007be:	8b 05 c0 a4 fa 01    	mov    0x1faa4c0(%rip),%eax        # 23aac84 <i>
  4007c4:	83 c0 01             	add    $0x1,%eax
  4007c7:	89 05 b7 a4 fa 01    	mov    %eax,0x1faa4b7(%rip)        # 23aac84 <i>
  4007cd:	8b 05 b1 a4 fa 01    	mov    0x1faa4b1(%rip),%eax        # 23aac84 <i>
  4007d3:	3d 7f 07 00 00       	cmp    $0x77f,%eax
  4007d8:	0f 8e 98 fe ff ff    	jle    400676 <main+0x52>
  4007de:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007e2:	48 83 c0 10          	add    $0x10,%rax
  4007e6:	48 8b 00             	mov    (%rax),%rax
  4007e9:	48 89 c7             	mov    %rax,%rdi
  4007ec:	e8 20 01 00 00       	callq  400911 <writeFile>
  4007f1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007f5:	48 83 c0 10          	add    $0x10,%rax
  4007f9:	48 8b 10             	mov    (%rax),%rdx
  4007fc:	b8 d8 0b 40 00       	mov    $0x400bd8,%eax
  400801:	48 89 d6             	mov    %rdx,%rsi
  400804:	48 89 c7             	mov    %rax,%rdi
  400807:	b8 00 00 00 00       	mov    $0x0,%eax
  40080c:	e8 ef fc ff ff       	callq  400500 <printf@plt>
  400811:	48 83 c4 18          	add    $0x18,%rsp
  400815:	5b                   	pop    %rbx
  400816:	5d                   	pop    %rbp
  400817:	c3                   	retq   

0000000000400818 <checkThresholds>:
  400818:	55                   	push   %rbp
  400819:	48 89 e5             	mov    %rsp,%rbp
  40081c:	8b 05 66 a4 fa 01    	mov    0x1faa466(%rip),%eax        # 23aac88 <y>
  400822:	83 f8 0f             	cmp    $0xf,%eax
  400825:	7f 0c                	jg     400833 <checkThresholds+0x1b>
  400827:	c7 05 57 a4 fa 01 10 	movl   $0x10,0x1faa457(%rip)        # 23aac88 <y>
  40082e:	00 00 00 
  400831:	eb 17                	jmp    40084a <checkThresholds+0x32>
  400833:	8b 05 4f a4 fa 01    	mov    0x1faa44f(%rip),%eax        # 23aac88 <y>
  400839:	3d eb 00 00 00       	cmp    $0xeb,%eax
  40083e:	7e 0a                	jle    40084a <checkThresholds+0x32>
  400840:	c7 05 3e a4 fa 01 eb 	movl   $0xeb,0x1faa43e(%rip)        # 23aac88 <y>
  400847:	00 00 00 
  40084a:	8b 05 1c 08 20 00    	mov    0x20081c(%rip),%eax        # 60106c <cb>
  400850:	83 f8 0f             	cmp    $0xf,%eax
  400853:	7f 0c                	jg     400861 <checkThresholds+0x49>
  400855:	c7 05 0d 08 20 00 10 	movl   $0x10,0x20080d(%rip)        # 60106c <cb>
  40085c:	00 00 00 
  40085f:	eb 17                	jmp    400878 <checkThresholds+0x60>
  400861:	8b 05 05 08 20 00    	mov    0x200805(%rip),%eax        # 60106c <cb>
  400867:	3d f0 00 00 00       	cmp    $0xf0,%eax
  40086c:	7e 0a                	jle    400878 <checkThresholds+0x60>
  40086e:	c7 05 f4 07 20 00 f0 	movl   $0xf0,0x2007f4(%rip)        # 60106c <cb>
  400875:	00 00 00 
  400878:	8b 05 f2 07 20 00    	mov    0x2007f2(%rip),%eax        # 601070 <cr>
  40087e:	83 f8 0f             	cmp    $0xf,%eax
  400881:	7f 0c                	jg     40088f <checkThresholds+0x77>
  400883:	c7 05 e3 07 20 00 10 	movl   $0x10,0x2007e3(%rip)        # 601070 <cr>
  40088a:	00 00 00 
  40088d:	eb 17                	jmp    4008a6 <checkThresholds+0x8e>
  40088f:	8b 05 db 07 20 00    	mov    0x2007db(%rip),%eax        # 601070 <cr>
  400895:	3d f0 00 00 00       	cmp    $0xf0,%eax
  40089a:	7e 0a                	jle    4008a6 <checkThresholds+0x8e>
  40089c:	c7 05 ca 07 20 00 f0 	movl   $0xf0,0x2007ca(%rip)        # 601070 <cr>
  4008a3:	00 00 00 
  4008a6:	5d                   	pop    %rbp
  4008a7:	c3                   	retq   

00000000004008a8 <loadFile>:
  4008a8:	55                   	push   %rbp
  4008a9:	48 89 e5             	mov    %rsp,%rbp
  4008ac:	48 83 ec 20          	sub    $0x20,%rsp
  4008b0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4008b4:	ba fa 0b 40 00       	mov    $0x400bfa,%edx
  4008b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008bd:	48 89 d6             	mov    %rdx,%rsi
  4008c0:	48 89 c7             	mov    %rax,%rdi
  4008c3:	e8 58 fc ff ff       	callq  400520 <fopen@plt>
  4008c8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4008cc:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4008d1:	75 12                	jne    4008e5 <loadFile+0x3d>
  4008d3:	b8 00 0c 40 00       	mov    $0x400c00,%eax
  4008d8:	48 89 c7             	mov    %rax,%rdi
  4008db:	b8 00 00 00 00       	mov    $0x0,%eax
  4008e0:	e8 1b fc ff ff       	callq  400500 <printf@plt>
  4008e5:	b8 80 c0 db 01       	mov    $0x1dbc080,%eax
  4008ea:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4008ee:	48 89 d1             	mov    %rdx,%rcx
  4008f1:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  4008f6:	be 01 00 00 00       	mov    $0x1,%esi
  4008fb:	48 89 c7             	mov    %rax,%rdi
  4008fe:	e8 dd fb ff ff       	callq  4004e0 <fread@plt>
  400903:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400907:	48 89 c7             	mov    %rax,%rdi
  40090a:	e8 e1 fb ff ff       	callq  4004f0 <fclose@plt>
  40090f:	c9                   	leaveq 
  400910:	c3                   	retq   

0000000000400911 <writeFile>:
  400911:	55                   	push   %rbp
  400912:	48 89 e5             	mov    %rsp,%rbp
  400915:	48 83 ec 20          	sub    $0x20,%rsp
  400919:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40091d:	ba 21 0c 40 00       	mov    $0x400c21,%edx
  400922:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400926:	48 89 d6             	mov    %rdx,%rsi
  400929:	48 89 c7             	mov    %rax,%rdi
  40092c:	e8 ef fb ff ff       	callq  400520 <fopen@plt>
  400931:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400935:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40093a:	75 12                	jne    40094e <writeFile+0x3d>
  40093c:	b8 28 0c 40 00       	mov    $0x400c28,%eax
  400941:	48 89 c7             	mov    %rax,%rdi
  400944:	b8 00 00 00 00       	mov    $0x0,%eax
  400949:	e8 b2 fb ff ff       	callq  400500 <printf@plt>
  40094e:	b8 80 10 60 00       	mov    $0x601080,%eax
  400953:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400957:	48 89 d1             	mov    %rdx,%rcx
  40095a:	ba 00 76 2f 00       	mov    $0x2f7600,%edx
  40095f:	be 04 00 00 00       	mov    $0x4,%esi
  400964:	48 89 c7             	mov    %rax,%rdi
  400967:	e8 c4 fb ff ff       	callq  400530 <fwrite@plt>
  40096c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400970:	48 89 c7             	mov    %rax,%rdi
  400973:	e8 78 fb ff ff       	callq  4004f0 <fclose@plt>
  400978:	c9                   	leaveq 
  400979:	c3                   	retq   

000000000040097a <writeNextYCbCrold>:
  40097a:	55                   	push   %rbp
  40097b:	48 89 e5             	mov    %rsp,%rbp
  40097e:	8b 05 cc 06 20 00    	mov    0x2006cc(%rip),%eax        # 601050 <curByte>
  400984:	83 e8 01             	sub    $0x1,%eax
  400987:	8b 15 fb a2 fa 01    	mov    0x1faa2fb(%rip),%edx        # 23aac88 <y>
  40098d:	48 98                	cltq   
  40098f:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  400996:	8b 05 b4 06 20 00    	mov    0x2006b4(%rip),%eax        # 601050 <curByte>
  40099c:	05 ff a3 1f 00       	add    $0x1fa3ff,%eax
  4009a1:	8b 15 c5 06 20 00    	mov    0x2006c5(%rip),%edx        # 60106c <cb>
  4009a7:	48 98                	cltq   
  4009a9:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  4009b0:	8b 05 9a 06 20 00    	mov    0x20069a(%rip),%eax        # 601050 <curByte>
  4009b6:	05 ff 47 3f 00       	add    $0x3f47ff,%eax
  4009bb:	8b 15 af 06 20 00    	mov    0x2006af(%rip),%edx        # 601070 <cr>
  4009c1:	48 98                	cltq   
  4009c3:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  4009ca:	5d                   	pop    %rbp
  4009cb:	c3                   	retq   

00000000004009cc <writeNextYCbCr>:
  4009cc:	55                   	push   %rbp
  4009cd:	48 89 e5             	mov    %rsp,%rbp
  4009d0:	8b 05 7a 06 20 00    	mov    0x20067a(%rip),%eax        # 601050 <curByte>
  4009d6:	83 e8 01             	sub    $0x1,%eax
  4009d9:	8b 15 a9 a2 fa 01    	mov    0x1faa2a9(%rip),%edx        # 23aac88 <y>
  4009df:	48 98                	cltq   
  4009e1:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  4009e8:	8b 05 76 06 20 00    	mov    0x200676(%rip),%eax        # 601064 <j>
  4009ee:	83 e0 03             	and    $0x3,%eax
  4009f1:	85 c0                	test   %eax,%eax
  4009f3:	75 64                	jne    400a59 <writeNextYCbCr+0x8d>
  4009f5:	8b 05 55 06 20 00    	mov    0x200655(%rip),%eax        # 601050 <curByte>
  4009fb:	83 e8 01             	sub    $0x1,%eax
  4009fe:	8d 50 03             	lea    0x3(%rax),%edx
  400a01:	85 c0                	test   %eax,%eax
  400a03:	0f 48 c2             	cmovs  %edx,%eax
  400a06:	c1 f8 02             	sar    $0x2,%eax
  400a09:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400a0e:	8b 15 58 06 20 00    	mov    0x200658(%rip),%edx        # 60106c <cb>
  400a14:	48 98                	cltq   
  400a16:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  400a1d:	c7 05 45 06 20 00 00 	movl   $0x0,0x200645(%rip)        # 60106c <cb>
  400a24:	00 00 00 
  400a27:	8b 05 23 06 20 00    	mov    0x200623(%rip),%eax        # 601050 <curByte>
  400a2d:	83 e8 01             	sub    $0x1,%eax
  400a30:	8d 50 03             	lea    0x3(%rax),%edx
  400a33:	85 c0                	test   %eax,%eax
  400a35:	0f 48 c2             	cmovs  %edx,%eax
  400a38:	c1 f8 02             	sar    $0x2,%eax
  400a3b:	05 00 8d 27 00       	add    $0x278d00,%eax
  400a40:	8b 15 2a 06 20 00    	mov    0x20062a(%rip),%edx        # 601070 <cr>
  400a46:	48 98                	cltq   
  400a48:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  400a4f:	c7 05 17 06 20 00 00 	movl   $0x0,0x200617(%rip)        # 601070 <cr>
  400a56:	00 00 00 
  400a59:	5d                   	pop    %rbp
  400a5a:	c3                   	retq   

0000000000400a5b <loadNextRGB>:
  400a5b:	55                   	push   %rbp
  400a5c:	48 89 e5             	mov    %rsp,%rbp
  400a5f:	8b 05 eb 05 20 00    	mov    0x2005eb(%rip),%eax        # 601050 <curByte>
  400a65:	48 98                	cltq   
  400a67:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  400a6e:	0f be c0             	movsbl %al,%eax
  400a71:	89 05 f1 05 20 00    	mov    %eax,0x2005f1(%rip)        # 601068 <r>
  400a77:	8b 05 d3 05 20 00    	mov    0x2005d3(%rip),%eax        # 601050 <curByte>
  400a7d:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400a82:	48 98                	cltq   
  400a84:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  400a8b:	0f be c0             	movsbl %al,%eax
  400a8e:	89 05 ec a1 fa 01    	mov    %eax,0x1faa1ec(%rip)        # 23aac80 <g>
  400a94:	8b 05 b6 05 20 00    	mov    0x2005b6(%rip),%eax        # 601050 <curByte>
  400a9a:	05 00 48 3f 00       	add    $0x3f4800,%eax
  400a9f:	48 98                	cltq   
  400aa1:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  400aa8:	0f be c0             	movsbl %al,%eax
  400aab:	89 05 af 05 20 00    	mov    %eax,0x2005af(%rip)        # 601060 <b>
  400ab1:	8b 05 99 05 20 00    	mov    0x200599(%rip),%eax        # 601050 <curByte>
  400ab7:	83 c0 01             	add    $0x1,%eax
  400aba:	89 05 90 05 20 00    	mov    %eax,0x200590(%rip)        # 601050 <curByte>
  400ac0:	5d                   	pop    %rbp
  400ac1:	c3                   	retq   
  400ac2:	90                   	nop
  400ac3:	90                   	nop
  400ac4:	90                   	nop
  400ac5:	90                   	nop
  400ac6:	90                   	nop
  400ac7:	90                   	nop
  400ac8:	90                   	nop
  400ac9:	90                   	nop
  400aca:	90                   	nop
  400acb:	90                   	nop
  400acc:	90                   	nop
  400acd:	90                   	nop
  400ace:	90                   	nop
  400acf:	90                   	nop

0000000000400ad0 <__libc_csu_init>:
  400ad0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400ad5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  400ada:	48 8d 2d 43 03 20 00 	lea    0x200343(%rip),%rbp        # 600e24 <__init_array_end>
  400ae1:	4c 8d 25 3c 03 20 00 	lea    0x20033c(%rip),%r12        # 600e24 <__init_array_end>
  400ae8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  400aed:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400af2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400af7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  400afc:	48 83 ec 38          	sub    $0x38,%rsp
  400b00:	4c 29 e5             	sub    %r12,%rbp
  400b03:	41 89 fd             	mov    %edi,%r13d
  400b06:	49 89 f6             	mov    %rsi,%r14
  400b09:	48 c1 fd 03          	sar    $0x3,%rbp
  400b0d:	49 89 d7             	mov    %rdx,%r15
  400b10:	e8 9b f9 ff ff       	callq  4004b0 <_init>
  400b15:	48 85 ed             	test   %rbp,%rbp
  400b18:	74 1c                	je     400b36 <__libc_csu_init+0x66>
  400b1a:	31 db                	xor    %ebx,%ebx
  400b1c:	0f 1f 40 00          	nopl   0x0(%rax)
  400b20:	4c 89 fa             	mov    %r15,%rdx
  400b23:	4c 89 f6             	mov    %r14,%rsi
  400b26:	44 89 ef             	mov    %r13d,%edi
  400b29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b2d:	48 83 c3 01          	add    $0x1,%rbx
  400b31:	48 39 eb             	cmp    %rbp,%rbx
  400b34:	75 ea                	jne    400b20 <__libc_csu_init+0x50>
  400b36:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400b3b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400b40:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400b45:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400b4a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400b4f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400b54:	48 83 c4 38          	add    $0x38,%rsp
  400b58:	c3                   	retq   
  400b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400b60 <__libc_csu_fini>:
  400b60:	f3 c3                	repz retq 
  400b62:	90                   	nop
  400b63:	90                   	nop
  400b64:	90                   	nop
  400b65:	90                   	nop
  400b66:	90                   	nop
  400b67:	90                   	nop
  400b68:	90                   	nop
  400b69:	90                   	nop
  400b6a:	90                   	nop
  400b6b:	90                   	nop
  400b6c:	90                   	nop
  400b6d:	90                   	nop
  400b6e:	90                   	nop
  400b6f:	90                   	nop

0000000000400b70 <__do_global_ctors_aux>:
  400b70:	55                   	push   %rbp
  400b71:	48 89 e5             	mov    %rsp,%rbp
  400b74:	53                   	push   %rbx
  400b75:	48 83 ec 08          	sub    $0x8,%rsp
  400b79:	48 8b 05 a8 02 20 00 	mov    0x2002a8(%rip),%rax        # 600e28 <__CTOR_LIST__>
  400b80:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400b84:	74 19                	je     400b9f <__do_global_ctors_aux+0x2f>
  400b86:	bb 28 0e 60 00       	mov    $0x600e28,%ebx
  400b8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b90:	48 83 eb 08          	sub    $0x8,%rbx
  400b94:	ff d0                	callq  *%rax
  400b96:	48 8b 03             	mov    (%rbx),%rax
  400b99:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400b9d:	75 f1                	jne    400b90 <__do_global_ctors_aux+0x20>
  400b9f:	48 83 c4 08          	add    $0x8,%rsp
  400ba3:	5b                   	pop    %rbx
  400ba4:	5d                   	pop    %rbp
  400ba5:	c3                   	retq   
  400ba6:	90                   	nop
  400ba7:	90                   	nop

Disassembly of section .fini:

0000000000400ba8 <_fini>:
  400ba8:	48 83 ec 08          	sub    $0x8,%rsp
  400bac:	e8 df f9 ff ff       	callq  400590 <__do_global_dtors_aux>
  400bb1:	48 83 c4 08          	add    $0x8,%rsp
  400bb5:	c3                   	retq   
