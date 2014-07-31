
bin/soft_int.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000400478 <_init>:
  400478:	48 83 ec 08          	sub    $0x8,%rsp
  40047c:	e8 ab 00 00 00       	callq  40052c <call_gmon_start>
  400481:	e8 3a 01 00 00       	callq  4005c0 <frame_dummy>
  400486:	e8 85 06 00 00       	callq  400b10 <__do_global_ctors_aux>
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
  40050f:	49 c7 c0 70 0a 40 00 	mov    $0x400a70,%r8
  400516:	48 c7 c1 80 0a 40 00 	mov    $0x400a80,%rcx
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
  4005e8:	53                   	push   %rbx
  4005e9:	48 83 ec 18          	sub    $0x18,%rsp
  4005ed:	89 7d ec             	mov    %edi,-0x14(%rbp)
  4005f0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4005f4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4005f8:	48 83 c0 08          	add    $0x8,%rax
  4005fc:	48 8b 10             	mov    (%rax),%rdx
  4005ff:	b8 68 0b 40 00       	mov    $0x400b68,%eax
  400604:	48 89 d6             	mov    %rdx,%rsi
  400607:	48 89 c7             	mov    %rax,%rdi
  40060a:	b8 00 00 00 00       	mov    $0x0,%eax
  40060f:	e8 8c fe ff ff       	callq  4004a0 <printf@plt>
  400614:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400618:	48 83 c0 08          	add    $0x8,%rax
  40061c:	48 8b 00             	mov    (%rax),%rax
  40061f:	48 89 c7             	mov    %rax,%rdi
  400622:	b8 00 00 00 00       	mov    $0x0,%eax
  400627:	e8 45 02 00 00       	callq  400871 <loadFile>
  40062c:	c7 05 0a a8 fa 01 00 	movl   $0x0,0x1faa80a(%rip)        # 23aae40 <i>
  400633:	00 00 00 
  400636:	e9 56 01 00 00       	jmpq   400791 <main+0x1ad>
  40063b:	c7 05 07 a8 fa 01 00 	movl   $0x0,0x1faa807(%rip)        # 23aae4c <j>
  400642:	00 00 00 
  400645:	e9 26 01 00 00       	jmpq   400770 <main+0x18c>
  40064a:	b8 00 00 00 00       	mov    $0x0,%eax
  40064f:	e8 ab 03 00 00       	callq  4009ff <loadNextRGB>
  400654:	8b 05 f6 a7 fa 01    	mov    0x1faa7f6(%rip),%eax        # 23aae50 <r>
  40065a:	8d 50 40             	lea    0x40(%rax),%edx
  40065d:	8b 05 f5 a7 fa 01    	mov    0x1faa7f5(%rip),%eax        # 23aae58 <g>
  400663:	01 c0                	add    %eax,%eax
  400665:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  400668:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
  40066f:	8b 15 d3 a7 fa 01    	mov    0x1faa7d3(%rip),%edx        # 23aae48 <b>
  400675:	89 d0                	mov    %edx,%eax
  400677:	01 c0                	add    %eax,%eax
  400679:	01 d0                	add    %edx,%eax
  40067b:	8d 04 01             	lea    (%rcx,%rax,1),%eax
  40067e:	8d 50 1f             	lea    0x1f(%rax),%edx
  400681:	85 c0                	test   %eax,%eax
  400683:	0f 48 c2             	cmovs  %edx,%eax
  400686:	c1 f8 05             	sar    $0x5,%eax
  400689:	89 05 b5 a7 fa 01    	mov    %eax,0x1faa7b5(%rip)        # 23aae44 <y>
  40068f:	8b 15 bb a7 fa 01    	mov    0x1faa7bb(%rip),%edx        # 23aae50 <r>
  400695:	89 d0                	mov    %edx,%eax
  400697:	01 c0                	add    %eax,%eax
  400699:	01 d0                	add    %edx,%eax
  40069b:	01 c0                	add    %eax,%eax
  40069d:	89 c1                	mov    %eax,%ecx
  40069f:	f7 d9                	neg    %ecx
  4006a1:	8b 15 b1 a7 fa 01    	mov    0x1faa7b1(%rip),%edx        # 23aae58 <g>
  4006a7:	89 d0                	mov    %edx,%eax
  4006a9:	c1 e0 03             	shl    $0x3,%eax
  4006ac:	01 d0                	add    %edx,%eax
  4006ae:	f7 d8                	neg    %eax
  4006b0:	8d 04 01             	lea    (%rcx,%rax,1),%eax
  4006b3:	8d 88 00 10 00 00    	lea    0x1000(%rax),%ecx
  4006b9:	8b 05 89 a7 fa 01    	mov    0x1faa789(%rip),%eax        # 23aae48 <b>
  4006bf:	01 c0                	add    %eax,%eax
  4006c1:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  4006c8:	89 d3                	mov    %edx,%ebx
  4006ca:	29 c3                	sub    %eax,%ebx
  4006cc:	89 d8                	mov    %ebx,%eax
  4006ce:	8d 04 01             	lea    (%rcx,%rax,1),%eax
  4006d1:	8d 50 1f             	lea    0x1f(%rax),%edx
  4006d4:	85 c0                	test   %eax,%eax
  4006d6:	0f 48 c2             	cmovs  %edx,%eax
  4006d9:	c1 f8 05             	sar    $0x5,%eax
  4006dc:	89 c2                	mov    %eax,%edx
  4006de:	8b 05 70 a7 fa 01    	mov    0x1faa770(%rip),%eax        # 23aae54 <cb>
  4006e4:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  4006e7:	89 c2                	mov    %eax,%edx
  4006e9:	c1 ea 1f             	shr    $0x1f,%edx
  4006ec:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  4006ef:	d1 f8                	sar    %eax
  4006f1:	89 05 5d a7 fa 01    	mov    %eax,0x1faa75d(%rip)        # 23aae54 <cb>
  4006f7:	8b 05 53 a7 fa 01    	mov    0x1faa753(%rip),%eax        # 23aae50 <r>
  4006fd:	01 c0                	add    %eax,%eax
  4006ff:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  400706:	29 c2                	sub    %eax,%edx
  400708:	8b 05 4a a7 fa 01    	mov    0x1faa74a(%rip),%eax        # 23aae58 <g>
  40070e:	6b c0 f5             	imul   $0xfffffffffffffff5,%eax,%eax
  400711:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  400714:	8d 90 00 10 00 00    	lea    0x1000(%rax),%edx
  40071a:	8b 05 28 a7 fa 01    	mov    0x1faa728(%rip),%eax        # 23aae48 <b>
  400720:	01 c0                	add    %eax,%eax
  400722:	f7 d8                	neg    %eax
  400724:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  400727:	8d 50 1f             	lea    0x1f(%rax),%edx
  40072a:	85 c0                	test   %eax,%eax
  40072c:	0f 48 c2             	cmovs  %edx,%eax
  40072f:	c1 f8 05             	sar    $0x5,%eax
  400732:	89 c2                	mov    %eax,%edx
  400734:	8b 05 22 a7 fa 01    	mov    0x1faa722(%rip),%eax        # 23aae5c <cr>
  40073a:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  40073d:	89 c2                	mov    %eax,%edx
  40073f:	c1 ea 1f             	shr    $0x1f,%edx
  400742:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  400745:	d1 f8                	sar    %eax
  400747:	89 05 0f a7 fa 01    	mov    %eax,0x1faa70f(%rip)        # 23aae5c <cr>
  40074d:	b8 00 00 00 00       	mov    $0x0,%eax
  400752:	e8 8a 00 00 00       	callq  4007e1 <checkThresholds>
  400757:	b8 00 00 00 00       	mov    $0x0,%eax
  40075c:	e8 23 02 00 00       	callq  400984 <writeNextYCbCr>
  400761:	8b 05 e5 a6 fa 01    	mov    0x1faa6e5(%rip),%eax        # 23aae4c <j>
  400767:	83 c0 01             	add    $0x1,%eax
  40076a:	89 05 dc a6 fa 01    	mov    %eax,0x1faa6dc(%rip)        # 23aae4c <j>
  400770:	8b 05 d6 a6 fa 01    	mov    0x1faa6d6(%rip),%eax        # 23aae4c <j>
  400776:	3d 37 04 00 00       	cmp    $0x437,%eax
  40077b:	0f 8e c9 fe ff ff    	jle    40064a <main+0x66>
  400781:	90                   	nop
  400782:	8b 05 b8 a6 fa 01    	mov    0x1faa6b8(%rip),%eax        # 23aae40 <i>
  400788:	83 c0 01             	add    $0x1,%eax
  40078b:	89 05 af a6 fa 01    	mov    %eax,0x1faa6af(%rip)        # 23aae40 <i>
  400791:	8b 05 a9 a6 fa 01    	mov    0x1faa6a9(%rip),%eax        # 23aae40 <i>
  400797:	3d 7f 07 00 00       	cmp    $0x77f,%eax
  40079c:	0f 8e 99 fe ff ff    	jle    40063b <main+0x57>
  4007a2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007a6:	48 83 c0 10          	add    $0x10,%rax
  4007aa:	48 8b 00             	mov    (%rax),%rax
  4007ad:	48 89 c7             	mov    %rax,%rdi
  4007b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4007b5:	e8 1d 01 00 00       	callq  4008d7 <writeFile>
  4007ba:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007be:	48 83 c0 10          	add    $0x10,%rax
  4007c2:	48 8b 10             	mov    (%rax),%rdx
  4007c5:	b8 80 0b 40 00       	mov    $0x400b80,%eax
  4007ca:	48 89 d6             	mov    %rdx,%rsi
  4007cd:	48 89 c7             	mov    %rax,%rdi
  4007d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4007d5:	e8 c6 fc ff ff       	callq  4004a0 <printf@plt>
  4007da:	48 83 c4 18          	add    $0x18,%rsp
  4007de:	5b                   	pop    %rbx
  4007df:	c9                   	leaveq 
  4007e0:	c3                   	retq   

00000000004007e1 <checkThresholds>:
  4007e1:	55                   	push   %rbp
  4007e2:	48 89 e5             	mov    %rsp,%rbp
  4007e5:	8b 05 59 a6 fa 01    	mov    0x1faa659(%rip),%eax        # 23aae44 <y>
  4007eb:	83 f8 0f             	cmp    $0xf,%eax
  4007ee:	7f 0c                	jg     4007fc <checkThresholds+0x1b>
  4007f0:	c7 05 4a a6 fa 01 10 	movl   $0x10,0x1faa64a(%rip)        # 23aae44 <y>
  4007f7:	00 00 00 
  4007fa:	eb 17                	jmp    400813 <checkThresholds+0x32>
  4007fc:	8b 05 42 a6 fa 01    	mov    0x1faa642(%rip),%eax        # 23aae44 <y>
  400802:	3d eb 00 00 00       	cmp    $0xeb,%eax
  400807:	7e 0a                	jle    400813 <checkThresholds+0x32>
  400809:	c7 05 31 a6 fa 01 eb 	movl   $0xeb,0x1faa631(%rip)        # 23aae44 <y>
  400810:	00 00 00 
  400813:	8b 05 3b a6 fa 01    	mov    0x1faa63b(%rip),%eax        # 23aae54 <cb>
  400819:	83 f8 0f             	cmp    $0xf,%eax
  40081c:	7f 0c                	jg     40082a <checkThresholds+0x49>
  40081e:	c7 05 2c a6 fa 01 10 	movl   $0x10,0x1faa62c(%rip)        # 23aae54 <cb>
  400825:	00 00 00 
  400828:	eb 17                	jmp    400841 <checkThresholds+0x60>
  40082a:	8b 05 24 a6 fa 01    	mov    0x1faa624(%rip),%eax        # 23aae54 <cb>
  400830:	3d f0 00 00 00       	cmp    $0xf0,%eax
  400835:	7e 0a                	jle    400841 <checkThresholds+0x60>
  400837:	c7 05 13 a6 fa 01 f0 	movl   $0xf0,0x1faa613(%rip)        # 23aae54 <cb>
  40083e:	00 00 00 
  400841:	8b 05 15 a6 fa 01    	mov    0x1faa615(%rip),%eax        # 23aae5c <cr>
  400847:	83 f8 0f             	cmp    $0xf,%eax
  40084a:	7f 0c                	jg     400858 <checkThresholds+0x77>
  40084c:	c7 05 06 a6 fa 01 10 	movl   $0x10,0x1faa606(%rip)        # 23aae5c <cr>
  400853:	00 00 00 
  400856:	eb 17                	jmp    40086f <checkThresholds+0x8e>
  400858:	8b 05 fe a5 fa 01    	mov    0x1faa5fe(%rip),%eax        # 23aae5c <cr>
  40085e:	3d f0 00 00 00       	cmp    $0xf0,%eax
  400863:	7e 0a                	jle    40086f <checkThresholds+0x8e>
  400865:	c7 05 ed a5 fa 01 f0 	movl   $0xf0,0x1faa5ed(%rip)        # 23aae5c <cr>
  40086c:	00 00 00 
  40086f:	c9                   	leaveq 
  400870:	c3                   	retq   

0000000000400871 <loadFile>:
  400871:	55                   	push   %rbp
  400872:	48 89 e5             	mov    %rsp,%rbp
  400875:	48 83 ec 20          	sub    $0x20,%rsp
  400879:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40087d:	ba a2 0b 40 00       	mov    $0x400ba2,%edx
  400882:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400886:	48 89 d6             	mov    %rdx,%rsi
  400889:	48 89 c7             	mov    %rax,%rdi
  40088c:	e8 1f fc ff ff       	callq  4004b0 <fopen@plt>
  400891:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400895:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40089a:	75 12                	jne    4008ae <loadFile+0x3d>
  40089c:	b8 a8 0b 40 00       	mov    $0x400ba8,%eax
  4008a1:	48 89 c7             	mov    %rax,%rdi
  4008a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4008a9:	e8 f2 fb ff ff       	callq  4004a0 <printf@plt>
  4008ae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008b2:	48 89 c1             	mov    %rax,%rcx
  4008b5:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  4008ba:	be 01 00 00 00       	mov    $0x1,%esi
  4008bf:	bf 40 12 60 00       	mov    $0x601240,%edi
  4008c4:	e8 07 fc ff ff       	callq  4004d0 <fread@plt>
  4008c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008cd:	48 89 c7             	mov    %rax,%rdi
  4008d0:	e8 0b fc ff ff       	callq  4004e0 <fclose@plt>
  4008d5:	c9                   	leaveq 
  4008d6:	c3                   	retq   

00000000004008d7 <writeFile>:
  4008d7:	55                   	push   %rbp
  4008d8:	48 89 e5             	mov    %rsp,%rbp
  4008db:	48 81 ec 20 76 2f 00 	sub    $0x2f7620,%rsp
  4008e2:	48 89 bd e8 89 d0 ff 	mov    %rdi,-0x2f7618(%rbp)
  4008e9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  4008f0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  4008f7:	eb 1f                	jmp    400918 <writeFile+0x41>
  4008f9:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  4008fc:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4008ff:	48 98                	cltq   
  400901:	8b 04 85 40 fe be 00 	mov    0xbefe40(,%rax,4),%eax
  400908:	89 c2                	mov    %eax,%edx
  40090a:	48 63 c1             	movslq %ecx,%rax
  40090d:	88 94 05 f0 89 d0 ff 	mov    %dl,-0x2f7610(%rbp,%rax,1)
  400914:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
  400918:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40091b:	3d ff 75 2f 00       	cmp    $0x2f75ff,%eax
  400920:	76 d7                	jbe    4008f9 <writeFile+0x22>
  400922:	ba c9 0b 40 00       	mov    $0x400bc9,%edx
  400927:	48 8b 85 e8 89 d0 ff 	mov    -0x2f7618(%rbp),%rax
  40092e:	48 89 d6             	mov    %rdx,%rsi
  400931:	48 89 c7             	mov    %rax,%rdi
  400934:	e8 77 fb ff ff       	callq  4004b0 <fopen@plt>
  400939:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40093d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400942:	75 12                	jne    400956 <writeFile+0x7f>
  400944:	b8 d0 0b 40 00       	mov    $0x400bd0,%eax
  400949:	48 89 c7             	mov    %rax,%rdi
  40094c:	b8 00 00 00 00       	mov    $0x0,%eax
  400951:	e8 4a fb ff ff       	callq  4004a0 <printf@plt>
  400956:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40095a:	48 8d 85 f0 89 d0 ff 	lea    -0x2f7610(%rbp),%rax
  400961:	48 89 d1             	mov    %rdx,%rcx
  400964:	ba 00 76 2f 00       	mov    $0x2f7600,%edx
  400969:	be 01 00 00 00       	mov    $0x1,%esi
  40096e:	48 89 c7             	mov    %rax,%rdi
  400971:	e8 7a fb ff ff       	callq  4004f0 <fwrite@plt>
  400976:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40097a:	48 89 c7             	mov    %rax,%rdi
  40097d:	e8 5e fb ff ff       	callq  4004e0 <fclose@plt>
  400982:	c9                   	leaveq 
  400983:	c3                   	retq   

0000000000400984 <writeNextYCbCr>:
  400984:	55                   	push   %rbp
  400985:	48 89 e5             	mov    %rsp,%rbp
  400988:	8b 05 a2 08 20 00    	mov    0x2008a2(%rip),%eax        # 601230 <curByte>
  40098e:	83 e8 01             	sub    $0x1,%eax
  400991:	8b 15 ad a4 fa 01    	mov    0x1faa4ad(%rip),%edx        # 23aae44 <y>
  400997:	48 98                	cltq   
  400999:	89 14 85 40 fe be 00 	mov    %edx,0xbefe40(,%rax,4)
  4009a0:	8b 05 a6 a4 fa 01    	mov    0x1faa4a6(%rip),%eax        # 23aae4c <j>
  4009a6:	83 e0 03             	and    $0x3,%eax
  4009a9:	85 c0                	test   %eax,%eax
  4009ab:	75 50                	jne    4009fd <writeNextYCbCr+0x79>
  4009ad:	8b 05 7d 08 20 00    	mov    0x20087d(%rip),%eax        # 601230 <curByte>
  4009b3:	83 e8 01             	sub    $0x1,%eax
  4009b6:	8d 50 03             	lea    0x3(%rax),%edx
  4009b9:	85 c0                	test   %eax,%eax
  4009bb:	0f 48 c2             	cmovs  %edx,%eax
  4009be:	c1 f8 02             	sar    $0x2,%eax
  4009c1:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  4009c6:	8b 15 88 a4 fa 01    	mov    0x1faa488(%rip),%edx        # 23aae54 <cb>
  4009cc:	48 98                	cltq   
  4009ce:	89 14 85 40 fe be 00 	mov    %edx,0xbefe40(,%rax,4)
  4009d5:	8b 05 55 08 20 00    	mov    0x200855(%rip),%eax        # 601230 <curByte>
  4009db:	83 e8 01             	sub    $0x1,%eax
  4009de:	8d 50 03             	lea    0x3(%rax),%edx
  4009e1:	85 c0                	test   %eax,%eax
  4009e3:	0f 48 c2             	cmovs  %edx,%eax
  4009e6:	c1 f8 02             	sar    $0x2,%eax
  4009e9:	05 00 8d 27 00       	add    $0x278d00,%eax
  4009ee:	8b 15 68 a4 fa 01    	mov    0x1faa468(%rip),%edx        # 23aae5c <cr>
  4009f4:	48 98                	cltq   
  4009f6:	89 14 85 40 fe be 00 	mov    %edx,0xbefe40(,%rax,4)
  4009fd:	c9                   	leaveq 
  4009fe:	c3                   	retq   

00000000004009ff <loadNextRGB>:
  4009ff:	55                   	push   %rbp
  400a00:	48 89 e5             	mov    %rsp,%rbp
  400a03:	8b 05 27 08 20 00    	mov    0x200827(%rip),%eax        # 601230 <curByte>
  400a09:	48 98                	cltq   
  400a0b:	0f b6 80 40 12 60 00 	movzbl 0x601240(%rax),%eax
  400a12:	0f be c0             	movsbl %al,%eax
  400a15:	89 05 35 a4 fa 01    	mov    %eax,0x1faa435(%rip)        # 23aae50 <r>
  400a1b:	8b 05 0f 08 20 00    	mov    0x20080f(%rip),%eax        # 601230 <curByte>
  400a21:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400a26:	48 98                	cltq   
  400a28:	0f b6 80 40 12 60 00 	movzbl 0x601240(%rax),%eax
  400a2f:	0f be c0             	movsbl %al,%eax
  400a32:	89 05 20 a4 fa 01    	mov    %eax,0x1faa420(%rip)        # 23aae58 <g>
  400a38:	8b 05 f2 07 20 00    	mov    0x2007f2(%rip),%eax        # 601230 <curByte>
  400a3e:	05 00 48 3f 00       	add    $0x3f4800,%eax
  400a43:	48 98                	cltq   
  400a45:	0f b6 80 40 12 60 00 	movzbl 0x601240(%rax),%eax
  400a4c:	0f be c0             	movsbl %al,%eax
  400a4f:	89 05 f3 a3 fa 01    	mov    %eax,0x1faa3f3(%rip)        # 23aae48 <b>
  400a55:	8b 05 d5 07 20 00    	mov    0x2007d5(%rip),%eax        # 601230 <curByte>
  400a5b:	83 c0 01             	add    $0x1,%eax
  400a5e:	89 05 cc 07 20 00    	mov    %eax,0x2007cc(%rip)        # 601230 <curByte>
  400a64:	c9                   	leaveq 
  400a65:	c3                   	retq   
  400a66:	90                   	nop
  400a67:	90                   	nop
  400a68:	90                   	nop
  400a69:	90                   	nop
  400a6a:	90                   	nop
  400a6b:	90                   	nop
  400a6c:	90                   	nop
  400a6d:	90                   	nop
  400a6e:	90                   	nop
  400a6f:	90                   	nop

0000000000400a70 <__libc_csu_fini>:
  400a70:	f3 c3                	repz retq 
  400a72:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400a79:	1f 84 00 00 00 00 00 

0000000000400a80 <__libc_csu_init>:
  400a80:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400a85:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  400a8a:	48 8d 2d 6f 05 20 00 	lea    0x20056f(%rip),%rbp        # 601000 <__CTOR_LIST__>
  400a91:	4c 8d 25 68 05 20 00 	lea    0x200568(%rip),%r12        # 601000 <__CTOR_LIST__>
  400a98:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  400a9d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400aa2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400aa7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  400aac:	48 83 ec 38          	sub    $0x38,%rsp
  400ab0:	4c 29 e5             	sub    %r12,%rbp
  400ab3:	41 89 fd             	mov    %edi,%r13d
  400ab6:	49 89 f6             	mov    %rsi,%r14
  400ab9:	48 c1 fd 03          	sar    $0x3,%rbp
  400abd:	49 89 d7             	mov    %rdx,%r15
  400ac0:	e8 b3 f9 ff ff       	callq  400478 <_init>
  400ac5:	48 85 ed             	test   %rbp,%rbp
  400ac8:	74 1c                	je     400ae6 <__libc_csu_init+0x66>
  400aca:	31 db                	xor    %ebx,%ebx
  400acc:	0f 1f 40 00          	nopl   0x0(%rax)
  400ad0:	4c 89 fa             	mov    %r15,%rdx
  400ad3:	4c 89 f6             	mov    %r14,%rsi
  400ad6:	44 89 ef             	mov    %r13d,%edi
  400ad9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400add:	48 83 c3 01          	add    $0x1,%rbx
  400ae1:	48 39 eb             	cmp    %rbp,%rbx
  400ae4:	72 ea                	jb     400ad0 <__libc_csu_init+0x50>
  400ae6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400aeb:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400af0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400af5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400afa:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400aff:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400b04:	48 83 c4 38          	add    $0x38,%rsp
  400b08:	c3                   	retq   
  400b09:	90                   	nop
  400b0a:	90                   	nop
  400b0b:	90                   	nop
  400b0c:	90                   	nop
  400b0d:	90                   	nop
  400b0e:	90                   	nop
  400b0f:	90                   	nop

0000000000400b10 <__do_global_ctors_aux>:
  400b10:	55                   	push   %rbp
  400b11:	48 89 e5             	mov    %rsp,%rbp
  400b14:	53                   	push   %rbx
  400b15:	48 83 ec 08          	sub    $0x8,%rsp
  400b19:	48 8b 05 e0 04 20 00 	mov    0x2004e0(%rip),%rax        # 601000 <__CTOR_LIST__>
  400b20:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400b24:	74 19                	je     400b3f <__do_global_ctors_aux+0x2f>
  400b26:	bb 00 10 60 00       	mov    $0x601000,%ebx
  400b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b30:	48 83 eb 08          	sub    $0x8,%rbx
  400b34:	ff d0                	callq  *%rax
  400b36:	48 8b 03             	mov    (%rbx),%rax
  400b39:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400b3d:	75 f1                	jne    400b30 <__do_global_ctors_aux+0x20>
  400b3f:	48 83 c4 08          	add    $0x8,%rsp
  400b43:	5b                   	pop    %rbx
  400b44:	c9                   	leaveq 
  400b45:	c3                   	retq   
  400b46:	90                   	nop
  400b47:	90                   	nop

Disassembly of section .fini:

0000000000400b48 <_fini>:
  400b48:	48 83 ec 08          	sub    $0x8,%rsp
  400b4c:	e8 ff f9 ff ff       	callq  400550 <__do_global_dtors_aux>
  400b51:	48 83 c4 08          	add    $0x8,%rsp
  400b55:	c3                   	retq   
