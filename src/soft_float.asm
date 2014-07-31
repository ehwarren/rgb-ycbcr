
bin/soft_float.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000400478 <_init>:
  400478:	48 83 ec 08          	sub    $0x8,%rsp
  40047c:	e8 ab 00 00 00       	callq  40052c <call_gmon_start>
  400481:	e8 3a 01 00 00       	callq  4005c0 <frame_dummy>
  400486:	e8 b5 06 00 00       	callq  400b40 <__do_global_ctors_aux>
  40048b:	48 83 c4 08          	add    $0x8,%rsp
  40048f:	c3                   	retq   

Disassembly of section .plt:

0000000000400490 <printf@plt-0x10>:
  400490:	ff 35 32 0d 20 00    	pushq  0x200d32(%rip)        # 6011c8 <_GLOBAL_OFFSET_TABLE_+0x8>
  400496:	ff 25 34 0d 20 00    	jmpq   *0x200d34(%rip)        # 6011d0 <_GLOBAL_OFFSET_TABLE_+0x10>
  40049c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004a0 <printf@plt>:
  4004a0:	ff 25 32 0d 20 00    	jmpq   *0x200d32(%rip)        # 6011d8 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004a6:	68 00 00 00 00       	pushq  $0x0
  4004ab:	e9 e0 ff ff ff       	jmpq   400490 <_init+0x18>

00000000004004b0 <fopen@plt>:
  4004b0:	ff 25 2a 0d 20 00    	jmpq   *0x200d2a(%rip)        # 6011e0 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004b6:	68 01 00 00 00       	pushq  $0x1
  4004bb:	e9 d0 ff ff ff       	jmpq   400490 <_init+0x18>

00000000004004c0 <__libc_start_main@plt>:
  4004c0:	ff 25 22 0d 20 00    	jmpq   *0x200d22(%rip)        # 6011e8 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004c6:	68 02 00 00 00       	pushq  $0x2
  4004cb:	e9 c0 ff ff ff       	jmpq   400490 <_init+0x18>

00000000004004d0 <fread@plt>:
  4004d0:	ff 25 1a 0d 20 00    	jmpq   *0x200d1a(%rip)        # 6011f0 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004d6:	68 03 00 00 00       	pushq  $0x3
  4004db:	e9 b0 ff ff ff       	jmpq   400490 <_init+0x18>

00000000004004e0 <fclose@plt>:
  4004e0:	ff 25 12 0d 20 00    	jmpq   *0x200d12(%rip)        # 6011f8 <_GLOBAL_OFFSET_TABLE_+0x38>
  4004e6:	68 04 00 00 00       	pushq  $0x4
  4004eb:	e9 a0 ff ff ff       	jmpq   400490 <_init+0x18>

00000000004004f0 <fwrite@plt>:
  4004f0:	ff 25 0a 0d 20 00    	jmpq   *0x200d0a(%rip)        # 601200 <_GLOBAL_OFFSET_TABLE_+0x40>
  4004f6:	68 05 00 00 00       	pushq  $0x5
  4004fb:	e9 90 ff ff ff       	jmpq   400490 <_init+0x18>

Disassembly of section .text:

0000000000400500 <_start>:
  400500:	31 ed                	xor    %ebp,%ebp
  400502:	49 89 d1             	mov    %rdx,%r9
  400505:	5e                   	pop    %rsi
  400506:	48 89 e2             	mov    %rsp,%rdx
  400509:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40050d:	50                   	push   %rax
  40050e:	54                   	push   %rsp
  40050f:	49 c7 c0 a0 0a 40 00 	mov    $0x400aa0,%r8
  400516:	48 c7 c1 b0 0a 40 00 	mov    $0x400ab0,%rcx
  40051d:	48 c7 c7 e4 05 40 00 	mov    $0x4005e4,%rdi
  400524:	e8 97 ff ff ff       	callq  4004c0 <__libc_start_main@plt>
  400529:	f4                   	hlt    
  40052a:	90                   	nop
  40052b:	90                   	nop

000000000040052c <call_gmon_start>:
  40052c:	48 83 ec 08          	sub    $0x8,%rsp
  400530:	48 8b 05 81 0c 20 00 	mov    0x200c81(%rip),%rax        # 6011b8 <_DYNAMIC+0x190>
  400537:	48 85 c0             	test   %rax,%rax
  40053a:	74 02                	je     40053e <call_gmon_start+0x12>
  40053c:	ff d0                	callq  *%rax
  40053e:	48 83 c4 08          	add    $0x8,%rsp
  400542:	c3                   	retq   
  400543:	90                   	nop
  400544:	90                   	nop
  400545:	90                   	nop
  400546:	90                   	nop
  400547:	90                   	nop
  400548:	90                   	nop
  400549:	90                   	nop
  40054a:	90                   	nop
  40054b:	90                   	nop
  40054c:	90                   	nop
  40054d:	90                   	nop
  40054e:	90                   	nop
  40054f:	90                   	nop

0000000000400550 <__do_global_dtors_aux>:
  400550:	55                   	push   %rbp
  400551:	48 89 e5             	mov    %rsp,%rbp
  400554:	53                   	push   %rbx
  400555:	48 83 ec 08          	sub    $0x8,%rsp
  400559:	80 3d c0 0c 20 00 00 	cmpb   $0x0,0x200cc0(%rip)        # 601220 <completed.6349>
  400560:	75 4b                	jne    4005ad <__do_global_dtors_aux+0x5d>
  400562:	bb 18 10 60 00       	mov    $0x601018,%ebx
  400567:	48 8b 05 ba 0c 20 00 	mov    0x200cba(%rip),%rax        # 601228 <dtor_idx.6351>
  40056e:	48 81 eb 10 10 60 00 	sub    $0x601010,%rbx
  400575:	48 c1 fb 03          	sar    $0x3,%rbx
  400579:	48 83 eb 01          	sub    $0x1,%rbx
  40057d:	48 39 d8             	cmp    %rbx,%rax
  400580:	73 24                	jae    4005a6 <__do_global_dtors_aux+0x56>
  400582:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400588:	48 83 c0 01          	add    $0x1,%rax
  40058c:	48 89 05 95 0c 20 00 	mov    %rax,0x200c95(%rip)        # 601228 <dtor_idx.6351>
  400593:	ff 14 c5 10 10 60 00 	callq  *0x601010(,%rax,8)
  40059a:	48 8b 05 87 0c 20 00 	mov    0x200c87(%rip),%rax        # 601228 <dtor_idx.6351>
  4005a1:	48 39 d8             	cmp    %rbx,%rax
  4005a4:	72 e2                	jb     400588 <__do_global_dtors_aux+0x38>
  4005a6:	c6 05 73 0c 20 00 01 	movb   $0x1,0x200c73(%rip)        # 601220 <completed.6349>
  4005ad:	48 83 c4 08          	add    $0x8,%rsp
  4005b1:	5b                   	pop    %rbx
  4005b2:	c9                   	leaveq 
  4005b3:	c3                   	retq   
  4005b4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4005bb:	00 00 00 00 00 

00000000004005c0 <frame_dummy>:
  4005c0:	48 83 3d 58 0a 20 00 	cmpq   $0x0,0x200a58(%rip)        # 601020 <__JCR_END__>
  4005c7:	00 
  4005c8:	55                   	push   %rbp
  4005c9:	48 89 e5             	mov    %rsp,%rbp
  4005cc:	74 12                	je     4005e0 <frame_dummy+0x20>
  4005ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d3:	48 85 c0             	test   %rax,%rax
  4005d6:	74 08                	je     4005e0 <frame_dummy+0x20>
  4005d8:	bf 20 10 60 00       	mov    $0x601020,%edi
  4005dd:	c9                   	leaveq 
  4005de:	ff e0                	jmpq   *%rax
  4005e0:	c9                   	leaveq 
  4005e1:	c3                   	retq   
  4005e2:	90                   	nop
  4005e3:	90                   	nop

00000000004005e4 <main>:
  4005e4:	55                   	push   %rbp
  4005e5:	48 89 e5             	mov    %rsp,%rbp
  4005e8:	48 83 ec 10          	sub    $0x10,%rsp
  4005ec:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4005ef:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4005f3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4005f7:	48 83 c0 08          	add    $0x8,%rax
  4005fb:	48 8b 10             	mov    (%rax),%rdx
  4005fe:	b8 98 0b 40 00       	mov    $0x400b98,%eax
  400603:	48 89 d6             	mov    %rdx,%rsi
  400606:	48 89 c7             	mov    %rax,%rdi
  400609:	b8 00 00 00 00       	mov    $0x0,%eax
  40060e:	e8 8d fe ff ff       	callq  4004a0 <printf@plt>
  400613:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400617:	48 83 c0 08          	add    $0x8,%rax
  40061b:	48 8b 00             	mov    (%rax),%rax
  40061e:	48 89 c7             	mov    %rax,%rdi
  400621:	b8 00 00 00 00       	mov    $0x0,%eax
  400626:	e8 ea 02 00 00       	callq  400915 <loadFile>
  40062b:	c7 05 0b a8 fa 01 00 	movl   $0x0,0x1faa80b(%rip)        # 23aae40 <i>
  400632:	00 00 00 
  400635:	e9 b2 01 00 00       	jmpq   4007ec <main+0x208>
  40063a:	c7 05 08 a8 fa 01 00 	movl   $0x0,0x1faa808(%rip)        # 23aae4c <j>
  400641:	00 00 00 
  400644:	e9 83 01 00 00       	jmpq   4007cc <main+0x1e8>
  400649:	b8 00 00 00 00       	mov    $0x0,%eax
  40064e:	e8 e0 03 00 00       	callq  400a33 <loadNextRGB>
  400653:	0f b6 05 f6 a7 fa 01 	movzbl 0x1faa7f6(%rip),%eax        # 23aae50 <r>
  40065a:	0f be c0             	movsbl %al,%eax
  40065d:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  400661:	f2 0f 10 0d bf 05 00 	movsd  0x5bf(%rip),%xmm1        # 400c28 <__dso_handle+0x98>
  400668:	00 
  400669:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  40066d:	f2 0f 10 0d bb 05 00 	movsd  0x5bb(%rip),%xmm1        # 400c30 <__dso_handle+0xa0>
  400674:	00 
  400675:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  400679:	0f b6 05 d8 a7 fa 01 	movzbl 0x1faa7d8(%rip),%eax        # 23aae58 <g>
  400680:	0f be c0             	movsbl %al,%eax
  400683:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  400687:	f2 0f 10 15 a9 05 00 	movsd  0x5a9(%rip),%xmm2        # 400c38 <__dso_handle+0xa8>
  40068e:	00 
  40068f:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  400693:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  400697:	0f b6 05 aa a7 fa 01 	movzbl 0x1faa7aa(%rip),%eax        # 23aae48 <b>
  40069e:	0f be c0             	movsbl %al,%eax
  4006a1:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4006a5:	f2 0f 10 15 93 05 00 	movsd  0x593(%rip),%xmm2        # 400c40 <__dso_handle+0xb0>
  4006ac:	00 
  4006ad:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  4006b1:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4006b5:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  4006b9:	66 0f 5a c0          	cvtpd2ps %xmm0,%xmm0
  4006bd:	f3 0f 11 05 7f a7 fa 	movss  %xmm0,0x1faa77f(%rip)        # 23aae44 <y>
  4006c4:	01 
  4006c5:	0f b6 05 84 a7 fa 01 	movzbl 0x1faa784(%rip),%eax        # 23aae50 <r>
  4006cc:	0f be c0             	movsbl %al,%eax
  4006cf:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4006d3:	f2 0f 10 0d 6d 05 00 	movsd  0x56d(%rip),%xmm1        # 400c48 <__dso_handle+0xb8>
  4006da:	00 
  4006db:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  4006df:	f2 0f 10 0d 69 05 00 	movsd  0x569(%rip),%xmm1        # 400c50 <__dso_handle+0xc0>
  4006e6:	00 
  4006e7:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  4006eb:	0f b6 05 66 a7 fa 01 	movzbl 0x1faa766(%rip),%eax        # 23aae58 <g>
  4006f2:	0f be c0             	movsbl %al,%eax
  4006f5:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4006f9:	f2 0f 10 15 57 05 00 	movsd  0x557(%rip),%xmm2        # 400c58 <__dso_handle+0xc8>
  400700:	00 
  400701:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  400705:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  400709:	0f b6 05 38 a7 fa 01 	movzbl 0x1faa738(%rip),%eax        # 23aae48 <b>
  400710:	0f be c0             	movsbl %al,%eax
  400713:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  400717:	f2 0f 10 15 41 05 00 	movsd  0x541(%rip),%xmm2        # 400c60 <__dso_handle+0xd0>
  40071e:	00 
  40071f:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  400723:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  400727:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  40072b:	66 0f 5a c0          	cvtpd2ps %xmm0,%xmm0
  40072f:	f3 0f 11 05 1d a7 fa 	movss  %xmm0,0x1faa71d(%rip)        # 23aae54 <cb>
  400736:	01 
  400737:	0f b6 05 12 a7 fa 01 	movzbl 0x1faa712(%rip),%eax        # 23aae50 <r>
  40073e:	0f be c0             	movsbl %al,%eax
  400741:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  400745:	f2 0f 10 0d 13 05 00 	movsd  0x513(%rip),%xmm1        # 400c60 <__dso_handle+0xd0>
  40074c:	00 
  40074d:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  400751:	f2 0f 10 0d f7 04 00 	movsd  0x4f7(%rip),%xmm1        # 400c50 <__dso_handle+0xc0>
  400758:	00 
  400759:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  40075d:	0f b6 05 f4 a6 fa 01 	movzbl 0x1faa6f4(%rip),%eax        # 23aae58 <g>
  400764:	0f be c0             	movsbl %al,%eax
  400767:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  40076b:	f2 0f 10 15 f5 04 00 	movsd  0x4f5(%rip),%xmm2        # 400c68 <__dso_handle+0xd8>
  400772:	00 
  400773:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  400777:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  40077b:	0f b6 05 c6 a6 fa 01 	movzbl 0x1faa6c6(%rip),%eax        # 23aae48 <b>
  400782:	0f be c0             	movsbl %al,%eax
  400785:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  400789:	f2 0f 10 15 df 04 00 	movsd  0x4df(%rip),%xmm2        # 400c70 <__dso_handle+0xe0>
  400790:	00 
  400791:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  400795:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  400799:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  40079d:	66 0f 5a c0          	cvtpd2ps %xmm0,%xmm0
  4007a1:	f3 0f 11 05 b3 a6 fa 	movss  %xmm0,0x1faa6b3(%rip)        # 23aae5c <cr>
  4007a8:	01 
  4007a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ae:	e8 84 00 00 00       	callq  400837 <checkThresholds>
  4007b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4007b8:	e8 24 02 00 00       	callq  4009e1 <writeNextYCbCr>
  4007bd:	8b 05 89 a6 fa 01    	mov    0x1faa689(%rip),%eax        # 23aae4c <j>
  4007c3:	83 c0 01             	add    $0x1,%eax
  4007c6:	89 05 80 a6 fa 01    	mov    %eax,0x1faa680(%rip)        # 23aae4c <j>
  4007cc:	8b 05 7a a6 fa 01    	mov    0x1faa67a(%rip),%eax        # 23aae4c <j>
  4007d2:	3d 37 04 00 00       	cmp    $0x437,%eax
  4007d7:	0f 8e 6c fe ff ff    	jle    400649 <main+0x65>
  4007dd:	8b 05 5d a6 fa 01    	mov    0x1faa65d(%rip),%eax        # 23aae40 <i>
  4007e3:	83 c0 01             	add    $0x1,%eax
  4007e6:	89 05 54 a6 fa 01    	mov    %eax,0x1faa654(%rip)        # 23aae40 <i>
  4007ec:	8b 05 4e a6 fa 01    	mov    0x1faa64e(%rip),%eax        # 23aae40 <i>
  4007f2:	3d 7f 07 00 00       	cmp    $0x77f,%eax
  4007f7:	0f 8e 3d fe ff ff    	jle    40063a <main+0x56>
  4007fd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400801:	48 83 c0 10          	add    $0x10,%rax
  400805:	48 8b 00             	mov    (%rax),%rax
  400808:	48 89 c7             	mov    %rax,%rdi
  40080b:	b8 00 00 00 00       	mov    $0x0,%eax
  400810:	e8 66 01 00 00       	callq  40097b <writeFile>
  400815:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400819:	48 83 c0 10          	add    $0x10,%rax
  40081d:	48 8b 10             	mov    (%rax),%rdx
  400820:	b8 b0 0b 40 00       	mov    $0x400bb0,%eax
  400825:	48 89 d6             	mov    %rdx,%rsi
  400828:	48 89 c7             	mov    %rax,%rdi
  40082b:	b8 00 00 00 00       	mov    $0x0,%eax
  400830:	e8 6b fc ff ff       	callq  4004a0 <printf@plt>
  400835:	c9                   	leaveq 
  400836:	c3                   	retq   

0000000000400837 <checkThresholds>:
  400837:	55                   	push   %rbp
  400838:	48 89 e5             	mov    %rsp,%rbp
  40083b:	f3 0f 10 0d 01 a6 fa 	movss  0x1faa601(%rip),%xmm1        # 23aae44 <y>
  400842:	01 
  400843:	f3 0f 10 05 2d 04 00 	movss  0x42d(%rip),%xmm0        # 400c78 <__dso_handle+0xe8>
  40084a:	00 
  40084b:	0f 2e c1             	ucomiss %xmm1,%xmm0
  40084e:	0f 97 c0             	seta   %al
  400851:	84 c0                	test   %al,%al
  400853:	74 0d                	je     400862 <checkThresholds+0x2b>
  400855:	b8 00 00 80 41       	mov    $0x41800000,%eax
  40085a:	89 05 e4 a5 fa 01    	mov    %eax,0x1faa5e4(%rip)        # 23aae44 <y>
  400860:	eb 21                	jmp    400883 <checkThresholds+0x4c>
  400862:	f3 0f 10 05 da a5 fa 	movss  0x1faa5da(%rip),%xmm0        # 23aae44 <y>
  400869:	01 
  40086a:	0f 2e 05 0b 04 00 00 	ucomiss 0x40b(%rip),%xmm0        # 400c7c <__dso_handle+0xec>
  400871:	0f 97 c0             	seta   %al
  400874:	84 c0                	test   %al,%al
  400876:	74 0b                	je     400883 <checkThresholds+0x4c>
  400878:	b8 00 00 6b 43       	mov    $0x436b0000,%eax
  40087d:	89 05 c1 a5 fa 01    	mov    %eax,0x1faa5c1(%rip)        # 23aae44 <y>
  400883:	f3 0f 10 0d c9 a5 fa 	movss  0x1faa5c9(%rip),%xmm1        # 23aae54 <cb>
  40088a:	01 
  40088b:	f3 0f 10 05 e5 03 00 	movss  0x3e5(%rip),%xmm0        # 400c78 <__dso_handle+0xe8>
  400892:	00 
  400893:	0f 2e c1             	ucomiss %xmm1,%xmm0
  400896:	0f 97 c0             	seta   %al
  400899:	84 c0                	test   %al,%al
  40089b:	74 0d                	je     4008aa <checkThresholds+0x73>
  40089d:	b8 00 00 80 41       	mov    $0x41800000,%eax
  4008a2:	89 05 ac a5 fa 01    	mov    %eax,0x1faa5ac(%rip)        # 23aae54 <cb>
  4008a8:	eb 21                	jmp    4008cb <checkThresholds+0x94>
  4008aa:	f3 0f 10 05 a2 a5 fa 	movss  0x1faa5a2(%rip),%xmm0        # 23aae54 <cb>
  4008b1:	01 
  4008b2:	0f 2e 05 c7 03 00 00 	ucomiss 0x3c7(%rip),%xmm0        # 400c80 <__dso_handle+0xf0>
  4008b9:	0f 97 c0             	seta   %al
  4008bc:	84 c0                	test   %al,%al
  4008be:	74 0b                	je     4008cb <checkThresholds+0x94>
  4008c0:	b8 00 00 70 43       	mov    $0x43700000,%eax
  4008c5:	89 05 89 a5 fa 01    	mov    %eax,0x1faa589(%rip)        # 23aae54 <cb>
  4008cb:	f3 0f 10 0d 89 a5 fa 	movss  0x1faa589(%rip),%xmm1        # 23aae5c <cr>
  4008d2:	01 
  4008d3:	f3 0f 10 05 9d 03 00 	movss  0x39d(%rip),%xmm0        # 400c78 <__dso_handle+0xe8>
  4008da:	00 
  4008db:	0f 2e c1             	ucomiss %xmm1,%xmm0
  4008de:	0f 97 c0             	seta   %al
  4008e1:	84 c0                	test   %al,%al
  4008e3:	74 0d                	je     4008f2 <checkThresholds+0xbb>
  4008e5:	b8 00 00 80 41       	mov    $0x41800000,%eax
  4008ea:	89 05 6c a5 fa 01    	mov    %eax,0x1faa56c(%rip)        # 23aae5c <cr>
  4008f0:	eb 21                	jmp    400913 <checkThresholds+0xdc>
  4008f2:	f3 0f 10 05 62 a5 fa 	movss  0x1faa562(%rip),%xmm0        # 23aae5c <cr>
  4008f9:	01 
  4008fa:	0f 2e 05 7f 03 00 00 	ucomiss 0x37f(%rip),%xmm0        # 400c80 <__dso_handle+0xf0>
  400901:	0f 97 c0             	seta   %al
  400904:	84 c0                	test   %al,%al
  400906:	74 0b                	je     400913 <checkThresholds+0xdc>
  400908:	b8 00 00 70 43       	mov    $0x43700000,%eax
  40090d:	89 05 49 a5 fa 01    	mov    %eax,0x1faa549(%rip)        # 23aae5c <cr>
  400913:	c9                   	leaveq 
  400914:	c3                   	retq   

0000000000400915 <loadFile>:
  400915:	55                   	push   %rbp
  400916:	48 89 e5             	mov    %rsp,%rbp
  400919:	48 83 ec 20          	sub    $0x20,%rsp
  40091d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400921:	ba d2 0b 40 00       	mov    $0x400bd2,%edx
  400926:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40092a:	48 89 d6             	mov    %rdx,%rsi
  40092d:	48 89 c7             	mov    %rax,%rdi
  400930:	e8 7b fb ff ff       	callq  4004b0 <fopen@plt>
  400935:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400939:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40093e:	75 12                	jne    400952 <loadFile+0x3d>
  400940:	b8 d8 0b 40 00       	mov    $0x400bd8,%eax
  400945:	48 89 c7             	mov    %rax,%rdi
  400948:	b8 00 00 00 00       	mov    $0x0,%eax
  40094d:	e8 4e fb ff ff       	callq  4004a0 <printf@plt>
  400952:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400956:	48 89 c1             	mov    %rax,%rcx
  400959:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  40095e:	be 01 00 00 00       	mov    $0x1,%esi
  400963:	bf 40 12 60 00       	mov    $0x601240,%edi
  400968:	e8 63 fb ff ff       	callq  4004d0 <fread@plt>
  40096d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400971:	48 89 c7             	mov    %rax,%rdi
  400974:	e8 67 fb ff ff       	callq  4004e0 <fclose@plt>
  400979:	c9                   	leaveq 
  40097a:	c3                   	retq   

000000000040097b <writeFile>:
  40097b:	55                   	push   %rbp
  40097c:	48 89 e5             	mov    %rsp,%rbp
  40097f:	48 83 ec 20          	sub    $0x20,%rsp
  400983:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400987:	ba f9 0b 40 00       	mov    $0x400bf9,%edx
  40098c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400990:	48 89 d6             	mov    %rdx,%rsi
  400993:	48 89 c7             	mov    %rax,%rdi
  400996:	e8 15 fb ff ff       	callq  4004b0 <fopen@plt>
  40099b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40099f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4009a4:	75 12                	jne    4009b8 <writeFile+0x3d>
  4009a6:	b8 00 0c 40 00       	mov    $0x400c00,%eax
  4009ab:	48 89 c7             	mov    %rax,%rdi
  4009ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4009b3:	e8 e8 fa ff ff       	callq  4004a0 <printf@plt>
  4009b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009bc:	48 89 c1             	mov    %rax,%rcx
  4009bf:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  4009c4:	be 04 00 00 00       	mov    $0x4,%esi
  4009c9:	bf 40 fe be 00       	mov    $0xbefe40,%edi
  4009ce:	e8 1d fb ff ff       	callq  4004f0 <fwrite@plt>
  4009d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009d7:	48 89 c7             	mov    %rax,%rdi
  4009da:	e8 01 fb ff ff       	callq  4004e0 <fclose@plt>
  4009df:	c9                   	leaveq 
  4009e0:	c3                   	retq   

00000000004009e1 <writeNextYCbCr>:
  4009e1:	55                   	push   %rbp
  4009e2:	48 89 e5             	mov    %rsp,%rbp
  4009e5:	8b 05 45 08 20 00    	mov    0x200845(%rip),%eax        # 601230 <curByte>
  4009eb:	83 e8 01             	sub    $0x1,%eax
  4009ee:	8b 15 50 a4 fa 01    	mov    0x1faa450(%rip),%edx        # 23aae44 <y>
  4009f4:	48 98                	cltq   
  4009f6:	89 14 85 40 fe be 00 	mov    %edx,0xbefe40(,%rax,4)
  4009fd:	8b 05 2d 08 20 00    	mov    0x20082d(%rip),%eax        # 601230 <curByte>
  400a03:	05 ff a3 1f 00       	add    $0x1fa3ff,%eax
  400a08:	8b 15 46 a4 fa 01    	mov    0x1faa446(%rip),%edx        # 23aae54 <cb>
  400a0e:	48 98                	cltq   
  400a10:	89 14 85 40 fe be 00 	mov    %edx,0xbefe40(,%rax,4)
  400a17:	8b 05 13 08 20 00    	mov    0x200813(%rip),%eax        # 601230 <curByte>
  400a1d:	05 ff 47 3f 00       	add    $0x3f47ff,%eax
  400a22:	8b 15 34 a4 fa 01    	mov    0x1faa434(%rip),%edx        # 23aae5c <cr>
  400a28:	48 98                	cltq   
  400a2a:	89 14 85 40 fe be 00 	mov    %edx,0xbefe40(,%rax,4)
  400a31:	c9                   	leaveq 
  400a32:	c3                   	retq   

0000000000400a33 <loadNextRGB>:
  400a33:	55                   	push   %rbp
  400a34:	48 89 e5             	mov    %rsp,%rbp
  400a37:	8b 05 f3 07 20 00    	mov    0x2007f3(%rip),%eax        # 601230 <curByte>
  400a3d:	48 98                	cltq   
  400a3f:	0f b6 80 40 12 60 00 	movzbl 0x601240(%rax),%eax
  400a46:	88 05 04 a4 fa 01    	mov    %al,0x1faa404(%rip)        # 23aae50 <r>
  400a4c:	8b 05 de 07 20 00    	mov    0x2007de(%rip),%eax        # 601230 <curByte>
  400a52:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400a57:	48 98                	cltq   
  400a59:	0f b6 80 40 12 60 00 	movzbl 0x601240(%rax),%eax
  400a60:	88 05 f2 a3 fa 01    	mov    %al,0x1faa3f2(%rip)        # 23aae58 <g>
  400a66:	8b 05 c4 07 20 00    	mov    0x2007c4(%rip),%eax        # 601230 <curByte>
  400a6c:	05 00 48 3f 00       	add    $0x3f4800,%eax
  400a71:	48 98                	cltq   
  400a73:	0f b6 80 40 12 60 00 	movzbl 0x601240(%rax),%eax
  400a7a:	88 05 c8 a3 fa 01    	mov    %al,0x1faa3c8(%rip)        # 23aae48 <b>
  400a80:	8b 05 aa 07 20 00    	mov    0x2007aa(%rip),%eax        # 601230 <curByte>
  400a86:	83 c0 01             	add    $0x1,%eax
  400a89:	89 05 a1 07 20 00    	mov    %eax,0x2007a1(%rip)        # 601230 <curByte>
  400a8f:	c9                   	leaveq 
  400a90:	c3                   	retq   
  400a91:	90                   	nop
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

0000000000400aa0 <__libc_csu_fini>:
  400aa0:	f3 c3                	repz retq 
  400aa2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400aa9:	1f 84 00 00 00 00 00 

0000000000400ab0 <__libc_csu_init>:
  400ab0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400ab5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  400aba:	48 8d 2d 3f 05 20 00 	lea    0x20053f(%rip),%rbp        # 601000 <__CTOR_LIST__>
  400ac1:	4c 8d 25 38 05 20 00 	lea    0x200538(%rip),%r12        # 601000 <__CTOR_LIST__>
  400ac8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  400acd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400ad2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400ad7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  400adc:	48 83 ec 38          	sub    $0x38,%rsp
  400ae0:	4c 29 e5             	sub    %r12,%rbp
  400ae3:	41 89 fd             	mov    %edi,%r13d
  400ae6:	49 89 f6             	mov    %rsi,%r14
  400ae9:	48 c1 fd 03          	sar    $0x3,%rbp
  400aed:	49 89 d7             	mov    %rdx,%r15
  400af0:	e8 83 f9 ff ff       	callq  400478 <_init>
  400af5:	48 85 ed             	test   %rbp,%rbp
  400af8:	74 1c                	je     400b16 <__libc_csu_init+0x66>
  400afa:	31 db                	xor    %ebx,%ebx
  400afc:	0f 1f 40 00          	nopl   0x0(%rax)
  400b00:	4c 89 fa             	mov    %r15,%rdx
  400b03:	4c 89 f6             	mov    %r14,%rsi
  400b06:	44 89 ef             	mov    %r13d,%edi
  400b09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b0d:	48 83 c3 01          	add    $0x1,%rbx
  400b11:	48 39 eb             	cmp    %rbp,%rbx
  400b14:	72 ea                	jb     400b00 <__libc_csu_init+0x50>
  400b16:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400b1b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400b20:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400b25:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400b2a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400b2f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400b34:	48 83 c4 38          	add    $0x38,%rsp
  400b38:	c3                   	retq   
  400b39:	90                   	nop
  400b3a:	90                   	nop
  400b3b:	90                   	nop
  400b3c:	90                   	nop
  400b3d:	90                   	nop
  400b3e:	90                   	nop
  400b3f:	90                   	nop

0000000000400b40 <__do_global_ctors_aux>:
  400b40:	55                   	push   %rbp
  400b41:	48 89 e5             	mov    %rsp,%rbp
  400b44:	53                   	push   %rbx
  400b45:	48 83 ec 08          	sub    $0x8,%rsp
  400b49:	48 8b 05 b0 04 20 00 	mov    0x2004b0(%rip),%rax        # 601000 <__CTOR_LIST__>
  400b50:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400b54:	74 19                	je     400b6f <__do_global_ctors_aux+0x2f>
  400b56:	bb 00 10 60 00       	mov    $0x601000,%ebx
  400b5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b60:	48 83 eb 08          	sub    $0x8,%rbx
  400b64:	ff d0                	callq  *%rax
  400b66:	48 8b 03             	mov    (%rbx),%rax
  400b69:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400b6d:	75 f1                	jne    400b60 <__do_global_ctors_aux+0x20>
  400b6f:	48 83 c4 08          	add    $0x8,%rsp
  400b73:	5b                   	pop    %rbx
  400b74:	c9                   	leaveq 
  400b75:	c3                   	retq   
  400b76:	90                   	nop
  400b77:	90                   	nop

Disassembly of section .fini:

0000000000400b78 <_fini>:
  400b78:	48 83 ec 08          	sub    $0x8,%rsp
  400b7c:	e8 cf f9 ff ff       	callq  400550 <__do_global_dtors_aux>
  400b81:	48 83 c4 08          	add    $0x8,%rsp
  400b85:	c3                   	retq   
