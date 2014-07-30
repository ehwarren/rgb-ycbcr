
bin/soft_int.out:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	e8 b3 00 00 00       	callq  40056c <call_gmon_start>
  4004b9:	e8 42 01 00 00       	callq  400600 <frame_dummy>
  4004be:	e8 9d 06 00 00       	callq  400b60 <__do_global_ctors_aux>
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
  40054f:	49 c7 c0 50 0b 40 00 	mov    $0x400b50,%r8
  400556:	48 c7 c1 c0 0a 40 00 	mov    $0x400ac0,%rcx
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
  40063f:	b8 b0 0b 40 00       	mov    $0x400bb0,%eax
  400644:	48 89 d6             	mov    %rdx,%rsi
  400647:	48 89 c7             	mov    %rax,%rdi
  40064a:	b8 00 00 00 00       	mov    $0x0,%eax
  40064f:	e8 ac fe ff ff       	callq  400500 <printf@plt>
  400654:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400658:	48 83 c0 08          	add    $0x8,%rax
  40065c:	48 8b 00             	mov    (%rax),%rax
  40065f:	48 89 c7             	mov    %rax,%rdi
  400662:	e8 3a 02 00 00       	callq  4008a1 <loadFile>
  400667:	c7 05 13 a6 fa 01 00 	movl   $0x0,0x1faa613(%rip)        # 23aac84 <i>
  40066e:	00 00 00 
  400671:	e9 50 01 00 00       	jmpq   4007c6 <main+0x1a2>
  400676:	c7 05 e4 09 20 00 00 	movl   $0x0,0x2009e4(%rip)        # 601064 <j>
  40067d:	00 00 00 
  400680:	e9 21 01 00 00       	jmpq   4007a6 <main+0x182>
  400685:	b8 00 00 00 00       	mov    $0x0,%eax
  40068a:	e8 c5 03 00 00       	callq  400a54 <loadNextRGB>
  40068f:	8b 05 d3 09 20 00    	mov    0x2009d3(%rip),%eax        # 601068 <r>
  400695:	8d 50 40             	lea    0x40(%rax),%edx
  400698:	8b 05 e2 a5 fa 01    	mov    0x1faa5e2(%rip),%eax        # 23aac80 <g>
  40069e:	01 c0                	add    %eax,%eax
  4006a0:	01 d0                	add    %edx,%eax
  4006a2:	8d 14 00             	lea    (%rax,%rax,1),%edx
  4006a5:	8b 05 b5 09 20 00    	mov    0x2009b5(%rip),%eax        # 601060 <b>
  4006ab:	01 d0                	add    %edx,%eax
  4006ad:	c1 e0 02             	shl    $0x2,%eax
  4006b0:	8d 50 1f             	lea    0x1f(%rax),%edx
  4006b3:	85 c0                	test   %eax,%eax
  4006b5:	0f 48 c2             	cmovs  %edx,%eax
  4006b8:	c1 f8 05             	sar    $0x5,%eax
  4006bb:	89 05 c7 a5 fa 01    	mov    %eax,0x1faa5c7(%rip)        # 23aac88 <y>
  4006c1:	8b 05 a1 09 20 00    	mov    0x2009a1(%rip),%eax        # 601068 <r>
  4006c7:	ba 00 04 00 00       	mov    $0x400,%edx
  4006cc:	89 d1                	mov    %edx,%ecx
  4006ce:	29 c1                	sub    %eax,%ecx
  4006d0:	89 c8                	mov    %ecx,%eax
  4006d2:	8d 0c 85 00 00 00 00 	lea    0x0(,%rax,4),%ecx
  4006d9:	8b 15 a1 a5 fa 01    	mov    0x1faa5a1(%rip),%edx        # 23aac80 <g>
  4006df:	89 d0                	mov    %edx,%eax
  4006e1:	c1 e0 02             	shl    $0x2,%eax
  4006e4:	01 d0                	add    %edx,%eax
  4006e6:	01 c0                	add    %eax,%eax
  4006e8:	f7 d8                	neg    %eax
  4006ea:	01 c1                	add    %eax,%ecx
  4006ec:	8b 05 6e 09 20 00    	mov    0x20096e(%rip),%eax        # 601060 <b>
  4006f2:	01 c0                	add    %eax,%eax
  4006f4:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  4006fb:	89 d3                	mov    %edx,%ebx
  4006fd:	29 c3                	sub    %eax,%ebx
  4006ff:	89 d8                	mov    %ebx,%eax
  400701:	01 c8                	add    %ecx,%eax
  400703:	8d 50 1f             	lea    0x1f(%rax),%edx
  400706:	85 c0                	test   %eax,%eax
  400708:	0f 48 c2             	cmovs  %edx,%eax
  40070b:	c1 f8 05             	sar    $0x5,%eax
  40070e:	89 c2                	mov    %eax,%edx
  400710:	8b 05 56 09 20 00    	mov    0x200956(%rip),%eax        # 60106c <cb>
  400716:	01 d0                	add    %edx,%eax
  400718:	89 c2                	mov    %eax,%edx
  40071a:	c1 ea 1f             	shr    $0x1f,%edx
  40071d:	01 d0                	add    %edx,%eax
  40071f:	d1 f8                	sar    %eax
  400721:	89 05 45 09 20 00    	mov    %eax,0x200945(%rip)        # 60106c <cb>
  400727:	8b 05 3b 09 20 00    	mov    0x20093b(%rip),%eax        # 601068 <r>
  40072d:	01 c0                	add    %eax,%eax
  40072f:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  400736:	89 d1                	mov    %edx,%ecx
  400738:	29 c1                	sub    %eax,%ecx
  40073a:	8b 15 40 a5 fa 01    	mov    0x1faa540(%rip),%edx        # 23aac80 <g>
  400740:	89 d0                	mov    %edx,%eax
  400742:	01 c0                	add    %eax,%eax
  400744:	01 d0                	add    %edx,%eax
  400746:	c1 e0 02             	shl    $0x2,%eax
  400749:	f7 d8                	neg    %eax
  40074b:	01 c8                	add    %ecx,%eax
  40074d:	8d 90 00 10 00 00    	lea    0x1000(%rax),%edx
  400753:	8b 05 07 09 20 00    	mov    0x200907(%rip),%eax        # 601060 <b>
  400759:	89 d1                	mov    %edx,%ecx
  40075b:	29 c1                	sub    %eax,%ecx
  40075d:	89 c8                	mov    %ecx,%eax
  40075f:	8d 50 1f             	lea    0x1f(%rax),%edx
  400762:	85 c0                	test   %eax,%eax
  400764:	0f 48 c2             	cmovs  %edx,%eax
  400767:	c1 f8 05             	sar    $0x5,%eax
  40076a:	89 c2                	mov    %eax,%edx
  40076c:	8b 05 fe 08 20 00    	mov    0x2008fe(%rip),%eax        # 601070 <cr>
  400772:	01 d0                	add    %edx,%eax
  400774:	89 c2                	mov    %eax,%edx
  400776:	c1 ea 1f             	shr    $0x1f,%edx
  400779:	01 d0                	add    %edx,%eax
  40077b:	d1 f8                	sar    %eax
  40077d:	89 05 ed 08 20 00    	mov    %eax,0x2008ed(%rip)        # 601070 <cr>
  400783:	b8 00 00 00 00       	mov    $0x0,%eax
  400788:	e8 84 00 00 00       	callq  400811 <checkThresholds>
  40078d:	b8 00 00 00 00       	mov    $0x0,%eax
  400792:	e8 2e 02 00 00       	callq  4009c5 <writeNextYCbCr>
  400797:	8b 05 c7 08 20 00    	mov    0x2008c7(%rip),%eax        # 601064 <j>
  40079d:	83 c0 01             	add    $0x1,%eax
  4007a0:	89 05 be 08 20 00    	mov    %eax,0x2008be(%rip)        # 601064 <j>
  4007a6:	8b 05 b8 08 20 00    	mov    0x2008b8(%rip),%eax        # 601064 <j>
  4007ac:	3d 37 04 00 00       	cmp    $0x437,%eax
  4007b1:	0f 8e ce fe ff ff    	jle    400685 <main+0x61>
  4007b7:	8b 05 c7 a4 fa 01    	mov    0x1faa4c7(%rip),%eax        # 23aac84 <i>
  4007bd:	83 c0 01             	add    $0x1,%eax
  4007c0:	89 05 be a4 fa 01    	mov    %eax,0x1faa4be(%rip)        # 23aac84 <i>
  4007c6:	8b 05 b8 a4 fa 01    	mov    0x1faa4b8(%rip),%eax        # 23aac84 <i>
  4007cc:	3d 7f 07 00 00       	cmp    $0x77f,%eax
  4007d1:	0f 8e 9f fe ff ff    	jle    400676 <main+0x52>
  4007d7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007db:	48 83 c0 10          	add    $0x10,%rax
  4007df:	48 8b 00             	mov    (%rax),%rax
  4007e2:	48 89 c7             	mov    %rax,%rdi
  4007e5:	e8 20 01 00 00       	callq  40090a <writeFile>
  4007ea:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007ee:	48 83 c0 10          	add    $0x10,%rax
  4007f2:	48 8b 10             	mov    (%rax),%rdx
  4007f5:	b8 c8 0b 40 00       	mov    $0x400bc8,%eax
  4007fa:	48 89 d6             	mov    %rdx,%rsi
  4007fd:	48 89 c7             	mov    %rax,%rdi
  400800:	b8 00 00 00 00       	mov    $0x0,%eax
  400805:	e8 f6 fc ff ff       	callq  400500 <printf@plt>
  40080a:	48 83 c4 18          	add    $0x18,%rsp
  40080e:	5b                   	pop    %rbx
  40080f:	5d                   	pop    %rbp
  400810:	c3                   	retq   

0000000000400811 <checkThresholds>:
  400811:	55                   	push   %rbp
  400812:	48 89 e5             	mov    %rsp,%rbp
  400815:	8b 05 6d a4 fa 01    	mov    0x1faa46d(%rip),%eax        # 23aac88 <y>
  40081b:	83 f8 0f             	cmp    $0xf,%eax
  40081e:	7f 0c                	jg     40082c <checkThresholds+0x1b>
  400820:	c7 05 5e a4 fa 01 10 	movl   $0x10,0x1faa45e(%rip)        # 23aac88 <y>
  400827:	00 00 00 
  40082a:	eb 17                	jmp    400843 <checkThresholds+0x32>
  40082c:	8b 05 56 a4 fa 01    	mov    0x1faa456(%rip),%eax        # 23aac88 <y>
  400832:	3d eb 00 00 00       	cmp    $0xeb,%eax
  400837:	7e 0a                	jle    400843 <checkThresholds+0x32>
  400839:	c7 05 45 a4 fa 01 eb 	movl   $0xeb,0x1faa445(%rip)        # 23aac88 <y>
  400840:	00 00 00 
  400843:	8b 05 23 08 20 00    	mov    0x200823(%rip),%eax        # 60106c <cb>
  400849:	83 f8 0f             	cmp    $0xf,%eax
  40084c:	7f 0c                	jg     40085a <checkThresholds+0x49>
  40084e:	c7 05 14 08 20 00 10 	movl   $0x10,0x200814(%rip)        # 60106c <cb>
  400855:	00 00 00 
  400858:	eb 17                	jmp    400871 <checkThresholds+0x60>
  40085a:	8b 05 0c 08 20 00    	mov    0x20080c(%rip),%eax        # 60106c <cb>
  400860:	3d f0 00 00 00       	cmp    $0xf0,%eax
  400865:	7e 0a                	jle    400871 <checkThresholds+0x60>
  400867:	c7 05 fb 07 20 00 f0 	movl   $0xf0,0x2007fb(%rip)        # 60106c <cb>
  40086e:	00 00 00 
  400871:	8b 05 f9 07 20 00    	mov    0x2007f9(%rip),%eax        # 601070 <cr>
  400877:	83 f8 0f             	cmp    $0xf,%eax
  40087a:	7f 0c                	jg     400888 <checkThresholds+0x77>
  40087c:	c7 05 ea 07 20 00 10 	movl   $0x10,0x2007ea(%rip)        # 601070 <cr>
  400883:	00 00 00 
  400886:	eb 17                	jmp    40089f <checkThresholds+0x8e>
  400888:	8b 05 e2 07 20 00    	mov    0x2007e2(%rip),%eax        # 601070 <cr>
  40088e:	3d f0 00 00 00       	cmp    $0xf0,%eax
  400893:	7e 0a                	jle    40089f <checkThresholds+0x8e>
  400895:	c7 05 d1 07 20 00 f0 	movl   $0xf0,0x2007d1(%rip)        # 601070 <cr>
  40089c:	00 00 00 
  40089f:	5d                   	pop    %rbp
  4008a0:	c3                   	retq   

00000000004008a1 <loadFile>:
  4008a1:	55                   	push   %rbp
  4008a2:	48 89 e5             	mov    %rsp,%rbp
  4008a5:	48 83 ec 20          	sub    $0x20,%rsp
  4008a9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4008ad:	ba ea 0b 40 00       	mov    $0x400bea,%edx
  4008b2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008b6:	48 89 d6             	mov    %rdx,%rsi
  4008b9:	48 89 c7             	mov    %rax,%rdi
  4008bc:	e8 5f fc ff ff       	callq  400520 <fopen@plt>
  4008c1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4008c5:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4008ca:	75 12                	jne    4008de <loadFile+0x3d>
  4008cc:	b8 f0 0b 40 00       	mov    $0x400bf0,%eax
  4008d1:	48 89 c7             	mov    %rax,%rdi
  4008d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4008d9:	e8 22 fc ff ff       	callq  400500 <printf@plt>
  4008de:	b8 80 c0 db 01       	mov    $0x1dbc080,%eax
  4008e3:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4008e7:	48 89 d1             	mov    %rdx,%rcx
  4008ea:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  4008ef:	be 01 00 00 00       	mov    $0x1,%esi
  4008f4:	48 89 c7             	mov    %rax,%rdi
  4008f7:	e8 e4 fb ff ff       	callq  4004e0 <fread@plt>
  4008fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400900:	48 89 c7             	mov    %rax,%rdi
  400903:	e8 e8 fb ff ff       	callq  4004f0 <fclose@plt>
  400908:	c9                   	leaveq 
  400909:	c3                   	retq   

000000000040090a <writeFile>:
  40090a:	55                   	push   %rbp
  40090b:	48 89 e5             	mov    %rsp,%rbp
  40090e:	48 83 ec 20          	sub    $0x20,%rsp
  400912:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400916:	ba 11 0c 40 00       	mov    $0x400c11,%edx
  40091b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40091f:	48 89 d6             	mov    %rdx,%rsi
  400922:	48 89 c7             	mov    %rax,%rdi
  400925:	e8 f6 fb ff ff       	callq  400520 <fopen@plt>
  40092a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40092e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400933:	75 12                	jne    400947 <writeFile+0x3d>
  400935:	b8 18 0c 40 00       	mov    $0x400c18,%eax
  40093a:	48 89 c7             	mov    %rax,%rdi
  40093d:	b8 00 00 00 00       	mov    $0x0,%eax
  400942:	e8 b9 fb ff ff       	callq  400500 <printf@plt>
  400947:	b8 80 10 60 00       	mov    $0x601080,%eax
  40094c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400950:	48 89 d1             	mov    %rdx,%rcx
  400953:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  400958:	be 04 00 00 00       	mov    $0x4,%esi
  40095d:	48 89 c7             	mov    %rax,%rdi
  400960:	e8 cb fb ff ff       	callq  400530 <fwrite@plt>
  400965:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400969:	48 89 c7             	mov    %rax,%rdi
  40096c:	e8 7f fb ff ff       	callq  4004f0 <fclose@plt>
  400971:	c9                   	leaveq 
  400972:	c3                   	retq   

0000000000400973 <writeNextYCbCrold>:
  400973:	55                   	push   %rbp
  400974:	48 89 e5             	mov    %rsp,%rbp
  400977:	8b 05 d3 06 20 00    	mov    0x2006d3(%rip),%eax        # 601050 <curByte>
  40097d:	83 e8 01             	sub    $0x1,%eax
  400980:	8b 15 02 a3 fa 01    	mov    0x1faa302(%rip),%edx        # 23aac88 <y>
  400986:	48 98                	cltq   
  400988:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  40098f:	8b 05 bb 06 20 00    	mov    0x2006bb(%rip),%eax        # 601050 <curByte>
  400995:	05 ff a3 1f 00       	add    $0x1fa3ff,%eax
  40099a:	8b 15 cc 06 20 00    	mov    0x2006cc(%rip),%edx        # 60106c <cb>
  4009a0:	48 98                	cltq   
  4009a2:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  4009a9:	8b 05 a1 06 20 00    	mov    0x2006a1(%rip),%eax        # 601050 <curByte>
  4009af:	05 ff 47 3f 00       	add    $0x3f47ff,%eax
  4009b4:	8b 15 b6 06 20 00    	mov    0x2006b6(%rip),%edx        # 601070 <cr>
  4009ba:	48 98                	cltq   
  4009bc:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  4009c3:	5d                   	pop    %rbp
  4009c4:	c3                   	retq   

00000000004009c5 <writeNextYCbCr>:
  4009c5:	55                   	push   %rbp
  4009c6:	48 89 e5             	mov    %rsp,%rbp
  4009c9:	8b 05 81 06 20 00    	mov    0x200681(%rip),%eax        # 601050 <curByte>
  4009cf:	83 e8 01             	sub    $0x1,%eax
  4009d2:	8b 15 b0 a2 fa 01    	mov    0x1faa2b0(%rip),%edx        # 23aac88 <y>
  4009d8:	48 98                	cltq   
  4009da:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  4009e1:	8b 05 7d 06 20 00    	mov    0x20067d(%rip),%eax        # 601064 <j>
  4009e7:	83 e0 03             	and    $0x3,%eax
  4009ea:	85 c0                	test   %eax,%eax
  4009ec:	75 64                	jne    400a52 <writeNextYCbCr+0x8d>
  4009ee:	8b 05 5c 06 20 00    	mov    0x20065c(%rip),%eax        # 601050 <curByte>
  4009f4:	83 e8 01             	sub    $0x1,%eax
  4009f7:	8d 50 03             	lea    0x3(%rax),%edx
  4009fa:	85 c0                	test   %eax,%eax
  4009fc:	0f 48 c2             	cmovs  %edx,%eax
  4009ff:	c1 f8 02             	sar    $0x2,%eax
  400a02:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400a07:	8b 15 5f 06 20 00    	mov    0x20065f(%rip),%edx        # 60106c <cb>
  400a0d:	48 98                	cltq   
  400a0f:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  400a16:	c7 05 4c 06 20 00 00 	movl   $0x0,0x20064c(%rip)        # 60106c <cb>
  400a1d:	00 00 00 
  400a20:	8b 05 2a 06 20 00    	mov    0x20062a(%rip),%eax        # 601050 <curByte>
  400a26:	83 e8 01             	sub    $0x1,%eax
  400a29:	8d 50 03             	lea    0x3(%rax),%edx
  400a2c:	85 c0                	test   %eax,%eax
  400a2e:	0f 48 c2             	cmovs  %edx,%eax
  400a31:	c1 f8 02             	sar    $0x2,%eax
  400a34:	05 00 8d 27 00       	add    $0x278d00,%eax
  400a39:	8b 15 31 06 20 00    	mov    0x200631(%rip),%edx        # 601070 <cr>
  400a3f:	48 98                	cltq   
  400a41:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  400a48:	c7 05 1e 06 20 00 00 	movl   $0x0,0x20061e(%rip)        # 601070 <cr>
  400a4f:	00 00 00 
  400a52:	5d                   	pop    %rbp
  400a53:	c3                   	retq   

0000000000400a54 <loadNextRGB>:
  400a54:	55                   	push   %rbp
  400a55:	48 89 e5             	mov    %rsp,%rbp
  400a58:	8b 05 f2 05 20 00    	mov    0x2005f2(%rip),%eax        # 601050 <curByte>
  400a5e:	48 98                	cltq   
  400a60:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  400a67:	0f be c0             	movsbl %al,%eax
  400a6a:	89 05 f8 05 20 00    	mov    %eax,0x2005f8(%rip)        # 601068 <r>
  400a70:	8b 05 da 05 20 00    	mov    0x2005da(%rip),%eax        # 601050 <curByte>
  400a76:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400a7b:	48 98                	cltq   
  400a7d:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  400a84:	0f be c0             	movsbl %al,%eax
  400a87:	89 05 f3 a1 fa 01    	mov    %eax,0x1faa1f3(%rip)        # 23aac80 <g>
  400a8d:	8b 05 bd 05 20 00    	mov    0x2005bd(%rip),%eax        # 601050 <curByte>
  400a93:	05 00 48 3f 00       	add    $0x3f4800,%eax
  400a98:	48 98                	cltq   
  400a9a:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  400aa1:	0f be c0             	movsbl %al,%eax
  400aa4:	89 05 b6 05 20 00    	mov    %eax,0x2005b6(%rip)        # 601060 <b>
  400aaa:	8b 05 a0 05 20 00    	mov    0x2005a0(%rip),%eax        # 601050 <curByte>
  400ab0:	83 c0 01             	add    $0x1,%eax
  400ab3:	89 05 97 05 20 00    	mov    %eax,0x200597(%rip)        # 601050 <curByte>
  400ab9:	5d                   	pop    %rbp
  400aba:	c3                   	retq   
  400abb:	90                   	nop
  400abc:	90                   	nop
  400abd:	90                   	nop
  400abe:	90                   	nop
  400abf:	90                   	nop

0000000000400ac0 <__libc_csu_init>:
  400ac0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400ac5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  400aca:	48 8d 2d 53 03 20 00 	lea    0x200353(%rip),%rbp        # 600e24 <__init_array_end>
  400ad1:	4c 8d 25 4c 03 20 00 	lea    0x20034c(%rip),%r12        # 600e24 <__init_array_end>
  400ad8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  400add:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400ae2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400ae7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  400aec:	48 83 ec 38          	sub    $0x38,%rsp
  400af0:	4c 29 e5             	sub    %r12,%rbp
  400af3:	41 89 fd             	mov    %edi,%r13d
  400af6:	49 89 f6             	mov    %rsi,%r14
  400af9:	48 c1 fd 03          	sar    $0x3,%rbp
  400afd:	49 89 d7             	mov    %rdx,%r15
  400b00:	e8 ab f9 ff ff       	callq  4004b0 <_init>
  400b05:	48 85 ed             	test   %rbp,%rbp
  400b08:	74 1c                	je     400b26 <__libc_csu_init+0x66>
  400b0a:	31 db                	xor    %ebx,%ebx
  400b0c:	0f 1f 40 00          	nopl   0x0(%rax)
  400b10:	4c 89 fa             	mov    %r15,%rdx
  400b13:	4c 89 f6             	mov    %r14,%rsi
  400b16:	44 89 ef             	mov    %r13d,%edi
  400b19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b1d:	48 83 c3 01          	add    $0x1,%rbx
  400b21:	48 39 eb             	cmp    %rbp,%rbx
  400b24:	75 ea                	jne    400b10 <__libc_csu_init+0x50>
  400b26:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400b2b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400b30:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400b35:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400b3a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400b3f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400b44:	48 83 c4 38          	add    $0x38,%rsp
  400b48:	c3                   	retq   
  400b49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400b50 <__libc_csu_fini>:
  400b50:	f3 c3                	repz retq 
  400b52:	90                   	nop
  400b53:	90                   	nop
  400b54:	90                   	nop
  400b55:	90                   	nop
  400b56:	90                   	nop
  400b57:	90                   	nop
  400b58:	90                   	nop
  400b59:	90                   	nop
  400b5a:	90                   	nop
  400b5b:	90                   	nop
  400b5c:	90                   	nop
  400b5d:	90                   	nop
  400b5e:	90                   	nop
  400b5f:	90                   	nop

0000000000400b60 <__do_global_ctors_aux>:
  400b60:	55                   	push   %rbp
  400b61:	48 89 e5             	mov    %rsp,%rbp
  400b64:	53                   	push   %rbx
  400b65:	48 83 ec 08          	sub    $0x8,%rsp
  400b69:	48 8b 05 b8 02 20 00 	mov    0x2002b8(%rip),%rax        # 600e28 <__CTOR_LIST__>
  400b70:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400b74:	74 19                	je     400b8f <__do_global_ctors_aux+0x2f>
  400b76:	bb 28 0e 60 00       	mov    $0x600e28,%ebx
  400b7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b80:	48 83 eb 08          	sub    $0x8,%rbx
  400b84:	ff d0                	callq  *%rax
  400b86:	48 8b 03             	mov    (%rbx),%rax
  400b89:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400b8d:	75 f1                	jne    400b80 <__do_global_ctors_aux+0x20>
  400b8f:	48 83 c4 08          	add    $0x8,%rsp
  400b93:	5b                   	pop    %rbx
  400b94:	5d                   	pop    %rbp
  400b95:	c3                   	retq   
  400b96:	90                   	nop
  400b97:	90                   	nop

Disassembly of section .fini:

0000000000400b98 <_fini>:
  400b98:	48 83 ec 08          	sub    $0x8,%rsp
  400b9c:	e8 ef f9 ff ff       	callq  400590 <__do_global_dtors_aux>
  400ba1:	48 83 c4 08          	add    $0x8,%rsp
  400ba5:	c3                   	retq   
