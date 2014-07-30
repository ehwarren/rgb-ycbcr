
bin/soft_int.out:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	e8 b3 00 00 00       	callq  40056c <call_gmon_start>
  4004b9:	e8 42 01 00 00       	callq  400600 <frame_dummy>
  4004be:	e8 ed 05 00 00       	callq  400ab0 <__do_global_ctors_aux>
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
  40054f:	49 c7 c0 a0 0a 40 00 	mov    $0x400aa0,%r8
  400556:	48 c7 c1 10 0a 40 00 	mov    $0x400a10,%rcx
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
  40063f:	b8 00 0b 40 00       	mov    $0x400b00,%eax
  400644:	48 89 d6             	mov    %rdx,%rsi
  400647:	48 89 c7             	mov    %rax,%rdi
  40064a:	b8 00 00 00 00       	mov    $0x0,%eax
  40064f:	e8 ac fe ff ff       	callq  400500 <printf@plt>
  400654:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400658:	48 83 c0 08          	add    $0x8,%rax
  40065c:	48 8b 00             	mov    (%rax),%rax
  40065f:	48 89 c7             	mov    %rax,%rdi
  400662:	e8 14 02 00 00       	callq  40087b <loadFile>
  400667:	c7 05 13 a6 fa 01 00 	movl   $0x0,0x1faa613(%rip)        # 23aac84 <i>
  40066e:	00 00 00 
  400671:	e9 2a 01 00 00       	jmpq   4007a0 <main+0x17c>
  400676:	c7 05 e4 09 20 00 00 	movl   $0x0,0x2009e4(%rip)        # 601064 <j>
  40067d:	00 00 00 
  400680:	e9 fb 00 00 00       	jmpq   400780 <main+0x15c>
  400685:	b8 00 00 00 00       	mov    $0x0,%eax
  40068a:	e8 10 03 00 00       	callq  40099f <loadNextRGB>
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
  40070e:	89 05 58 09 20 00    	mov    %eax,0x200958(%rip)        # 60106c <cb>
  400714:	8b 05 4e 09 20 00    	mov    0x20094e(%rip),%eax        # 601068 <r>
  40071a:	01 c0                	add    %eax,%eax
  40071c:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  400723:	89 d1                	mov    %edx,%ecx
  400725:	29 c1                	sub    %eax,%ecx
  400727:	8b 15 53 a5 fa 01    	mov    0x1faa553(%rip),%edx        # 23aac80 <g>
  40072d:	89 d0                	mov    %edx,%eax
  40072f:	01 c0                	add    %eax,%eax
  400731:	01 d0                	add    %edx,%eax
  400733:	c1 e0 02             	shl    $0x2,%eax
  400736:	f7 d8                	neg    %eax
  400738:	01 c8                	add    %ecx,%eax
  40073a:	8d 90 00 10 00 00    	lea    0x1000(%rax),%edx
  400740:	8b 05 1a 09 20 00    	mov    0x20091a(%rip),%eax        # 601060 <b>
  400746:	89 d1                	mov    %edx,%ecx
  400748:	29 c1                	sub    %eax,%ecx
  40074a:	89 c8                	mov    %ecx,%eax
  40074c:	8d 50 1f             	lea    0x1f(%rax),%edx
  40074f:	85 c0                	test   %eax,%eax
  400751:	0f 48 c2             	cmovs  %edx,%eax
  400754:	c1 f8 05             	sar    $0x5,%eax
  400757:	89 05 13 09 20 00    	mov    %eax,0x200913(%rip)        # 601070 <cr>
  40075d:	b8 00 00 00 00       	mov    $0x0,%eax
  400762:	e8 84 00 00 00       	callq  4007eb <checkThresholds>
  400767:	b8 00 00 00 00       	mov    $0x0,%eax
  40076c:	e8 dc 01 00 00       	callq  40094d <writeNextYCbCr>
  400771:	8b 05 ed 08 20 00    	mov    0x2008ed(%rip),%eax        # 601064 <j>
  400777:	83 c0 01             	add    $0x1,%eax
  40077a:	89 05 e4 08 20 00    	mov    %eax,0x2008e4(%rip)        # 601064 <j>
  400780:	8b 05 de 08 20 00    	mov    0x2008de(%rip),%eax        # 601064 <j>
  400786:	3d 37 04 00 00       	cmp    $0x437,%eax
  40078b:	0f 8e f4 fe ff ff    	jle    400685 <main+0x61>
  400791:	8b 05 ed a4 fa 01    	mov    0x1faa4ed(%rip),%eax        # 23aac84 <i>
  400797:	83 c0 01             	add    $0x1,%eax
  40079a:	89 05 e4 a4 fa 01    	mov    %eax,0x1faa4e4(%rip)        # 23aac84 <i>
  4007a0:	8b 05 de a4 fa 01    	mov    0x1faa4de(%rip),%eax        # 23aac84 <i>
  4007a6:	3d 7f 07 00 00       	cmp    $0x77f,%eax
  4007ab:	0f 8e c5 fe ff ff    	jle    400676 <main+0x52>
  4007b1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007b5:	48 83 c0 10          	add    $0x10,%rax
  4007b9:	48 8b 00             	mov    (%rax),%rax
  4007bc:	48 89 c7             	mov    %rax,%rdi
  4007bf:	e8 20 01 00 00       	callq  4008e4 <writeFile>
  4007c4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007c8:	48 83 c0 10          	add    $0x10,%rax
  4007cc:	48 8b 10             	mov    (%rax),%rdx
  4007cf:	b8 18 0b 40 00       	mov    $0x400b18,%eax
  4007d4:	48 89 d6             	mov    %rdx,%rsi
  4007d7:	48 89 c7             	mov    %rax,%rdi
  4007da:	b8 00 00 00 00       	mov    $0x0,%eax
  4007df:	e8 1c fd ff ff       	callq  400500 <printf@plt>
  4007e4:	48 83 c4 18          	add    $0x18,%rsp
  4007e8:	5b                   	pop    %rbx
  4007e9:	5d                   	pop    %rbp
  4007ea:	c3                   	retq   

00000000004007eb <checkThresholds>:
  4007eb:	55                   	push   %rbp
  4007ec:	48 89 e5             	mov    %rsp,%rbp
  4007ef:	8b 05 93 a4 fa 01    	mov    0x1faa493(%rip),%eax        # 23aac88 <y>
  4007f5:	83 f8 0f             	cmp    $0xf,%eax
  4007f8:	7f 0c                	jg     400806 <checkThresholds+0x1b>
  4007fa:	c7 05 84 a4 fa 01 10 	movl   $0x10,0x1faa484(%rip)        # 23aac88 <y>
  400801:	00 00 00 
  400804:	eb 17                	jmp    40081d <checkThresholds+0x32>
  400806:	8b 05 7c a4 fa 01    	mov    0x1faa47c(%rip),%eax        # 23aac88 <y>
  40080c:	3d eb 00 00 00       	cmp    $0xeb,%eax
  400811:	7e 0a                	jle    40081d <checkThresholds+0x32>
  400813:	c7 05 6b a4 fa 01 eb 	movl   $0xeb,0x1faa46b(%rip)        # 23aac88 <y>
  40081a:	00 00 00 
  40081d:	8b 05 49 08 20 00    	mov    0x200849(%rip),%eax        # 60106c <cb>
  400823:	83 f8 0f             	cmp    $0xf,%eax
  400826:	7f 0c                	jg     400834 <checkThresholds+0x49>
  400828:	c7 05 3a 08 20 00 10 	movl   $0x10,0x20083a(%rip)        # 60106c <cb>
  40082f:	00 00 00 
  400832:	eb 17                	jmp    40084b <checkThresholds+0x60>
  400834:	8b 05 32 08 20 00    	mov    0x200832(%rip),%eax        # 60106c <cb>
  40083a:	3d f0 00 00 00       	cmp    $0xf0,%eax
  40083f:	7e 0a                	jle    40084b <checkThresholds+0x60>
  400841:	c7 05 21 08 20 00 f0 	movl   $0xf0,0x200821(%rip)        # 60106c <cb>
  400848:	00 00 00 
  40084b:	8b 05 1f 08 20 00    	mov    0x20081f(%rip),%eax        # 601070 <cr>
  400851:	83 f8 0f             	cmp    $0xf,%eax
  400854:	7f 0c                	jg     400862 <checkThresholds+0x77>
  400856:	c7 05 10 08 20 00 10 	movl   $0x10,0x200810(%rip)        # 601070 <cr>
  40085d:	00 00 00 
  400860:	eb 17                	jmp    400879 <checkThresholds+0x8e>
  400862:	8b 05 08 08 20 00    	mov    0x200808(%rip),%eax        # 601070 <cr>
  400868:	3d f0 00 00 00       	cmp    $0xf0,%eax
  40086d:	7e 0a                	jle    400879 <checkThresholds+0x8e>
  40086f:	c7 05 f7 07 20 00 f0 	movl   $0xf0,0x2007f7(%rip)        # 601070 <cr>
  400876:	00 00 00 
  400879:	5d                   	pop    %rbp
  40087a:	c3                   	retq   

000000000040087b <loadFile>:
  40087b:	55                   	push   %rbp
  40087c:	48 89 e5             	mov    %rsp,%rbp
  40087f:	48 83 ec 20          	sub    $0x20,%rsp
  400883:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400887:	ba 3a 0b 40 00       	mov    $0x400b3a,%edx
  40088c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400890:	48 89 d6             	mov    %rdx,%rsi
  400893:	48 89 c7             	mov    %rax,%rdi
  400896:	e8 85 fc ff ff       	callq  400520 <fopen@plt>
  40089b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40089f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4008a4:	75 12                	jne    4008b8 <loadFile+0x3d>
  4008a6:	b8 40 0b 40 00       	mov    $0x400b40,%eax
  4008ab:	48 89 c7             	mov    %rax,%rdi
  4008ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4008b3:	e8 48 fc ff ff       	callq  400500 <printf@plt>
  4008b8:	b8 80 c0 db 01       	mov    $0x1dbc080,%eax
  4008bd:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4008c1:	48 89 d1             	mov    %rdx,%rcx
  4008c4:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  4008c9:	be 01 00 00 00       	mov    $0x1,%esi
  4008ce:	48 89 c7             	mov    %rax,%rdi
  4008d1:	e8 0a fc ff ff       	callq  4004e0 <fread@plt>
  4008d6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008da:	48 89 c7             	mov    %rax,%rdi
  4008dd:	e8 0e fc ff ff       	callq  4004f0 <fclose@plt>
  4008e2:	c9                   	leaveq 
  4008e3:	c3                   	retq   

00000000004008e4 <writeFile>:
  4008e4:	55                   	push   %rbp
  4008e5:	48 89 e5             	mov    %rsp,%rbp
  4008e8:	48 83 ec 20          	sub    $0x20,%rsp
  4008ec:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4008f0:	ba 61 0b 40 00       	mov    $0x400b61,%edx
  4008f5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008f9:	48 89 d6             	mov    %rdx,%rsi
  4008fc:	48 89 c7             	mov    %rax,%rdi
  4008ff:	e8 1c fc ff ff       	callq  400520 <fopen@plt>
  400904:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400908:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40090d:	75 12                	jne    400921 <writeFile+0x3d>
  40090f:	b8 68 0b 40 00       	mov    $0x400b68,%eax
  400914:	48 89 c7             	mov    %rax,%rdi
  400917:	b8 00 00 00 00       	mov    $0x0,%eax
  40091c:	e8 df fb ff ff       	callq  400500 <printf@plt>
  400921:	b8 80 10 60 00       	mov    $0x601080,%eax
  400926:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40092a:	48 89 d1             	mov    %rdx,%rcx
  40092d:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  400932:	be 04 00 00 00       	mov    $0x4,%esi
  400937:	48 89 c7             	mov    %rax,%rdi
  40093a:	e8 f1 fb ff ff       	callq  400530 <fwrite@plt>
  40093f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400943:	48 89 c7             	mov    %rax,%rdi
  400946:	e8 a5 fb ff ff       	callq  4004f0 <fclose@plt>
  40094b:	c9                   	leaveq 
  40094c:	c3                   	retq   

000000000040094d <writeNextYCbCr>:
  40094d:	55                   	push   %rbp
  40094e:	48 89 e5             	mov    %rsp,%rbp
  400951:	8b 05 f9 06 20 00    	mov    0x2006f9(%rip),%eax        # 601050 <curByte>
  400957:	83 e8 01             	sub    $0x1,%eax
  40095a:	8b 15 28 a3 fa 01    	mov    0x1faa328(%rip),%edx        # 23aac88 <y>
  400960:	48 98                	cltq   
  400962:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  400969:	8b 05 e1 06 20 00    	mov    0x2006e1(%rip),%eax        # 601050 <curByte>
  40096f:	05 ff a3 1f 00       	add    $0x1fa3ff,%eax
  400974:	8b 15 f2 06 20 00    	mov    0x2006f2(%rip),%edx        # 60106c <cb>
  40097a:	48 98                	cltq   
  40097c:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  400983:	8b 05 c7 06 20 00    	mov    0x2006c7(%rip),%eax        # 601050 <curByte>
  400989:	05 ff 47 3f 00       	add    $0x3f47ff,%eax
  40098e:	8b 15 dc 06 20 00    	mov    0x2006dc(%rip),%edx        # 601070 <cr>
  400994:	48 98                	cltq   
  400996:	89 14 85 80 10 60 00 	mov    %edx,0x601080(,%rax,4)
  40099d:	5d                   	pop    %rbp
  40099e:	c3                   	retq   

000000000040099f <loadNextRGB>:
  40099f:	55                   	push   %rbp
  4009a0:	48 89 e5             	mov    %rsp,%rbp
  4009a3:	8b 05 a7 06 20 00    	mov    0x2006a7(%rip),%eax        # 601050 <curByte>
  4009a9:	48 98                	cltq   
  4009ab:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  4009b2:	0f be c0             	movsbl %al,%eax
  4009b5:	89 05 ad 06 20 00    	mov    %eax,0x2006ad(%rip)        # 601068 <r>
  4009bb:	8b 05 8f 06 20 00    	mov    0x20068f(%rip),%eax        # 601050 <curByte>
  4009c1:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  4009c6:	48 98                	cltq   
  4009c8:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  4009cf:	0f be c0             	movsbl %al,%eax
  4009d2:	89 05 a8 a2 fa 01    	mov    %eax,0x1faa2a8(%rip)        # 23aac80 <g>
  4009d8:	8b 05 72 06 20 00    	mov    0x200672(%rip),%eax        # 601050 <curByte>
  4009de:	05 00 48 3f 00       	add    $0x3f4800,%eax
  4009e3:	48 98                	cltq   
  4009e5:	0f b6 80 80 c0 db 01 	movzbl 0x1dbc080(%rax),%eax
  4009ec:	0f be c0             	movsbl %al,%eax
  4009ef:	89 05 6b 06 20 00    	mov    %eax,0x20066b(%rip)        # 601060 <b>
  4009f5:	8b 05 55 06 20 00    	mov    0x200655(%rip),%eax        # 601050 <curByte>
  4009fb:	83 c0 01             	add    $0x1,%eax
  4009fe:	89 05 4c 06 20 00    	mov    %eax,0x20064c(%rip)        # 601050 <curByte>
  400a04:	5d                   	pop    %rbp
  400a05:	c3                   	retq   
  400a06:	90                   	nop
  400a07:	90                   	nop
  400a08:	90                   	nop
  400a09:	90                   	nop
  400a0a:	90                   	nop
  400a0b:	90                   	nop
  400a0c:	90                   	nop
  400a0d:	90                   	nop
  400a0e:	90                   	nop
  400a0f:	90                   	nop

0000000000400a10 <__libc_csu_init>:
  400a10:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400a15:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  400a1a:	48 8d 2d 03 04 20 00 	lea    0x200403(%rip),%rbp        # 600e24 <__init_array_end>
  400a21:	4c 8d 25 fc 03 20 00 	lea    0x2003fc(%rip),%r12        # 600e24 <__init_array_end>
  400a28:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  400a2d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400a32:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400a37:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  400a3c:	48 83 ec 38          	sub    $0x38,%rsp
  400a40:	4c 29 e5             	sub    %r12,%rbp
  400a43:	41 89 fd             	mov    %edi,%r13d
  400a46:	49 89 f6             	mov    %rsi,%r14
  400a49:	48 c1 fd 03          	sar    $0x3,%rbp
  400a4d:	49 89 d7             	mov    %rdx,%r15
  400a50:	e8 5b fa ff ff       	callq  4004b0 <_init>
  400a55:	48 85 ed             	test   %rbp,%rbp
  400a58:	74 1c                	je     400a76 <__libc_csu_init+0x66>
  400a5a:	31 db                	xor    %ebx,%ebx
  400a5c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a60:	4c 89 fa             	mov    %r15,%rdx
  400a63:	4c 89 f6             	mov    %r14,%rsi
  400a66:	44 89 ef             	mov    %r13d,%edi
  400a69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a6d:	48 83 c3 01          	add    $0x1,%rbx
  400a71:	48 39 eb             	cmp    %rbp,%rbx
  400a74:	75 ea                	jne    400a60 <__libc_csu_init+0x50>
  400a76:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400a7b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400a80:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400a85:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400a8a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400a8f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400a94:	48 83 c4 38          	add    $0x38,%rsp
  400a98:	c3                   	retq   
  400a99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400aa0 <__libc_csu_fini>:
  400aa0:	f3 c3                	repz retq 
  400aa2:	90                   	nop
  400aa3:	90                   	nop
  400aa4:	90                   	nop
  400aa5:	90                   	nop
  400aa6:	90                   	nop
  400aa7:	90                   	nop
  400aa8:	90                   	nop
  400aa9:	90                   	nop
  400aaa:	90                   	nop
  400aab:	90                   	nop
  400aac:	90                   	nop
  400aad:	90                   	nop
  400aae:	90                   	nop
  400aaf:	90                   	nop

0000000000400ab0 <__do_global_ctors_aux>:
  400ab0:	55                   	push   %rbp
  400ab1:	48 89 e5             	mov    %rsp,%rbp
  400ab4:	53                   	push   %rbx
  400ab5:	48 83 ec 08          	sub    $0x8,%rsp
  400ab9:	48 8b 05 68 03 20 00 	mov    0x200368(%rip),%rax        # 600e28 <__CTOR_LIST__>
  400ac0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400ac4:	74 19                	je     400adf <__do_global_ctors_aux+0x2f>
  400ac6:	bb 28 0e 60 00       	mov    $0x600e28,%ebx
  400acb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ad0:	48 83 eb 08          	sub    $0x8,%rbx
  400ad4:	ff d0                	callq  *%rax
  400ad6:	48 8b 03             	mov    (%rbx),%rax
  400ad9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400add:	75 f1                	jne    400ad0 <__do_global_ctors_aux+0x20>
  400adf:	48 83 c4 08          	add    $0x8,%rsp
  400ae3:	5b                   	pop    %rbx
  400ae4:	5d                   	pop    %rbp
  400ae5:	c3                   	retq   
  400ae6:	90                   	nop
  400ae7:	90                   	nop

Disassembly of section .fini:

0000000000400ae8 <_fini>:
  400ae8:	48 83 ec 08          	sub    $0x8,%rsp
  400aec:	e8 9f fa ff ff       	callq  400590 <__do_global_dtors_aux>
  400af1:	48 83 c4 08          	add    $0x8,%rsp
  400af5:	c3                   	retq   
