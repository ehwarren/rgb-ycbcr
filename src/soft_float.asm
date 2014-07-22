
bin/soft_float.out:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	e8 b3 00 00 00       	callq  40056c <call_gmon_start>
  4004b9:	e8 42 01 00 00       	callq  400600 <frame_dummy>
  4004be:	e8 bd 06 00 00       	callq  400b80 <__do_global_ctors_aux>
  4004c3:	48 83 c4 08          	add    $0x8,%rsp
  4004c7:	c3                   	retq   

Disassembly of section .plt:

00000000004004d0 <fread@plt-0x10>:
  4004d0:	ff 35 1a 1b 20 00    	pushq  0x201b1a(%rip)        # 601ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004d6:	ff 25 1c 1b 20 00    	jmpq   *0x201b1c(%rip)        # 601ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004e0 <fread@plt>:
  4004e0:	ff 25 1a 1b 20 00    	jmpq   *0x201b1a(%rip)        # 602000 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004e6:	68 00 00 00 00       	pushq  $0x0
  4004eb:	e9 e0 ff ff ff       	jmpq   4004d0 <_init+0x20>

00000000004004f0 <fclose@plt>:
  4004f0:	ff 25 12 1b 20 00    	jmpq   *0x201b12(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004f6:	68 01 00 00 00       	pushq  $0x1
  4004fb:	e9 d0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400500 <printf@plt>:
  400500:	ff 25 0a 1b 20 00    	jmpq   *0x201b0a(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x28>
  400506:	68 02 00 00 00       	pushq  $0x2
  40050b:	e9 c0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400510 <__libc_start_main@plt>:
  400510:	ff 25 02 1b 20 00    	jmpq   *0x201b02(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x30>
  400516:	68 03 00 00 00       	pushq  $0x3
  40051b:	e9 b0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400520 <fopen@plt>:
  400520:	ff 25 fa 1a 20 00    	jmpq   *0x201afa(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x38>
  400526:	68 04 00 00 00       	pushq  $0x4
  40052b:	e9 a0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400530 <fwrite@plt>:
  400530:	ff 25 f2 1a 20 00    	jmpq   *0x201af2(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x40>
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
  40054f:	49 c7 c0 70 0b 40 00 	mov    $0x400b70,%r8
  400556:	48 c7 c1 e0 0a 40 00 	mov    $0x400ae0,%rcx
  40055d:	48 c7 c7 24 06 40 00 	mov    $0x400624,%rdi
  400564:	e8 a7 ff ff ff       	callq  400510 <__libc_start_main@plt>
  400569:	f4                   	hlt    
  40056a:	90                   	nop
  40056b:	90                   	nop

000000000040056c <call_gmon_start>:
  40056c:	48 83 ec 08          	sub    $0x8,%rsp
  400570:	48 8b 05 69 1a 20 00 	mov    0x201a69(%rip),%rax        # 601fe0 <_DYNAMIC+0x190>
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
  400599:	80 3d a0 1a 20 00 00 	cmpb   $0x0,0x201aa0(%rip)        # 602040 <__bss_start>
  4005a0:	75 4b                	jne    4005ed <__do_global_dtors_aux+0x5d>
  4005a2:	bb 40 1e 60 00       	mov    $0x601e40,%ebx
  4005a7:	48 8b 05 9a 1a 20 00 	mov    0x201a9a(%rip),%rax        # 602048 <dtor_idx.6533>
  4005ae:	48 81 eb 38 1e 60 00 	sub    $0x601e38,%rbx
  4005b5:	48 c1 fb 03          	sar    $0x3,%rbx
  4005b9:	48 83 eb 01          	sub    $0x1,%rbx
  4005bd:	48 39 d8             	cmp    %rbx,%rax
  4005c0:	73 24                	jae    4005e6 <__do_global_dtors_aux+0x56>
  4005c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4005c8:	48 83 c0 01          	add    $0x1,%rax
  4005cc:	48 89 05 75 1a 20 00 	mov    %rax,0x201a75(%rip)        # 602048 <dtor_idx.6533>
  4005d3:	ff 14 c5 38 1e 60 00 	callq  *0x601e38(,%rax,8)
  4005da:	48 8b 05 67 1a 20 00 	mov    0x201a67(%rip),%rax        # 602048 <dtor_idx.6533>
  4005e1:	48 39 d8             	cmp    %rbx,%rax
  4005e4:	72 e2                	jb     4005c8 <__do_global_dtors_aux+0x38>
  4005e6:	c6 05 53 1a 20 00 01 	movb   $0x1,0x201a53(%rip)        # 602040 <__bss_start>
  4005ed:	48 83 c4 08          	add    $0x8,%rsp
  4005f1:	5b                   	pop    %rbx
  4005f2:	5d                   	pop    %rbp
  4005f3:	c3                   	retq   
  4005f4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4005fb:	00 00 00 00 00 

0000000000400600 <frame_dummy>:
  400600:	48 83 3d 40 18 20 00 	cmpq   $0x0,0x201840(%rip)        # 601e48 <__JCR_END__>
  400607:	00 
  400608:	55                   	push   %rbp
  400609:	48 89 e5             	mov    %rsp,%rbp
  40060c:	74 12                	je     400620 <frame_dummy+0x20>
  40060e:	b8 00 00 00 00       	mov    $0x0,%eax
  400613:	48 85 c0             	test   %rax,%rax
  400616:	74 08                	je     400620 <frame_dummy+0x20>
  400618:	5d                   	pop    %rbp
  400619:	bf 48 1e 60 00       	mov    $0x601e48,%edi
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
  40063e:	b8 d0 0b 40 00       	mov    $0x400bd0,%eax
  400643:	48 89 d6             	mov    %rdx,%rsi
  400646:	48 89 c7             	mov    %rax,%rdi
  400649:	b8 00 00 00 00       	mov    $0x0,%eax
  40064e:	e8 ad fe ff ff       	callq  400500 <printf@plt>
  400653:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400657:	48 83 c0 08          	add    $0x8,%rax
  40065b:	48 8b 00             	mov    (%rax),%rax
  40065e:	48 89 c7             	mov    %rax,%rdi
  400661:	e8 f5 02 00 00       	callq  40095b <loadFile>
  400666:	c7 05 14 b6 fa 01 00 	movl   $0x0,0x1fab614(%rip)        # 23abc84 <i>
  40066d:	00 00 00 
  400670:	e9 c2 01 00 00       	jmpq   400837 <main+0x213>
  400675:	c7 05 e5 19 20 00 00 	movl   $0x0,0x2019e5(%rip)        # 602064 <j>
  40067c:	00 00 00 
  40067f:	e9 93 01 00 00       	jmpq   400817 <main+0x1f3>
  400684:	b8 00 00 00 00       	mov    $0x0,%eax
  400689:	e8 f1 03 00 00       	callq  400a7f <loadNextRGB>
  40068e:	0f b6 05 d3 19 20 00 	movzbl 0x2019d3(%rip),%eax        # 602068 <r>
  400695:	0f be c0             	movsbl %al,%eax
  400698:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  40069c:	f2 0f 10 0d bc 05 00 	movsd  0x5bc(%rip),%xmm1        # 400c60 <_IO_stdin_used+0x98>
  4006a3:	00 
  4006a4:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  4006a8:	f2 0f 10 0d b8 05 00 	movsd  0x5b8(%rip),%xmm1        # 400c68 <_IO_stdin_used+0xa0>
  4006af:	00 
  4006b0:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  4006b4:	0f b6 05 c5 b5 fa 01 	movzbl 0x1fab5c5(%rip),%eax        # 23abc80 <g>
  4006bb:	0f be c0             	movsbl %al,%eax
  4006be:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4006c2:	f2 0f 10 15 a6 05 00 	movsd  0x5a6(%rip),%xmm2        # 400c70 <_IO_stdin_used+0xa8>
  4006c9:	00 
  4006ca:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  4006ce:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  4006d2:	0f b6 05 87 19 20 00 	movzbl 0x201987(%rip),%eax        # 602060 <b>
  4006d9:	0f be c0             	movsbl %al,%eax
  4006dc:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4006e0:	f2 0f 10 15 90 05 00 	movsd  0x590(%rip),%xmm2        # 400c78 <_IO_stdin_used+0xb0>
  4006e7:	00 
  4006e8:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  4006ec:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4006f0:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  4006f4:	66 0f 5a c0          	cvtpd2ps %xmm0,%xmm0
  4006f8:	f3 0f 11 05 88 b5 fa 	movss  %xmm0,0x1fab588(%rip)        # 23abc88 <y>
  4006ff:	01 
  400700:	0f b6 05 61 19 20 00 	movzbl 0x201961(%rip),%eax        # 602068 <r>
  400707:	0f be c0             	movsbl %al,%eax
  40070a:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  40070e:	f2 0f 10 0d 6a 05 00 	movsd  0x56a(%rip),%xmm1        # 400c80 <_IO_stdin_used+0xb8>
  400715:	00 
  400716:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  40071a:	f2 0f 10 0d 66 05 00 	movsd  0x566(%rip),%xmm1        # 400c88 <_IO_stdin_used+0xc0>
  400721:	00 
  400722:	66 0f 28 d1          	movapd %xmm1,%xmm2
  400726:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
  40072a:	66 0f 28 c2          	movapd %xmm2,%xmm0
  40072e:	0f b6 05 4b b5 fa 01 	movzbl 0x1fab54b(%rip),%eax        # 23abc80 <g>
  400735:	0f be c0             	movsbl %al,%eax
  400738:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
  40073c:	f2 0f 10 15 4c 05 00 	movsd  0x54c(%rip),%xmm2        # 400c90 <_IO_stdin_used+0xc8>
  400743:	00 
  400744:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
  400748:	66 0f 28 d0          	movapd %xmm0,%xmm2
  40074c:	f2 0f 5c d1          	subsd  %xmm1,%xmm2
  400750:	66 0f 28 ca          	movapd %xmm2,%xmm1
  400754:	0f b6 05 05 19 20 00 	movzbl 0x201905(%rip),%eax        # 602060 <b>
  40075b:	0f be c0             	movsbl %al,%eax
  40075e:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  400762:	f2 0f 10 15 2e 05 00 	movsd  0x52e(%rip),%xmm2        # 400c98 <_IO_stdin_used+0xd0>
  400769:	00 
  40076a:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  40076e:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  400772:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  400776:	66 0f 5a c0          	cvtpd2ps %xmm0,%xmm0
  40077a:	f3 0f 11 05 ea 18 20 	movss  %xmm0,0x2018ea(%rip)        # 60206c <cb>
  400781:	00 
  400782:	0f b6 05 df 18 20 00 	movzbl 0x2018df(%rip),%eax        # 602068 <r>
  400789:	0f be c0             	movsbl %al,%eax
  40078c:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  400790:	f2 0f 10 0d 00 05 00 	movsd  0x500(%rip),%xmm1        # 400c98 <_IO_stdin_used+0xd0>
  400797:	00 
  400798:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  40079c:	f2 0f 10 0d e4 04 00 	movsd  0x4e4(%rip),%xmm1        # 400c88 <_IO_stdin_used+0xc0>
  4007a3:	00 
  4007a4:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4007a8:	0f b6 05 d1 b4 fa 01 	movzbl 0x1fab4d1(%rip),%eax        # 23abc80 <g>
  4007af:	0f be c0             	movsbl %al,%eax
  4007b2:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
  4007b6:	f2 0f 10 15 e2 04 00 	movsd  0x4e2(%rip),%xmm2        # 400ca0 <_IO_stdin_used+0xd8>
  4007bd:	00 
  4007be:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
  4007c2:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  4007c6:	0f b6 05 93 18 20 00 	movzbl 0x201893(%rip),%eax        # 602060 <b>
  4007cd:	0f be c0             	movsbl %al,%eax
  4007d0:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
  4007d4:	f2 0f 10 15 cc 04 00 	movsd  0x4cc(%rip),%xmm2        # 400ca8 <_IO_stdin_used+0xe0>
  4007db:	00 
  4007dc:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
  4007e0:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  4007e4:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  4007e8:	66 0f 5a c0          	cvtpd2ps %xmm0,%xmm0
  4007ec:	f3 0f 11 05 7c 18 20 	movss  %xmm0,0x20187c(%rip)        # 602070 <cr>
  4007f3:	00 
  4007f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4007f9:	e8 7f 00 00 00       	callq  40087d <checkThresholds>
  4007fe:	b8 00 00 00 00       	mov    $0x0,%eax
  400803:	e8 25 02 00 00       	callq  400a2d <writeNextYCbCr>
  400808:	8b 05 56 18 20 00    	mov    0x201856(%rip),%eax        # 602064 <j>
  40080e:	83 c0 01             	add    $0x1,%eax
  400811:	89 05 4d 18 20 00    	mov    %eax,0x20184d(%rip)        # 602064 <j>
  400817:	8b 05 47 18 20 00    	mov    0x201847(%rip),%eax        # 602064 <j>
  40081d:	3d 37 04 00 00       	cmp    $0x437,%eax
  400822:	0f 8e 5c fe ff ff    	jle    400684 <main+0x60>
  400828:	8b 05 56 b4 fa 01    	mov    0x1fab456(%rip),%eax        # 23abc84 <i>
  40082e:	83 c0 01             	add    $0x1,%eax
  400831:	89 05 4d b4 fa 01    	mov    %eax,0x1fab44d(%rip)        # 23abc84 <i>
  400837:	8b 05 47 b4 fa 01    	mov    0x1fab447(%rip),%eax        # 23abc84 <i>
  40083d:	3d 7f 07 00 00       	cmp    $0x77f,%eax
  400842:	0f 8e 2d fe ff ff    	jle    400675 <main+0x51>
  400848:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40084c:	48 83 c0 10          	add    $0x10,%rax
  400850:	48 8b 00             	mov    (%rax),%rax
  400853:	48 89 c7             	mov    %rax,%rdi
  400856:	e8 69 01 00 00       	callq  4009c4 <writeFile>
  40085b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40085f:	48 83 c0 10          	add    $0x10,%rax
  400863:	48 8b 10             	mov    (%rax),%rdx
  400866:	b8 e8 0b 40 00       	mov    $0x400be8,%eax
  40086b:	48 89 d6             	mov    %rdx,%rsi
  40086e:	48 89 c7             	mov    %rax,%rdi
  400871:	b8 00 00 00 00       	mov    $0x0,%eax
  400876:	e8 85 fc ff ff       	callq  400500 <printf@plt>
  40087b:	c9                   	leaveq 
  40087c:	c3                   	retq   

000000000040087d <checkThresholds>:
  40087d:	55                   	push   %rbp
  40087e:	48 89 e5             	mov    %rsp,%rbp
  400881:	f3 0f 10 0d ff b3 fa 	movss  0x1fab3ff(%rip),%xmm1        # 23abc88 <y>
  400888:	01 
  400889:	f3 0f 10 05 1f 04 00 	movss  0x41f(%rip),%xmm0        # 400cb0 <_IO_stdin_used+0xe8>
  400890:	00 
  400891:	0f 2e c1             	ucomiss %xmm1,%xmm0
  400894:	0f 97 c0             	seta   %al
  400897:	84 c0                	test   %al,%al
  400899:	74 0d                	je     4008a8 <checkThresholds+0x2b>
  40089b:	b8 00 00 80 41       	mov    $0x41800000,%eax
  4008a0:	89 05 e2 b3 fa 01    	mov    %eax,0x1fab3e2(%rip)        # 23abc88 <y>
  4008a6:	eb 21                	jmp    4008c9 <checkThresholds+0x4c>
  4008a8:	f3 0f 10 05 d8 b3 fa 	movss  0x1fab3d8(%rip),%xmm0        # 23abc88 <y>
  4008af:	01 
  4008b0:	0f 2e 05 fd 03 00 00 	ucomiss 0x3fd(%rip),%xmm0        # 400cb4 <_IO_stdin_used+0xec>
  4008b7:	0f 97 c0             	seta   %al
  4008ba:	84 c0                	test   %al,%al
  4008bc:	74 0b                	je     4008c9 <checkThresholds+0x4c>
  4008be:	b8 00 00 6b 43       	mov    $0x436b0000,%eax
  4008c3:	89 05 bf b3 fa 01    	mov    %eax,0x1fab3bf(%rip)        # 23abc88 <y>
  4008c9:	f3 0f 10 0d 9b 17 20 	movss  0x20179b(%rip),%xmm1        # 60206c <cb>
  4008d0:	00 
  4008d1:	f3 0f 10 05 d7 03 00 	movss  0x3d7(%rip),%xmm0        # 400cb0 <_IO_stdin_used+0xe8>
  4008d8:	00 
  4008d9:	0f 2e c1             	ucomiss %xmm1,%xmm0
  4008dc:	0f 97 c0             	seta   %al
  4008df:	84 c0                	test   %al,%al
  4008e1:	74 0d                	je     4008f0 <checkThresholds+0x73>
  4008e3:	b8 00 00 80 41       	mov    $0x41800000,%eax
  4008e8:	89 05 7e 17 20 00    	mov    %eax,0x20177e(%rip)        # 60206c <cb>
  4008ee:	eb 21                	jmp    400911 <checkThresholds+0x94>
  4008f0:	f3 0f 10 05 74 17 20 	movss  0x201774(%rip),%xmm0        # 60206c <cb>
  4008f7:	00 
  4008f8:	0f 2e 05 b9 03 00 00 	ucomiss 0x3b9(%rip),%xmm0        # 400cb8 <_IO_stdin_used+0xf0>
  4008ff:	0f 97 c0             	seta   %al
  400902:	84 c0                	test   %al,%al
  400904:	74 0b                	je     400911 <checkThresholds+0x94>
  400906:	b8 00 00 70 43       	mov    $0x43700000,%eax
  40090b:	89 05 5b 17 20 00    	mov    %eax,0x20175b(%rip)        # 60206c <cb>
  400911:	f3 0f 10 0d 57 17 20 	movss  0x201757(%rip),%xmm1        # 602070 <cr>
  400918:	00 
  400919:	f3 0f 10 05 8f 03 00 	movss  0x38f(%rip),%xmm0        # 400cb0 <_IO_stdin_used+0xe8>
  400920:	00 
  400921:	0f 2e c1             	ucomiss %xmm1,%xmm0
  400924:	0f 97 c0             	seta   %al
  400927:	84 c0                	test   %al,%al
  400929:	74 0d                	je     400938 <checkThresholds+0xbb>
  40092b:	b8 00 00 80 41       	mov    $0x41800000,%eax
  400930:	89 05 3a 17 20 00    	mov    %eax,0x20173a(%rip)        # 602070 <cr>
  400936:	eb 21                	jmp    400959 <checkThresholds+0xdc>
  400938:	f3 0f 10 05 30 17 20 	movss  0x201730(%rip),%xmm0        # 602070 <cr>
  40093f:	00 
  400940:	0f 2e 05 71 03 00 00 	ucomiss 0x371(%rip),%xmm0        # 400cb8 <_IO_stdin_used+0xf0>
  400947:	0f 97 c0             	seta   %al
  40094a:	84 c0                	test   %al,%al
  40094c:	74 0b                	je     400959 <checkThresholds+0xdc>
  40094e:	b8 00 00 70 43       	mov    $0x43700000,%eax
  400953:	89 05 17 17 20 00    	mov    %eax,0x201717(%rip)        # 602070 <cr>
  400959:	5d                   	pop    %rbp
  40095a:	c3                   	retq   

000000000040095b <loadFile>:
  40095b:	55                   	push   %rbp
  40095c:	48 89 e5             	mov    %rsp,%rbp
  40095f:	48 83 ec 20          	sub    $0x20,%rsp
  400963:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400967:	ba 0a 0c 40 00       	mov    $0x400c0a,%edx
  40096c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400970:	48 89 d6             	mov    %rdx,%rsi
  400973:	48 89 c7             	mov    %rax,%rdi
  400976:	e8 a5 fb ff ff       	callq  400520 <fopen@plt>
  40097b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40097f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400984:	75 12                	jne    400998 <loadFile+0x3d>
  400986:	b8 10 0c 40 00       	mov    $0x400c10,%eax
  40098b:	48 89 c7             	mov    %rax,%rdi
  40098e:	b8 00 00 00 00       	mov    $0x0,%eax
  400993:	e8 68 fb ff ff       	callq  400500 <printf@plt>
  400998:	b8 80 d0 db 01       	mov    $0x1dbd080,%eax
  40099d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4009a1:	48 89 d1             	mov    %rdx,%rcx
  4009a4:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  4009a9:	be 01 00 00 00       	mov    $0x1,%esi
  4009ae:	48 89 c7             	mov    %rax,%rdi
  4009b1:	e8 2a fb ff ff       	callq  4004e0 <fread@plt>
  4009b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009ba:	48 89 c7             	mov    %rax,%rdi
  4009bd:	e8 2e fb ff ff       	callq  4004f0 <fclose@plt>
  4009c2:	c9                   	leaveq 
  4009c3:	c3                   	retq   

00000000004009c4 <writeFile>:
  4009c4:	55                   	push   %rbp
  4009c5:	48 89 e5             	mov    %rsp,%rbp
  4009c8:	48 83 ec 20          	sub    $0x20,%rsp
  4009cc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4009d0:	ba 31 0c 40 00       	mov    $0x400c31,%edx
  4009d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4009d9:	48 89 d6             	mov    %rdx,%rsi
  4009dc:	48 89 c7             	mov    %rax,%rdi
  4009df:	e8 3c fb ff ff       	callq  400520 <fopen@plt>
  4009e4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4009e8:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4009ed:	75 12                	jne    400a01 <writeFile+0x3d>
  4009ef:	b8 38 0c 40 00       	mov    $0x400c38,%eax
  4009f4:	48 89 c7             	mov    %rax,%rdi
  4009f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4009fc:	e8 ff fa ff ff       	callq  400500 <printf@plt>
  400a01:	b8 80 20 60 00       	mov    $0x602080,%eax
  400a06:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400a0a:	48 89 d1             	mov    %rdx,%rcx
  400a0d:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  400a12:	be 04 00 00 00       	mov    $0x4,%esi
  400a17:	48 89 c7             	mov    %rax,%rdi
  400a1a:	e8 11 fb ff ff       	callq  400530 <fwrite@plt>
  400a1f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a23:	48 89 c7             	mov    %rax,%rdi
  400a26:	e8 c5 fa ff ff       	callq  4004f0 <fclose@plt>
  400a2b:	c9                   	leaveq 
  400a2c:	c3                   	retq   

0000000000400a2d <writeNextYCbCr>:
  400a2d:	55                   	push   %rbp
  400a2e:	48 89 e5             	mov    %rsp,%rbp
  400a31:	8b 05 19 16 20 00    	mov    0x201619(%rip),%eax        # 602050 <curByte>
  400a37:	83 e8 01             	sub    $0x1,%eax
  400a3a:	8b 15 48 b2 fa 01    	mov    0x1fab248(%rip),%edx        # 23abc88 <y>
  400a40:	48 98                	cltq   
  400a42:	89 14 85 80 20 60 00 	mov    %edx,0x602080(,%rax,4)
  400a49:	8b 05 01 16 20 00    	mov    0x201601(%rip),%eax        # 602050 <curByte>
  400a4f:	05 ff a3 1f 00       	add    $0x1fa3ff,%eax
  400a54:	8b 15 12 16 20 00    	mov    0x201612(%rip),%edx        # 60206c <cb>
  400a5a:	48 98                	cltq   
  400a5c:	89 14 85 80 20 60 00 	mov    %edx,0x602080(,%rax,4)
  400a63:	8b 05 e7 15 20 00    	mov    0x2015e7(%rip),%eax        # 602050 <curByte>
  400a69:	05 ff 47 3f 00       	add    $0x3f47ff,%eax
  400a6e:	8b 15 fc 15 20 00    	mov    0x2015fc(%rip),%edx        # 602070 <cr>
  400a74:	48 98                	cltq   
  400a76:	89 14 85 80 20 60 00 	mov    %edx,0x602080(,%rax,4)
  400a7d:	5d                   	pop    %rbp
  400a7e:	c3                   	retq   

0000000000400a7f <loadNextRGB>:
  400a7f:	55                   	push   %rbp
  400a80:	48 89 e5             	mov    %rsp,%rbp
  400a83:	8b 05 c7 15 20 00    	mov    0x2015c7(%rip),%eax        # 602050 <curByte>
  400a89:	48 98                	cltq   
  400a8b:	0f b6 80 80 d0 db 01 	movzbl 0x1dbd080(%rax),%eax
  400a92:	88 05 d0 15 20 00    	mov    %al,0x2015d0(%rip)        # 602068 <r>
  400a98:	8b 05 b2 15 20 00    	mov    0x2015b2(%rip),%eax        # 602050 <curByte>
  400a9e:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400aa3:	48 98                	cltq   
  400aa5:	0f b6 80 80 d0 db 01 	movzbl 0x1dbd080(%rax),%eax
  400aac:	88 05 ce b1 fa 01    	mov    %al,0x1fab1ce(%rip)        # 23abc80 <g>
  400ab2:	8b 05 98 15 20 00    	mov    0x201598(%rip),%eax        # 602050 <curByte>
  400ab8:	05 00 48 3f 00       	add    $0x3f4800,%eax
  400abd:	48 98                	cltq   
  400abf:	0f b6 80 80 d0 db 01 	movzbl 0x1dbd080(%rax),%eax
  400ac6:	88 05 94 15 20 00    	mov    %al,0x201594(%rip)        # 602060 <b>
  400acc:	8b 05 7e 15 20 00    	mov    0x20157e(%rip),%eax        # 602050 <curByte>
  400ad2:	83 c0 01             	add    $0x1,%eax
  400ad5:	89 05 75 15 20 00    	mov    %eax,0x201575(%rip)        # 602050 <curByte>
  400adb:	5d                   	pop    %rbp
  400adc:	c3                   	retq   
  400add:	90                   	nop
  400ade:	90                   	nop
  400adf:	90                   	nop

0000000000400ae0 <__libc_csu_init>:
  400ae0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400ae5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  400aea:	48 8d 2d 33 13 20 00 	lea    0x201333(%rip),%rbp        # 601e24 <__init_array_end>
  400af1:	4c 8d 25 2c 13 20 00 	lea    0x20132c(%rip),%r12        # 601e24 <__init_array_end>
  400af8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  400afd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400b02:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400b07:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  400b0c:	48 83 ec 38          	sub    $0x38,%rsp
  400b10:	4c 29 e5             	sub    %r12,%rbp
  400b13:	41 89 fd             	mov    %edi,%r13d
  400b16:	49 89 f6             	mov    %rsi,%r14
  400b19:	48 c1 fd 03          	sar    $0x3,%rbp
  400b1d:	49 89 d7             	mov    %rdx,%r15
  400b20:	e8 8b f9 ff ff       	callq  4004b0 <_init>
  400b25:	48 85 ed             	test   %rbp,%rbp
  400b28:	74 1c                	je     400b46 <__libc_csu_init+0x66>
  400b2a:	31 db                	xor    %ebx,%ebx
  400b2c:	0f 1f 40 00          	nopl   0x0(%rax)
  400b30:	4c 89 fa             	mov    %r15,%rdx
  400b33:	4c 89 f6             	mov    %r14,%rsi
  400b36:	44 89 ef             	mov    %r13d,%edi
  400b39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b3d:	48 83 c3 01          	add    $0x1,%rbx
  400b41:	48 39 eb             	cmp    %rbp,%rbx
  400b44:	75 ea                	jne    400b30 <__libc_csu_init+0x50>
  400b46:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400b4b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400b50:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400b55:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400b5a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400b5f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400b64:	48 83 c4 38          	add    $0x38,%rsp
  400b68:	c3                   	retq   
  400b69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400b70 <__libc_csu_fini>:
  400b70:	f3 c3                	repz retq 
  400b72:	90                   	nop
  400b73:	90                   	nop
  400b74:	90                   	nop
  400b75:	90                   	nop
  400b76:	90                   	nop
  400b77:	90                   	nop
  400b78:	90                   	nop
  400b79:	90                   	nop
  400b7a:	90                   	nop
  400b7b:	90                   	nop
  400b7c:	90                   	nop
  400b7d:	90                   	nop
  400b7e:	90                   	nop
  400b7f:	90                   	nop

0000000000400b80 <__do_global_ctors_aux>:
  400b80:	55                   	push   %rbp
  400b81:	48 89 e5             	mov    %rsp,%rbp
  400b84:	53                   	push   %rbx
  400b85:	48 83 ec 08          	sub    $0x8,%rsp
  400b89:	48 8b 05 98 12 20 00 	mov    0x201298(%rip),%rax        # 601e28 <__CTOR_LIST__>
  400b90:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400b94:	74 19                	je     400baf <__do_global_ctors_aux+0x2f>
  400b96:	bb 28 1e 60 00       	mov    $0x601e28,%ebx
  400b9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ba0:	48 83 eb 08          	sub    $0x8,%rbx
  400ba4:	ff d0                	callq  *%rax
  400ba6:	48 8b 03             	mov    (%rbx),%rax
  400ba9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400bad:	75 f1                	jne    400ba0 <__do_global_ctors_aux+0x20>
  400baf:	48 83 c4 08          	add    $0x8,%rsp
  400bb3:	5b                   	pop    %rbx
  400bb4:	5d                   	pop    %rbp
  400bb5:	c3                   	retq   
  400bb6:	90                   	nop
  400bb7:	90                   	nop

Disassembly of section .fini:

0000000000400bb8 <_fini>:
  400bb8:	48 83 ec 08          	sub    $0x8,%rsp
  400bbc:	e8 cf f9 ff ff       	callq  400590 <__do_global_dtors_aux>
  400bc1:	48 83 c4 08          	add    $0x8,%rsp
  400bc5:	c3                   	retq   
