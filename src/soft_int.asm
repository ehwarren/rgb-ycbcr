
bin/soft_int.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000400508 <_init>:
  400508:	48 83 ec 08          	sub    $0x8,%rsp
  40050c:	e8 bb 00 00 00       	callq  4005cc <call_gmon_start>
  400511:	e8 4a 01 00 00       	callq  400660 <frame_dummy>
  400516:	e8 35 07 00 00       	callq  400c50 <__do_global_ctors_aux>
  40051b:	48 83 c4 08          	add    $0x8,%rsp
  40051f:	c3                   	retq   

Disassembly of section .plt:

0000000000400520 <fread@plt-0x10>:
  400520:	ff 35 ca 1a 20 00    	pushq  0x201aca(%rip)        # 601ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400526:	ff 25 cc 1a 20 00    	jmpq   *0x201acc(%rip)        # 601ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40052c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400530 <fread@plt>:
  400530:	ff 25 ca 1a 20 00    	jmpq   *0x201aca(%rip)        # 602000 <_GLOBAL_OFFSET_TABLE_+0x18>
  400536:	68 00 00 00 00       	pushq  $0x0
  40053b:	e9 e0 ff ff ff       	jmpq   400520 <_init+0x18>

0000000000400540 <fclose@plt>:
  400540:	ff 25 c2 1a 20 00    	jmpq   *0x201ac2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x20>
  400546:	68 01 00 00 00       	pushq  $0x1
  40054b:	e9 d0 ff ff ff       	jmpq   400520 <_init+0x18>

0000000000400550 <__stack_chk_fail@plt>:
  400550:	ff 25 ba 1a 20 00    	jmpq   *0x201aba(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x28>
  400556:	68 02 00 00 00       	pushq  $0x2
  40055b:	e9 c0 ff ff ff       	jmpq   400520 <_init+0x18>

0000000000400560 <printf@plt>:
  400560:	ff 25 b2 1a 20 00    	jmpq   *0x201ab2(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x30>
  400566:	68 03 00 00 00       	pushq  $0x3
  40056b:	e9 b0 ff ff ff       	jmpq   400520 <_init+0x18>

0000000000400570 <__libc_start_main@plt>:
  400570:	ff 25 aa 1a 20 00    	jmpq   *0x201aaa(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x38>
  400576:	68 04 00 00 00       	pushq  $0x4
  40057b:	e9 a0 ff ff ff       	jmpq   400520 <_init+0x18>

0000000000400580 <fopen@plt>:
  400580:	ff 25 a2 1a 20 00    	jmpq   *0x201aa2(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x40>
  400586:	68 05 00 00 00       	pushq  $0x5
  40058b:	e9 90 ff ff ff       	jmpq   400520 <_init+0x18>

0000000000400590 <fwrite@plt>:
  400590:	ff 25 9a 1a 20 00    	jmpq   *0x201a9a(%rip)        # 602030 <_GLOBAL_OFFSET_TABLE_+0x48>
  400596:	68 06 00 00 00       	pushq  $0x6
  40059b:	e9 80 ff ff ff       	jmpq   400520 <_init+0x18>

Disassembly of section .text:

00000000004005a0 <_start>:
  4005a0:	31 ed                	xor    %ebp,%ebp
  4005a2:	49 89 d1             	mov    %rdx,%r9
  4005a5:	5e                   	pop    %rsi
  4005a6:	48 89 e2             	mov    %rsp,%rdx
  4005a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005ad:	50                   	push   %rax
  4005ae:	54                   	push   %rsp
  4005af:	49 c7 c0 40 0c 40 00 	mov    $0x400c40,%r8
  4005b6:	48 c7 c1 b0 0b 40 00 	mov    $0x400bb0,%rcx
  4005bd:	48 c7 c7 84 06 40 00 	mov    $0x400684,%rdi
  4005c4:	e8 a7 ff ff ff       	callq  400570 <__libc_start_main@plt>
  4005c9:	f4                   	hlt    
  4005ca:	90                   	nop
  4005cb:	90                   	nop

00000000004005cc <call_gmon_start>:
  4005cc:	48 83 ec 08          	sub    $0x8,%rsp
  4005d0:	48 8b 05 09 1a 20 00 	mov    0x201a09(%rip),%rax        # 601fe0 <_DYNAMIC+0x190>
  4005d7:	48 85 c0             	test   %rax,%rax
  4005da:	74 02                	je     4005de <call_gmon_start+0x12>
  4005dc:	ff d0                	callq  *%rax
  4005de:	48 83 c4 08          	add    $0x8,%rsp
  4005e2:	c3                   	retq   
  4005e3:	90                   	nop
  4005e4:	90                   	nop
  4005e5:	90                   	nop
  4005e6:	90                   	nop
  4005e7:	90                   	nop
  4005e8:	90                   	nop
  4005e9:	90                   	nop
  4005ea:	90                   	nop
  4005eb:	90                   	nop
  4005ec:	90                   	nop
  4005ed:	90                   	nop
  4005ee:	90                   	nop
  4005ef:	90                   	nop

00000000004005f0 <__do_global_dtors_aux>:
  4005f0:	55                   	push   %rbp
  4005f1:	48 89 e5             	mov    %rsp,%rbp
  4005f4:	53                   	push   %rbx
  4005f5:	48 83 ec 08          	sub    $0x8,%rsp
  4005f9:	80 3d 60 1a 20 00 00 	cmpb   $0x0,0x201a60(%rip)        # 602060 <completed.6531>
  400600:	75 4b                	jne    40064d <__do_global_dtors_aux+0x5d>
  400602:	bb 40 1e 60 00       	mov    $0x601e40,%ebx
  400607:	48 8b 05 5a 1a 20 00 	mov    0x201a5a(%rip),%rax        # 602068 <dtor_idx.6533>
  40060e:	48 81 eb 38 1e 60 00 	sub    $0x601e38,%rbx
  400615:	48 c1 fb 03          	sar    $0x3,%rbx
  400619:	48 83 eb 01          	sub    $0x1,%rbx
  40061d:	48 39 d8             	cmp    %rbx,%rax
  400620:	73 24                	jae    400646 <__do_global_dtors_aux+0x56>
  400622:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400628:	48 83 c0 01          	add    $0x1,%rax
  40062c:	48 89 05 35 1a 20 00 	mov    %rax,0x201a35(%rip)        # 602068 <dtor_idx.6533>
  400633:	ff 14 c5 38 1e 60 00 	callq  *0x601e38(,%rax,8)
  40063a:	48 8b 05 27 1a 20 00 	mov    0x201a27(%rip),%rax        # 602068 <dtor_idx.6533>
  400641:	48 39 d8             	cmp    %rbx,%rax
  400644:	72 e2                	jb     400628 <__do_global_dtors_aux+0x38>
  400646:	c6 05 13 1a 20 00 01 	movb   $0x1,0x201a13(%rip)        # 602060 <completed.6531>
  40064d:	48 83 c4 08          	add    $0x8,%rsp
  400651:	5b                   	pop    %rbx
  400652:	5d                   	pop    %rbp
  400653:	c3                   	retq   
  400654:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40065b:	00 00 00 00 00 

0000000000400660 <frame_dummy>:
  400660:	48 83 3d e0 17 20 00 	cmpq   $0x0,0x2017e0(%rip)        # 601e48 <__JCR_END__>
  400667:	00 
  400668:	55                   	push   %rbp
  400669:	48 89 e5             	mov    %rsp,%rbp
  40066c:	74 12                	je     400680 <frame_dummy+0x20>
  40066e:	b8 00 00 00 00       	mov    $0x0,%eax
  400673:	48 85 c0             	test   %rax,%rax
  400676:	74 08                	je     400680 <frame_dummy+0x20>
  400678:	5d                   	pop    %rbp
  400679:	bf 48 1e 60 00       	mov    $0x601e48,%edi
  40067e:	ff e0                	jmpq   *%rax
  400680:	5d                   	pop    %rbp
  400681:	c3                   	retq   
  400682:	90                   	nop
  400683:	90                   	nop

0000000000400684 <main>:
  400684:	55                   	push   %rbp
  400685:	48 89 e5             	mov    %rsp,%rbp
  400688:	53                   	push   %rbx
  400689:	48 83 ec 18          	sub    $0x18,%rsp
  40068d:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400690:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400694:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400698:	48 83 c0 08          	add    $0x8,%rax
  40069c:	48 8b 10             	mov    (%rax),%rdx
  40069f:	b8 a0 0c 40 00       	mov    $0x400ca0,%eax
  4006a4:	48 89 d6             	mov    %rdx,%rsi
  4006a7:	48 89 c7             	mov    %rax,%rdi
  4006aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4006af:	e8 ac fe ff ff       	callq  400560 <printf@plt>
  4006b4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4006b8:	48 83 c0 08          	add    $0x8,%rax
  4006bc:	48 8b 00             	mov    (%rax),%rax
  4006bf:	48 89 c7             	mov    %rax,%rdi
  4006c2:	e8 41 02 00 00       	callq  400908 <loadFile>
  4006c7:	c7 05 d3 b5 fa 01 00 	movl   $0x0,0x1fab5d3(%rip)        # 23abca4 <i>
  4006ce:	00 00 00 
  4006d1:	e9 57 01 00 00       	jmpq   40082d <main+0x1a9>
  4006d6:	c7 05 a4 19 20 00 00 	movl   $0x0,0x2019a4(%rip)        # 602084 <j>
  4006dd:	00 00 00 
  4006e0:	e9 28 01 00 00       	jmpq   40080d <main+0x189>
  4006e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4006ea:	e8 50 04 00 00       	callq  400b3f <loadNextRGB>
  4006ef:	8b 05 93 19 20 00    	mov    0x201993(%rip),%eax        # 602088 <r>
  4006f5:	8d 50 40             	lea    0x40(%rax),%edx
  4006f8:	8b 05 a2 b5 fa 01    	mov    0x1fab5a2(%rip),%eax        # 23abca0 <g>
  4006fe:	01 c0                	add    %eax,%eax
  400700:	01 d0                	add    %edx,%eax
  400702:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
  400709:	8b 15 71 19 20 00    	mov    0x201971(%rip),%edx        # 602080 <b>
  40070f:	89 d0                	mov    %edx,%eax
  400711:	01 c0                	add    %eax,%eax
  400713:	01 d0                	add    %edx,%eax
  400715:	01 c8                	add    %ecx,%eax
  400717:	8d 50 1f             	lea    0x1f(%rax),%edx
  40071a:	85 c0                	test   %eax,%eax
  40071c:	0f 48 c2             	cmovs  %edx,%eax
  40071f:	c1 f8 05             	sar    $0x5,%eax
  400722:	89 05 80 b5 fa 01    	mov    %eax,0x1fab580(%rip)        # 23abca8 <y>
  400728:	8b 15 5a 19 20 00    	mov    0x20195a(%rip),%edx        # 602088 <r>
  40072e:	89 d0                	mov    %edx,%eax
  400730:	c1 e0 02             	shl    $0x2,%eax
  400733:	01 c2                	add    %eax,%edx
  400735:	f7 da                	neg    %edx
  400737:	8b 0d 63 b5 fa 01    	mov    0x1fab563(%rip),%ecx        # 23abca0 <g>
  40073d:	89 c8                	mov    %ecx,%eax
  40073f:	c1 e0 03             	shl    $0x3,%eax
  400742:	01 c8                	add    %ecx,%eax
  400744:	f7 d8                	neg    %eax
  400746:	01 d0                	add    %edx,%eax
  400748:	8d 88 00 10 00 00    	lea    0x1000(%rax),%ecx
  40074e:	8b 05 2c 19 20 00    	mov    0x20192c(%rip),%eax        # 602080 <b>
  400754:	01 c0                	add    %eax,%eax
  400756:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  40075d:	89 d3                	mov    %edx,%ebx
  40075f:	29 c3                	sub    %eax,%ebx
  400761:	89 d8                	mov    %ebx,%eax
  400763:	01 c8                	add    %ecx,%eax
  400765:	8d 50 1f             	lea    0x1f(%rax),%edx
  400768:	85 c0                	test   %eax,%eax
  40076a:	0f 48 c2             	cmovs  %edx,%eax
  40076d:	c1 f8 05             	sar    $0x5,%eax
  400770:	89 c2                	mov    %eax,%edx
  400772:	8b 05 14 19 20 00    	mov    0x201914(%rip),%eax        # 60208c <cb>
  400778:	01 d0                	add    %edx,%eax
  40077a:	89 c2                	mov    %eax,%edx
  40077c:	c1 ea 1f             	shr    $0x1f,%edx
  40077f:	01 d0                	add    %edx,%eax
  400781:	d1 f8                	sar    %eax
  400783:	89 05 03 19 20 00    	mov    %eax,0x201903(%rip)        # 60208c <cb>
  400789:	8b 05 f9 18 20 00    	mov    0x2018f9(%rip),%eax        # 602088 <r>
  40078f:	01 c0                	add    %eax,%eax
  400791:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  400798:	89 d1                	mov    %edx,%ecx
  40079a:	29 c1                	sub    %eax,%ecx
  40079c:	8b 15 fe b4 fa 01    	mov    0x1fab4fe(%rip),%edx        # 23abca0 <g>
  4007a2:	89 d0                	mov    %edx,%eax
  4007a4:	01 c0                	add    %eax,%eax
  4007a6:	01 d0                	add    %edx,%eax
  4007a8:	c1 e0 02             	shl    $0x2,%eax
  4007ab:	f7 d8                	neg    %eax
  4007ad:	01 c8                	add    %ecx,%eax
  4007af:	8d 88 00 10 00 00    	lea    0x1000(%rax),%ecx
  4007b5:	8b 15 c5 18 20 00    	mov    0x2018c5(%rip),%edx        # 602080 <b>
  4007bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4007c0:	29 d0                	sub    %edx,%eax
  4007c2:	01 c0                	add    %eax,%eax
  4007c4:	01 c8                	add    %ecx,%eax
  4007c6:	8d 50 1f             	lea    0x1f(%rax),%edx
  4007c9:	85 c0                	test   %eax,%eax
  4007cb:	0f 48 c2             	cmovs  %edx,%eax
  4007ce:	c1 f8 05             	sar    $0x5,%eax
  4007d1:	89 c2                	mov    %eax,%edx
  4007d3:	8b 05 b7 18 20 00    	mov    0x2018b7(%rip),%eax        # 602090 <cr>
  4007d9:	01 d0                	add    %edx,%eax
  4007db:	89 c2                	mov    %eax,%edx
  4007dd:	c1 ea 1f             	shr    $0x1f,%edx
  4007e0:	01 d0                	add    %edx,%eax
  4007e2:	d1 f8                	sar    %eax
  4007e4:	89 05 a6 18 20 00    	mov    %eax,0x2018a6(%rip)        # 602090 <cr>
  4007ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ef:	e8 84 00 00 00       	callq  400878 <checkThresholds>
  4007f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4007f9:	e8 b2 02 00 00       	callq  400ab0 <writeNextYCbCr>
  4007fe:	8b 05 80 18 20 00    	mov    0x201880(%rip),%eax        # 602084 <j>
  400804:	83 c0 01             	add    $0x1,%eax
  400807:	89 05 77 18 20 00    	mov    %eax,0x201877(%rip)        # 602084 <j>
  40080d:	8b 05 71 18 20 00    	mov    0x201871(%rip),%eax        # 602084 <j>
  400813:	3d 37 04 00 00       	cmp    $0x437,%eax
  400818:	0f 8e c7 fe ff ff    	jle    4006e5 <main+0x61>
  40081e:	8b 05 80 b4 fa 01    	mov    0x1fab480(%rip),%eax        # 23abca4 <i>
  400824:	83 c0 01             	add    $0x1,%eax
  400827:	89 05 77 b4 fa 01    	mov    %eax,0x1fab477(%rip)        # 23abca4 <i>
  40082d:	8b 05 71 b4 fa 01    	mov    0x1fab471(%rip),%eax        # 23abca4 <i>
  400833:	3d 7f 07 00 00       	cmp    $0x77f,%eax
  400838:	0f 8e 98 fe ff ff    	jle    4006d6 <main+0x52>
  40083e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400842:	48 83 c0 10          	add    $0x10,%rax
  400846:	48 8b 00             	mov    (%rax),%rax
  400849:	48 89 c7             	mov    %rax,%rdi
  40084c:	e8 20 01 00 00       	callq  400971 <writeFile>
  400851:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400855:	48 83 c0 10          	add    $0x10,%rax
  400859:	48 8b 10             	mov    (%rax),%rdx
  40085c:	b8 b8 0c 40 00       	mov    $0x400cb8,%eax
  400861:	48 89 d6             	mov    %rdx,%rsi
  400864:	48 89 c7             	mov    %rax,%rdi
  400867:	b8 00 00 00 00       	mov    $0x0,%eax
  40086c:	e8 ef fc ff ff       	callq  400560 <printf@plt>
  400871:	48 83 c4 18          	add    $0x18,%rsp
  400875:	5b                   	pop    %rbx
  400876:	5d                   	pop    %rbp
  400877:	c3                   	retq   

0000000000400878 <checkThresholds>:
  400878:	55                   	push   %rbp
  400879:	48 89 e5             	mov    %rsp,%rbp
  40087c:	8b 05 26 b4 fa 01    	mov    0x1fab426(%rip),%eax        # 23abca8 <y>
  400882:	83 f8 0f             	cmp    $0xf,%eax
  400885:	7f 0c                	jg     400893 <checkThresholds+0x1b>
  400887:	c7 05 17 b4 fa 01 10 	movl   $0x10,0x1fab417(%rip)        # 23abca8 <y>
  40088e:	00 00 00 
  400891:	eb 17                	jmp    4008aa <checkThresholds+0x32>
  400893:	8b 05 0f b4 fa 01    	mov    0x1fab40f(%rip),%eax        # 23abca8 <y>
  400899:	3d eb 00 00 00       	cmp    $0xeb,%eax
  40089e:	7e 0a                	jle    4008aa <checkThresholds+0x32>
  4008a0:	c7 05 fe b3 fa 01 eb 	movl   $0xeb,0x1fab3fe(%rip)        # 23abca8 <y>
  4008a7:	00 00 00 
  4008aa:	8b 05 dc 17 20 00    	mov    0x2017dc(%rip),%eax        # 60208c <cb>
  4008b0:	83 f8 0f             	cmp    $0xf,%eax
  4008b3:	7f 0c                	jg     4008c1 <checkThresholds+0x49>
  4008b5:	c7 05 cd 17 20 00 10 	movl   $0x10,0x2017cd(%rip)        # 60208c <cb>
  4008bc:	00 00 00 
  4008bf:	eb 17                	jmp    4008d8 <checkThresholds+0x60>
  4008c1:	8b 05 c5 17 20 00    	mov    0x2017c5(%rip),%eax        # 60208c <cb>
  4008c7:	3d f0 00 00 00       	cmp    $0xf0,%eax
  4008cc:	7e 0a                	jle    4008d8 <checkThresholds+0x60>
  4008ce:	c7 05 b4 17 20 00 f0 	movl   $0xf0,0x2017b4(%rip)        # 60208c <cb>
  4008d5:	00 00 00 
  4008d8:	8b 05 b2 17 20 00    	mov    0x2017b2(%rip),%eax        # 602090 <cr>
  4008de:	83 f8 0f             	cmp    $0xf,%eax
  4008e1:	7f 0c                	jg     4008ef <checkThresholds+0x77>
  4008e3:	c7 05 a3 17 20 00 10 	movl   $0x10,0x2017a3(%rip)        # 602090 <cr>
  4008ea:	00 00 00 
  4008ed:	eb 17                	jmp    400906 <checkThresholds+0x8e>
  4008ef:	8b 05 9b 17 20 00    	mov    0x20179b(%rip),%eax        # 602090 <cr>
  4008f5:	3d f0 00 00 00       	cmp    $0xf0,%eax
  4008fa:	7e 0a                	jle    400906 <checkThresholds+0x8e>
  4008fc:	c7 05 8a 17 20 00 f0 	movl   $0xf0,0x20178a(%rip)        # 602090 <cr>
  400903:	00 00 00 
  400906:	5d                   	pop    %rbp
  400907:	c3                   	retq   

0000000000400908 <loadFile>:
  400908:	55                   	push   %rbp
  400909:	48 89 e5             	mov    %rsp,%rbp
  40090c:	48 83 ec 20          	sub    $0x20,%rsp
  400910:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400914:	ba da 0c 40 00       	mov    $0x400cda,%edx
  400919:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40091d:	48 89 d6             	mov    %rdx,%rsi
  400920:	48 89 c7             	mov    %rax,%rdi
  400923:	e8 58 fc ff ff       	callq  400580 <fopen@plt>
  400928:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40092c:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400931:	75 12                	jne    400945 <loadFile+0x3d>
  400933:	b8 e0 0c 40 00       	mov    $0x400ce0,%eax
  400938:	48 89 c7             	mov    %rax,%rdi
  40093b:	b8 00 00 00 00       	mov    $0x0,%eax
  400940:	e8 1b fc ff ff       	callq  400560 <printf@plt>
  400945:	b8 a0 d0 db 01       	mov    $0x1dbd0a0,%eax
  40094a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40094e:	48 89 d1             	mov    %rdx,%rcx
  400951:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  400956:	be 01 00 00 00       	mov    $0x1,%esi
  40095b:	48 89 c7             	mov    %rax,%rdi
  40095e:	e8 cd fb ff ff       	callq  400530 <fread@plt>
  400963:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400967:	48 89 c7             	mov    %rax,%rdi
  40096a:	e8 d1 fb ff ff       	callq  400540 <fclose@plt>
  40096f:	c9                   	leaveq 
  400970:	c3                   	retq   

0000000000400971 <writeFile>:
  400971:	55                   	push   %rbp
  400972:	48 89 e5             	mov    %rsp,%rbp
  400975:	48 81 ec 30 76 2f 00 	sub    $0x2f7630,%rsp
  40097c:	48 89 bd d8 89 d0 ff 	mov    %rdi,-0x2f7628(%rbp)
  400983:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40098a:	00 00 
  40098c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400990:	31 c0                	xor    %eax,%eax
  400992:	c7 85 ec 89 d0 ff 00 	movl   $0x0,-0x2f7614(%rbp)
  400999:	00 00 00 
  40099c:	c7 85 ec 89 d0 ff 00 	movl   $0x0,-0x2f7614(%rbp)
  4009a3:	00 00 00 
  4009a6:	eb 27                	jmp    4009cf <writeFile+0x5e>
  4009a8:	8b 85 ec 89 d0 ff    	mov    -0x2f7614(%rbp),%eax
  4009ae:	48 98                	cltq   
  4009b0:	8b 04 85 a0 20 60 00 	mov    0x6020a0(,%rax,4),%eax
  4009b7:	89 c2                	mov    %eax,%edx
  4009b9:	8b 85 ec 89 d0 ff    	mov    -0x2f7614(%rbp),%eax
  4009bf:	48 98                	cltq   
  4009c1:	88 94 05 f0 89 d0 ff 	mov    %dl,-0x2f7610(%rbp,%rax,1)
  4009c8:	83 85 ec 89 d0 ff 01 	addl   $0x1,-0x2f7614(%rbp)
  4009cf:	8b 85 ec 89 d0 ff    	mov    -0x2f7614(%rbp),%eax
  4009d5:	3d ff 75 2f 00       	cmp    $0x2f75ff,%eax
  4009da:	76 cc                	jbe    4009a8 <writeFile+0x37>
  4009dc:	ba 01 0d 40 00       	mov    $0x400d01,%edx
  4009e1:	48 8b 85 d8 89 d0 ff 	mov    -0x2f7628(%rbp),%rax
  4009e8:	48 89 d6             	mov    %rdx,%rsi
  4009eb:	48 89 c7             	mov    %rax,%rdi
  4009ee:	e8 8d fb ff ff       	callq  400580 <fopen@plt>
  4009f3:	48 89 85 e0 89 d0 ff 	mov    %rax,-0x2f7620(%rbp)
  4009fa:	48 83 bd e0 89 d0 ff 	cmpq   $0x0,-0x2f7620(%rbp)
  400a01:	00 
  400a02:	75 12                	jne    400a16 <writeFile+0xa5>
  400a04:	b8 08 0d 40 00       	mov    $0x400d08,%eax
  400a09:	48 89 c7             	mov    %rax,%rdi
  400a0c:	b8 00 00 00 00       	mov    $0x0,%eax
  400a11:	e8 4a fb ff ff       	callq  400560 <printf@plt>
  400a16:	48 8d 85 f0 89 d0 ff 	lea    -0x2f7610(%rbp),%rax
  400a1d:	48 8b 95 e0 89 d0 ff 	mov    -0x2f7620(%rbp),%rdx
  400a24:	48 89 d1             	mov    %rdx,%rcx
  400a27:	ba 00 76 2f 00       	mov    $0x2f7600,%edx
  400a2c:	be 01 00 00 00       	mov    $0x1,%esi
  400a31:	48 89 c7             	mov    %rax,%rdi
  400a34:	e8 57 fb ff ff       	callq  400590 <fwrite@plt>
  400a39:	48 8b 85 e0 89 d0 ff 	mov    -0x2f7620(%rbp),%rax
  400a40:	48 89 c7             	mov    %rax,%rdi
  400a43:	e8 f8 fa ff ff       	callq  400540 <fclose@plt>
  400a48:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a4c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400a53:	00 00 
  400a55:	74 05                	je     400a5c <writeFile+0xeb>
  400a57:	e8 f4 fa ff ff       	callq  400550 <__stack_chk_fail@plt>
  400a5c:	c9                   	leaveq 
  400a5d:	c3                   	retq   

0000000000400a5e <writeNextYCbCrold>:
  400a5e:	55                   	push   %rbp
  400a5f:	48 89 e5             	mov    %rsp,%rbp
  400a62:	8b 05 08 16 20 00    	mov    0x201608(%rip),%eax        # 602070 <curByte>
  400a68:	83 e8 01             	sub    $0x1,%eax
  400a6b:	8b 15 37 b2 fa 01    	mov    0x1fab237(%rip),%edx        # 23abca8 <y>
  400a71:	48 98                	cltq   
  400a73:	89 14 85 a0 20 60 00 	mov    %edx,0x6020a0(,%rax,4)
  400a7a:	8b 05 f0 15 20 00    	mov    0x2015f0(%rip),%eax        # 602070 <curByte>
  400a80:	05 ff a3 1f 00       	add    $0x1fa3ff,%eax
  400a85:	8b 15 01 16 20 00    	mov    0x201601(%rip),%edx        # 60208c <cb>
  400a8b:	48 98                	cltq   
  400a8d:	89 14 85 a0 20 60 00 	mov    %edx,0x6020a0(,%rax,4)
  400a94:	8b 05 d6 15 20 00    	mov    0x2015d6(%rip),%eax        # 602070 <curByte>
  400a9a:	05 ff 47 3f 00       	add    $0x3f47ff,%eax
  400a9f:	8b 15 eb 15 20 00    	mov    0x2015eb(%rip),%edx        # 602090 <cr>
  400aa5:	48 98                	cltq   
  400aa7:	89 14 85 a0 20 60 00 	mov    %edx,0x6020a0(,%rax,4)
  400aae:	5d                   	pop    %rbp
  400aaf:	c3                   	retq   

0000000000400ab0 <writeNextYCbCr>:
  400ab0:	55                   	push   %rbp
  400ab1:	48 89 e5             	mov    %rsp,%rbp
  400ab4:	8b 05 b6 15 20 00    	mov    0x2015b6(%rip),%eax        # 602070 <curByte>
  400aba:	83 e8 01             	sub    $0x1,%eax
  400abd:	8b 15 e5 b1 fa 01    	mov    0x1fab1e5(%rip),%edx        # 23abca8 <y>
  400ac3:	48 98                	cltq   
  400ac5:	89 14 85 a0 20 60 00 	mov    %edx,0x6020a0(,%rax,4)
  400acc:	8b 05 b2 15 20 00    	mov    0x2015b2(%rip),%eax        # 602084 <j>
  400ad2:	83 e0 03             	and    $0x3,%eax
  400ad5:	85 c0                	test   %eax,%eax
  400ad7:	75 64                	jne    400b3d <writeNextYCbCr+0x8d>
  400ad9:	8b 05 91 15 20 00    	mov    0x201591(%rip),%eax        # 602070 <curByte>
  400adf:	83 e8 01             	sub    $0x1,%eax
  400ae2:	8d 50 03             	lea    0x3(%rax),%edx
  400ae5:	85 c0                	test   %eax,%eax
  400ae7:	0f 48 c2             	cmovs  %edx,%eax
  400aea:	c1 f8 02             	sar    $0x2,%eax
  400aed:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400af2:	8b 15 94 15 20 00    	mov    0x201594(%rip),%edx        # 60208c <cb>
  400af8:	48 98                	cltq   
  400afa:	89 14 85 a0 20 60 00 	mov    %edx,0x6020a0(,%rax,4)
  400b01:	c7 05 81 15 20 00 00 	movl   $0x0,0x201581(%rip)        # 60208c <cb>
  400b08:	00 00 00 
  400b0b:	8b 05 5f 15 20 00    	mov    0x20155f(%rip),%eax        # 602070 <curByte>
  400b11:	83 e8 01             	sub    $0x1,%eax
  400b14:	8d 50 03             	lea    0x3(%rax),%edx
  400b17:	85 c0                	test   %eax,%eax
  400b19:	0f 48 c2             	cmovs  %edx,%eax
  400b1c:	c1 f8 02             	sar    $0x2,%eax
  400b1f:	05 00 8d 27 00       	add    $0x278d00,%eax
  400b24:	8b 15 66 15 20 00    	mov    0x201566(%rip),%edx        # 602090 <cr>
  400b2a:	48 98                	cltq   
  400b2c:	89 14 85 a0 20 60 00 	mov    %edx,0x6020a0(,%rax,4)
  400b33:	c7 05 53 15 20 00 00 	movl   $0x0,0x201553(%rip)        # 602090 <cr>
  400b3a:	00 00 00 
  400b3d:	5d                   	pop    %rbp
  400b3e:	c3                   	retq   

0000000000400b3f <loadNextRGB>:
  400b3f:	55                   	push   %rbp
  400b40:	48 89 e5             	mov    %rsp,%rbp
  400b43:	8b 05 27 15 20 00    	mov    0x201527(%rip),%eax        # 602070 <curByte>
  400b49:	48 98                	cltq   
  400b4b:	0f b6 80 a0 d0 db 01 	movzbl 0x1dbd0a0(%rax),%eax
  400b52:	0f be c0             	movsbl %al,%eax
  400b55:	89 05 2d 15 20 00    	mov    %eax,0x20152d(%rip)        # 602088 <r>
  400b5b:	8b 05 0f 15 20 00    	mov    0x20150f(%rip),%eax        # 602070 <curByte>
  400b61:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400b66:	48 98                	cltq   
  400b68:	0f b6 80 a0 d0 db 01 	movzbl 0x1dbd0a0(%rax),%eax
  400b6f:	0f be c0             	movsbl %al,%eax
  400b72:	89 05 28 b1 fa 01    	mov    %eax,0x1fab128(%rip)        # 23abca0 <g>
  400b78:	8b 05 f2 14 20 00    	mov    0x2014f2(%rip),%eax        # 602070 <curByte>
  400b7e:	05 00 48 3f 00       	add    $0x3f4800,%eax
  400b83:	48 98                	cltq   
  400b85:	0f b6 80 a0 d0 db 01 	movzbl 0x1dbd0a0(%rax),%eax
  400b8c:	0f be c0             	movsbl %al,%eax
  400b8f:	89 05 eb 14 20 00    	mov    %eax,0x2014eb(%rip)        # 602080 <b>
  400b95:	8b 05 d5 14 20 00    	mov    0x2014d5(%rip),%eax        # 602070 <curByte>
  400b9b:	83 c0 01             	add    $0x1,%eax
  400b9e:	89 05 cc 14 20 00    	mov    %eax,0x2014cc(%rip)        # 602070 <curByte>
  400ba4:	5d                   	pop    %rbp
  400ba5:	c3                   	retq   
  400ba6:	90                   	nop
  400ba7:	90                   	nop
  400ba8:	90                   	nop
  400ba9:	90                   	nop
  400baa:	90                   	nop
  400bab:	90                   	nop
  400bac:	90                   	nop
  400bad:	90                   	nop
  400bae:	90                   	nop
  400baf:	90                   	nop

0000000000400bb0 <__libc_csu_init>:
  400bb0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400bb5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  400bba:	48 8d 2d 63 12 20 00 	lea    0x201263(%rip),%rbp        # 601e24 <__init_array_end>
  400bc1:	4c 8d 25 5c 12 20 00 	lea    0x20125c(%rip),%r12        # 601e24 <__init_array_end>
  400bc8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  400bcd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400bd2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400bd7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  400bdc:	48 83 ec 38          	sub    $0x38,%rsp
  400be0:	4c 29 e5             	sub    %r12,%rbp
  400be3:	41 89 fd             	mov    %edi,%r13d
  400be6:	49 89 f6             	mov    %rsi,%r14
  400be9:	48 c1 fd 03          	sar    $0x3,%rbp
  400bed:	49 89 d7             	mov    %rdx,%r15
  400bf0:	e8 13 f9 ff ff       	callq  400508 <_init>
  400bf5:	48 85 ed             	test   %rbp,%rbp
  400bf8:	74 1c                	je     400c16 <__libc_csu_init+0x66>
  400bfa:	31 db                	xor    %ebx,%ebx
  400bfc:	0f 1f 40 00          	nopl   0x0(%rax)
  400c00:	4c 89 fa             	mov    %r15,%rdx
  400c03:	4c 89 f6             	mov    %r14,%rsi
  400c06:	44 89 ef             	mov    %r13d,%edi
  400c09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c0d:	48 83 c3 01          	add    $0x1,%rbx
  400c11:	48 39 eb             	cmp    %rbp,%rbx
  400c14:	75 ea                	jne    400c00 <__libc_csu_init+0x50>
  400c16:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400c1b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400c20:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400c25:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400c2a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400c2f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400c34:	48 83 c4 38          	add    $0x38,%rsp
  400c38:	c3                   	retq   
  400c39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400c40 <__libc_csu_fini>:
  400c40:	f3 c3                	repz retq 
  400c42:	90                   	nop
  400c43:	90                   	nop
  400c44:	90                   	nop
  400c45:	90                   	nop
  400c46:	90                   	nop
  400c47:	90                   	nop
  400c48:	90                   	nop
  400c49:	90                   	nop
  400c4a:	90                   	nop
  400c4b:	90                   	nop
  400c4c:	90                   	nop
  400c4d:	90                   	nop
  400c4e:	90                   	nop
  400c4f:	90                   	nop

0000000000400c50 <__do_global_ctors_aux>:
  400c50:	55                   	push   %rbp
  400c51:	48 89 e5             	mov    %rsp,%rbp
  400c54:	53                   	push   %rbx
  400c55:	48 83 ec 08          	sub    $0x8,%rsp
  400c59:	48 8b 05 c8 11 20 00 	mov    0x2011c8(%rip),%rax        # 601e28 <__CTOR_LIST__>
  400c60:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400c64:	74 19                	je     400c7f <__do_global_ctors_aux+0x2f>
  400c66:	bb 28 1e 60 00       	mov    $0x601e28,%ebx
  400c6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400c70:	48 83 eb 08          	sub    $0x8,%rbx
  400c74:	ff d0                	callq  *%rax
  400c76:	48 8b 03             	mov    (%rbx),%rax
  400c79:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400c7d:	75 f1                	jne    400c70 <__do_global_ctors_aux+0x20>
  400c7f:	48 83 c4 08          	add    $0x8,%rsp
  400c83:	5b                   	pop    %rbx
  400c84:	5d                   	pop    %rbp
  400c85:	c3                   	retq   
  400c86:	90                   	nop
  400c87:	90                   	nop

Disassembly of section .fini:

0000000000400c88 <_fini>:
  400c88:	48 83 ec 08          	sub    $0x8,%rsp
  400c8c:	e8 5f f9 ff ff       	callq  4005f0 <__do_global_dtors_aux>
  400c91:	48 83 c4 08          	add    $0x8,%rsp
  400c95:	c3                   	retq   
