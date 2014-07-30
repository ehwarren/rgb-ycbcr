
bin/soft_int.out:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	e8 b3 00 00 00       	callq  40056c <call_gmon_start>
  4004b9:	e8 42 01 00 00       	callq  400600 <frame_dummy>
  4004be:	e8 dd 05 00 00       	callq  400aa0 <__do_global_ctors_aux>
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
  40054f:	49 c7 c0 90 0a 40 00 	mov    $0x400a90,%r8
  400556:	48 c7 c1 00 0a 40 00 	mov    $0x400a00,%rcx
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
  40063e:	b8 f0 0a 40 00       	mov    $0x400af0,%eax
  400643:	48 89 d6             	mov    %rdx,%rsi
  400646:	48 89 c7             	mov    %rax,%rdi
  400649:	b8 00 00 00 00       	mov    $0x0,%eax
  40064e:	e8 ad fe ff ff       	callq  400500 <printf@plt>
  400653:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400657:	48 83 c0 08          	add    $0x8,%rax
  40065b:	48 8b 00             	mov    (%rax),%rax
  40065e:	48 89 c7             	mov    %rax,%rdi
  400661:	e8 01 02 00 00       	callq  400867 <loadFile>
  400666:	c7 05 14 a6 fa 01 00 	movl   $0x0,0x1faa614(%rip)        # 23aac84 <i>
  40066d:	00 00 00 
  400670:	e9 16 01 00 00       	jmpq   40078b <main+0x167>
  400675:	c7 05 e5 09 20 00 00 	movl   $0x0,0x2009e5(%rip)        # 601064 <j>
  40067c:	00 00 00 
  40067f:	e9 e7 00 00 00       	jmpq   40076b <main+0x147>
  400684:	b8 00 00 00 00       	mov    $0x0,%eax
  400689:	e8 fd 02 00 00       	callq  40098b <loadNextRGB>
  40068e:	8b 05 d4 09 20 00    	mov    0x2009d4(%rip),%eax        # 601068 <r>
  400694:	8d 50 40             	lea    0x40(%rax),%edx
  400697:	8b 05 e3 a5 fa 01    	mov    0x1faa5e3(%rip),%eax        # 23aac80 <g>
  40069d:	01 c0                	add    %eax,%eax
  40069f:	01 d0                	add    %edx,%eax
  4006a1:	8d 14 00             	lea    (%rax,%rax,1),%edx
  4006a4:	8b 05 b6 09 20 00    	mov    0x2009b6(%rip),%eax        # 601060 <b>
  4006aa:	01 d0                	add    %edx,%eax
  4006ac:	01 c0                	add    %eax,%eax
  4006ae:	8d 50 0f             	lea    0xf(%rax),%edx
  4006b1:	85 c0                	test   %eax,%eax
  4006b3:	0f 48 c2             	cmovs  %edx,%eax
  4006b6:	c1 f8 04             	sar    $0x4,%eax
  4006b9:	89 05 c9 a5 fa 01    	mov    %eax,0x1faa5c9(%rip)        # 23aac88 <y>
  4006bf:	8b 05 a3 09 20 00    	mov    0x2009a3(%rip),%eax        # 601068 <r>
  4006c5:	ba 00 04 00 00       	mov    $0x400,%edx
  4006ca:	89 d1                	mov    %edx,%ecx
  4006cc:	29 c1                	sub    %eax,%ecx
  4006ce:	89 c8                	mov    %ecx,%eax
  4006d0:	8d 0c 00             	lea    (%rax,%rax,1),%ecx
  4006d3:	8b 15 a7 a5 fa 01    	mov    0x1faa5a7(%rip),%edx        # 23aac80 <g>
  4006d9:	89 d0                	mov    %edx,%eax
  4006db:	c1 e0 02             	shl    $0x2,%eax
  4006de:	01 d0                	add    %edx,%eax
  4006e0:	f7 d8                	neg    %eax
  4006e2:	01 c1                	add    %eax,%ecx
  4006e4:	8b 15 76 09 20 00    	mov    0x200976(%rip),%edx        # 601060 <b>
  4006ea:	89 d0                	mov    %edx,%eax
  4006ec:	c1 e0 03             	shl    $0x3,%eax
  4006ef:	29 d0                	sub    %edx,%eax
  4006f1:	01 c8                	add    %ecx,%eax
  4006f3:	8d 50 0f             	lea    0xf(%rax),%edx
  4006f6:	85 c0                	test   %eax,%eax
  4006f8:	0f 48 c2             	cmovs  %edx,%eax
  4006fb:	c1 f8 04             	sar    $0x4,%eax
  4006fe:	89 05 68 09 20 00    	mov    %eax,0x200968(%rip)        # 60106c <cb>
  400704:	8b 15 5e 09 20 00    	mov    0x20095e(%rip),%edx        # 601068 <r>
  40070a:	89 d0                	mov    %edx,%eax
  40070c:	c1 e0 03             	shl    $0x3,%eax
  40070f:	89 c1                	mov    %eax,%ecx
  400711:	29 d1                	sub    %edx,%ecx
  400713:	8b 15 67 a5 fa 01    	mov    0x1faa567(%rip),%edx        # 23aac80 <g>
  400719:	89 d0                	mov    %edx,%eax
  40071b:	01 c0                	add    %eax,%eax
  40071d:	01 d0                	add    %edx,%eax
  40071f:	01 c0                	add    %eax,%eax
  400721:	f7 d8                	neg    %eax
  400723:	01 c8                	add    %ecx,%eax
  400725:	8d 90 00 08 00 00    	lea    0x800(%rax),%edx
  40072b:	8b 05 2f 09 20 00    	mov    0x20092f(%rip),%eax        # 601060 <b>
  400731:	89 d1                	mov    %edx,%ecx
  400733:	29 c1                	sub    %eax,%ecx
  400735:	89 c8                	mov    %ecx,%eax
  400737:	8d 50 0f             	lea    0xf(%rax),%edx
  40073a:	85 c0                	test   %eax,%eax
  40073c:	0f 48 c2             	cmovs  %edx,%eax
  40073f:	c1 f8 04             	sar    $0x4,%eax
  400742:	89 05 28 09 20 00    	mov    %eax,0x200928(%rip)        # 601070 <cr>
  400748:	b8 00 00 00 00       	mov    $0x0,%eax
  40074d:	e8 7f 00 00 00       	callq  4007d1 <checkThresholds>
  400752:	b8 00 00 00 00       	mov    $0x0,%eax
  400757:	e8 dd 01 00 00       	callq  400939 <writeNextYCbCr>
  40075c:	8b 05 02 09 20 00    	mov    0x200902(%rip),%eax        # 601064 <j>
  400762:	83 c0 01             	add    $0x1,%eax
  400765:	89 05 f9 08 20 00    	mov    %eax,0x2008f9(%rip)        # 601064 <j>
  40076b:	8b 05 f3 08 20 00    	mov    0x2008f3(%rip),%eax        # 601064 <j>
  400771:	3d 37 04 00 00       	cmp    $0x437,%eax
  400776:	0f 8e 08 ff ff ff    	jle    400684 <main+0x60>
  40077c:	8b 05 02 a5 fa 01    	mov    0x1faa502(%rip),%eax        # 23aac84 <i>
  400782:	83 c0 01             	add    $0x1,%eax
  400785:	89 05 f9 a4 fa 01    	mov    %eax,0x1faa4f9(%rip)        # 23aac84 <i>
  40078b:	8b 05 f3 a4 fa 01    	mov    0x1faa4f3(%rip),%eax        # 23aac84 <i>
  400791:	3d 7f 07 00 00       	cmp    $0x77f,%eax
  400796:	0f 8e d9 fe ff ff    	jle    400675 <main+0x51>
  40079c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4007a0:	48 83 c0 10          	add    $0x10,%rax
  4007a4:	48 8b 00             	mov    (%rax),%rax
  4007a7:	48 89 c7             	mov    %rax,%rdi
  4007aa:	e8 21 01 00 00       	callq  4008d0 <writeFile>
  4007af:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4007b3:	48 83 c0 10          	add    $0x10,%rax
  4007b7:	48 8b 10             	mov    (%rax),%rdx
  4007ba:	b8 08 0b 40 00       	mov    $0x400b08,%eax
  4007bf:	48 89 d6             	mov    %rdx,%rsi
  4007c2:	48 89 c7             	mov    %rax,%rdi
  4007c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ca:	e8 31 fd ff ff       	callq  400500 <printf@plt>
  4007cf:	c9                   	leaveq 
  4007d0:	c3                   	retq   

00000000004007d1 <checkThresholds>:
  4007d1:	55                   	push   %rbp
  4007d2:	48 89 e5             	mov    %rsp,%rbp
  4007d5:	8b 05 ad a4 fa 01    	mov    0x1faa4ad(%rip),%eax        # 23aac88 <y>
  4007db:	3d ff 00 00 00       	cmp    $0xff,%eax
  4007e0:	7f 0c                	jg     4007ee <checkThresholds+0x1d>
  4007e2:	c7 05 9c a4 fa 01 00 	movl   $0x100,0x1faa49c(%rip)        # 23aac88 <y>
  4007e9:	01 00 00 
  4007ec:	eb 17                	jmp    400805 <checkThresholds+0x34>
  4007ee:	8b 05 94 a4 fa 01    	mov    0x1faa494(%rip),%eax        # 23aac88 <y>
  4007f4:	3d b0 0e 00 00       	cmp    $0xeb0,%eax
  4007f9:	7e 0a                	jle    400805 <checkThresholds+0x34>
  4007fb:	c7 05 83 a4 fa 01 b0 	movl   $0xeb0,0x1faa483(%rip)        # 23aac88 <y>
  400802:	0e 00 00 
  400805:	8b 05 61 08 20 00    	mov    0x200861(%rip),%eax        # 60106c <cb>
  40080b:	3d ff 00 00 00       	cmp    $0xff,%eax
  400810:	7f 0c                	jg     40081e <checkThresholds+0x4d>
  400812:	c7 05 50 08 20 00 00 	movl   $0x100,0x200850(%rip)        # 60106c <cb>
  400819:	01 00 00 
  40081c:	eb 17                	jmp    400835 <checkThresholds+0x64>
  40081e:	8b 05 48 08 20 00    	mov    0x200848(%rip),%eax        # 60106c <cb>
  400824:	3d 00 0f 00 00       	cmp    $0xf00,%eax
  400829:	7e 0a                	jle    400835 <checkThresholds+0x64>
  40082b:	c7 05 37 08 20 00 00 	movl   $0xf00,0x200837(%rip)        # 60106c <cb>
  400832:	0f 00 00 
  400835:	8b 05 35 08 20 00    	mov    0x200835(%rip),%eax        # 601070 <cr>
  40083b:	3d ff 00 00 00       	cmp    $0xff,%eax
  400840:	7f 0c                	jg     40084e <checkThresholds+0x7d>
  400842:	c7 05 24 08 20 00 00 	movl   $0x100,0x200824(%rip)        # 601070 <cr>
  400849:	01 00 00 
  40084c:	eb 17                	jmp    400865 <checkThresholds+0x94>
  40084e:	8b 05 1c 08 20 00    	mov    0x20081c(%rip),%eax        # 601070 <cr>
  400854:	3d 00 0f 00 00       	cmp    $0xf00,%eax
  400859:	7e 0a                	jle    400865 <checkThresholds+0x94>
  40085b:	c7 05 0b 08 20 00 00 	movl   $0xf00,0x20080b(%rip)        # 601070 <cr>
  400862:	0f 00 00 
  400865:	5d                   	pop    %rbp
  400866:	c3                   	retq   

0000000000400867 <loadFile>:
  400867:	55                   	push   %rbp
  400868:	48 89 e5             	mov    %rsp,%rbp
  40086b:	48 83 ec 20          	sub    $0x20,%rsp
  40086f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400873:	ba 2a 0b 40 00       	mov    $0x400b2a,%edx
  400878:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40087c:	48 89 d6             	mov    %rdx,%rsi
  40087f:	48 89 c7             	mov    %rax,%rdi
  400882:	e8 99 fc ff ff       	callq  400520 <fopen@plt>
  400887:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40088b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400890:	75 12                	jne    4008a4 <loadFile+0x3d>
  400892:	b8 30 0b 40 00       	mov    $0x400b30,%eax
  400897:	48 89 c7             	mov    %rax,%rdi
  40089a:	b8 00 00 00 00       	mov    $0x0,%eax
  40089f:	e8 5c fc ff ff       	callq  400500 <printf@plt>
  4008a4:	b8 80 c0 db 01       	mov    $0x1dbc080,%eax
  4008a9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4008ad:	48 89 d1             	mov    %rdx,%rcx
  4008b0:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  4008b5:	be 01 00 00 00       	mov    $0x1,%esi
  4008ba:	48 89 c7             	mov    %rax,%rdi
  4008bd:	e8 1e fc ff ff       	callq  4004e0 <fread@plt>
  4008c2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008c6:	48 89 c7             	mov    %rax,%rdi
  4008c9:	e8 22 fc ff ff       	callq  4004f0 <fclose@plt>
  4008ce:	c9                   	leaveq 
  4008cf:	c3                   	retq   

00000000004008d0 <writeFile>:
  4008d0:	55                   	push   %rbp
  4008d1:	48 89 e5             	mov    %rsp,%rbp
  4008d4:	48 83 ec 20          	sub    $0x20,%rsp
  4008d8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4008dc:	ba 51 0b 40 00       	mov    $0x400b51,%edx
  4008e1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008e5:	48 89 d6             	mov    %rdx,%rsi
  4008e8:	48 89 c7             	mov    %rax,%rdi
  4008eb:	e8 30 fc ff ff       	callq  400520 <fopen@plt>
  4008f0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4008f4:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4008f9:	75 12                	jne    40090d <writeFile+0x3d>
  4008fb:	b8 58 0b 40 00       	mov    $0x400b58,%eax
  400900:	48 89 c7             	mov    %rax,%rdi
  400903:	b8 00 00 00 00       	mov    $0x0,%eax
  400908:	e8 f3 fb ff ff       	callq  400500 <printf@plt>
  40090d:	b8 80 10 60 00       	mov    $0x601080,%eax
  400912:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400916:	48 89 d1             	mov    %rdx,%rcx
  400919:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  40091e:	be 04 00 00 00       	mov    $0x4,%esi
  400923:	48 89 c7             	mov    %rax,%rdi
  400926:	e8 05 fc ff ff       	callq  400530 <fwrite@plt>
  40092b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40092f:	48 89 c7             	mov    %rax,%rdi
  400932:	e8 b9 fb ff ff       	callq  4004f0 <fclose@plt>
  400937:	c9                   	leaveq 
  400938:	c3                   	retq   

0000000000400939 <writeNextYCbCr>:
  400939:	55                   	push   %rbp
  40093a:	48 89 e5             	mov    %rsp,%rbp
  40093d:	8b 05 0d 07 20 00    	mov    0x20070d(%rip),%eax        # 601050 <curByte>
  400943:	83 e8 01             	sub    $0x1,%eax
  400946:	8b 15 3c a3 fa 01    	mov    0x1faa33c(%rip),%edx        # 23aac88 <y>
  40094c:	48 98                	cltq   
  40094e:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  400955:	8b 05 f5 06 20 00    	mov    0x2006f5(%rip),%eax        # 601050 <curByte>
  40095b:	05 ff a3 1f 00       	add    $0x1fa3ff,%eax
  400960:	8b 15 06 07 20 00    	mov    0x200706(%rip),%edx        # 60106c <cb>
  400966:	48 98                	cltq   
  400968:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  40096f:	8b 05 db 06 20 00    	mov    0x2006db(%rip),%eax        # 601050 <curByte>
  400975:	05 ff 47 3f 00       	add    $0x3f47ff,%eax
  40097a:	8b 15 f0 06 20 00    	mov    0x2006f0(%rip),%edx        # 601070 <cr>
  400980:	48 98                	cltq   
  400982:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  400989:	5d                   	pop    %rbp
  40098a:	c3                   	retq   

000000000040098b <loadNextRGB>:
  40098b:	55                   	push   %rbp
  40098c:	48 89 e5             	mov    %rsp,%rbp
  40098f:	8b 05 bb 06 20 00    	mov    0x2006bb(%rip),%eax        # 601050 <curByte>
  400995:	48 98                	cltq   
  400997:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  40099e:	0f be c0             	movsbl %al,%eax
  4009a1:	89 05 c1 06 20 00    	mov    %eax,0x2006c1(%rip)        # 601068 <r>
  4009a7:	8b 05 a3 06 20 00    	mov    0x2006a3(%rip),%eax        # 601050 <curByte>
  4009ad:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  4009b2:	48 98                	cltq   
  4009b4:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  4009bb:	0f be c0             	movsbl %al,%eax
  4009be:	89 05 bc a2 fa 01    	mov    %eax,0x1faa2bc(%rip)        # 23aac80 <g>
  4009c4:	8b 05 86 06 20 00    	mov    0x200686(%rip),%eax        # 601050 <curByte>
  4009ca:	05 00 48 3f 00       	add    $0x3f4800,%eax
  4009cf:	48 98                	cltq   
  4009d1:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  4009d8:	0f be c0             	movsbl %al,%eax
  4009db:	89 05 7f 06 20 00    	mov    %eax,0x20067f(%rip)        # 601060 <b>
  4009e1:	8b 05 69 06 20 00    	mov    0x200669(%rip),%eax        # 601050 <curByte>
  4009e7:	83 c0 01             	add    $0x1,%eax
  4009ea:	89 05 60 06 20 00    	mov    %eax,0x200660(%rip)        # 601050 <curByte>
  4009f0:	5d                   	pop    %rbp
  4009f1:	c3                   	retq   
  4009f2:	90                   	nop
  4009f3:	90                   	nop
  4009f4:	90                   	nop
  4009f5:	90                   	nop
  4009f6:	90                   	nop
  4009f7:	90                   	nop
  4009f8:	90                   	nop
  4009f9:	90                   	nop
  4009fa:	90                   	nop
  4009fb:	90                   	nop
  4009fc:	90                   	nop
  4009fd:	90                   	nop
  4009fe:	90                   	nop
  4009ff:	90                   	nop

0000000000400a00 <__libc_csu_init>:
  400a00:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400a05:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  400a0a:	48 8d 2d 13 04 20 00 	lea    0x200413(%rip),%rbp        # 600e24 <__init_array_end>
  400a11:	4c 8d 25 0c 04 20 00 	lea    0x20040c(%rip),%r12        # 600e24 <__init_array_end>
  400a18:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  400a1d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400a22:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400a27:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  400a2c:	48 83 ec 38          	sub    $0x38,%rsp
  400a30:	4c 29 e5             	sub    %r12,%rbp
  400a33:	41 89 fd             	mov    %edi,%r13d
  400a36:	49 89 f6             	mov    %rsi,%r14
  400a39:	48 c1 fd 03          	sar    $0x3,%rbp
  400a3d:	49 89 d7             	mov    %rdx,%r15
  400a40:	e8 6b fa ff ff       	callq  4004b0 <_init>
  400a45:	48 85 ed             	test   %rbp,%rbp
  400a48:	74 1c                	je     400a66 <__libc_csu_init+0x66>
  400a4a:	31 db                	xor    %ebx,%ebx
  400a4c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a50:	4c 89 fa             	mov    %r15,%rdx
  400a53:	4c 89 f6             	mov    %r14,%rsi
  400a56:	44 89 ef             	mov    %r13d,%edi
  400a59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a5d:	48 83 c3 01          	add    $0x1,%rbx
  400a61:	48 39 eb             	cmp    %rbp,%rbx
  400a64:	75 ea                	jne    400a50 <__libc_csu_init+0x50>
  400a66:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400a6b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400a70:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400a75:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400a7a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400a7f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400a84:	48 83 c4 38          	add    $0x38,%rsp
  400a88:	c3                   	retq   
  400a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400a90 <__libc_csu_fini>:
  400a90:	f3 c3                	repz retq 
  400a92:	90                   	nop
  400a93:	90                   	nop
  400a94:	90                   	nop
  400a95:	90                   	nop
  400a96:	90                   	nop
  400a97:	90                   	nop
  400a98:	90                   	nop
  400a99:	90                   	nop
  400a9a:	90                   	nop
  400a9b:	90                   	nop
  400a9c:	90                   	nop
  400a9d:	90                   	nop
  400a9e:	90                   	nop
  400a9f:	90                   	nop

0000000000400aa0 <__do_global_ctors_aux>:
  400aa0:	55                   	push   %rbp
  400aa1:	48 89 e5             	mov    %rsp,%rbp
  400aa4:	53                   	push   %rbx
  400aa5:	48 83 ec 08          	sub    $0x8,%rsp
  400aa9:	48 8b 05 78 03 20 00 	mov    0x200378(%rip),%rax        # 600e28 <__CTOR_LIST__>
  400ab0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400ab4:	74 19                	je     400acf <__do_global_ctors_aux+0x2f>
  400ab6:	bb 28 0e 60 00       	mov    $0x600e28,%ebx
  400abb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ac0:	48 83 eb 08          	sub    $0x8,%rbx
  400ac4:	ff d0                	callq  *%rax
  400ac6:	48 8b 03             	mov    (%rbx),%rax
  400ac9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400acd:	75 f1                	jne    400ac0 <__do_global_ctors_aux+0x20>
  400acf:	48 83 c4 08          	add    $0x8,%rsp
  400ad3:	5b                   	pop    %rbx
  400ad4:	5d                   	pop    %rbp
  400ad5:	c3                   	retq   
  400ad6:	90                   	nop
  400ad7:	90                   	nop

Disassembly of section .fini:

0000000000400ad8 <_fini>:
  400ad8:	48 83 ec 08          	sub    $0x8,%rsp
  400adc:	e8 af fa ff ff       	callq  400590 <__do_global_dtors_aux>
  400ae1:	48 83 c4 08          	add    $0x8,%rsp
  400ae5:	c3                   	retq   
