
bin/soft_int.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000400508 <_init>:
  400508:	48 83 ec 08          	sub    $0x8,%rsp
  40050c:	e8 bb 00 00 00       	callq  4005cc <call_gmon_start>
  400511:	e8 4a 01 00 00       	callq  400660 <frame_dummy>
  400516:	e8 c5 06 00 00       	callq  400be0 <__do_global_ctors_aux>
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
  4005af:	49 c7 c0 d0 0b 40 00 	mov    $0x400bd0,%r8
  4005b6:	48 c7 c1 40 0b 40 00 	mov    $0x400b40,%rcx
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
  40069f:	b8 30 0c 40 00       	mov    $0x400c30,%eax
  4006a4:	48 89 d6             	mov    %rdx,%rsi
  4006a7:	48 89 c7             	mov    %rax,%rdi
  4006aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4006af:	e8 ac fe ff ff       	callq  400560 <printf@plt>
  4006b4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4006b8:	48 83 c0 08          	add    $0x8,%rax
  4006bc:	48 8b 00             	mov    (%rax),%rax
  4006bf:	48 89 c7             	mov    %rax,%rdi
  4006c2:	e8 3a 02 00 00       	callq  400901 <loadFile>
  4006c7:	c7 05 d3 b5 fa 01 00 	movl   $0x0,0x1fab5d3(%rip)        # 23abca4 <i>
  4006ce:	00 00 00 
  4006d1:	e9 50 01 00 00       	jmpq   400826 <main+0x1a2>
  4006d6:	c7 05 a4 19 20 00 00 	movl   $0x0,0x2019a4(%rip)        # 602084 <j>
  4006dd:	00 00 00 
  4006e0:	e9 21 01 00 00       	jmpq   400806 <main+0x182>
  4006e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4006ea:	e8 e3 03 00 00       	callq  400ad2 <loadNextRGB>
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
  400730:	01 c0                	add    %eax,%eax
  400732:	01 d0                	add    %edx,%eax
  400734:	01 c0                	add    %eax,%eax
  400736:	89 c1                	mov    %eax,%ecx
  400738:	f7 d9                	neg    %ecx
  40073a:	8b 15 60 b5 fa 01    	mov    0x1fab560(%rip),%edx        # 23abca0 <g>
  400740:	89 d0                	mov    %edx,%eax
  400742:	c1 e0 03             	shl    $0x3,%eax
  400745:	01 d0                	add    %edx,%eax
  400747:	f7 d8                	neg    %eax
  400749:	01 c8                	add    %ecx,%eax
  40074b:	8d 88 00 10 00 00    	lea    0x1000(%rax),%ecx
  400751:	8b 05 29 19 20 00    	mov    0x201929(%rip),%eax        # 602080 <b>
  400757:	01 c0                	add    %eax,%eax
  400759:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  400760:	89 d3                	mov    %edx,%ebx
  400762:	29 c3                	sub    %eax,%ebx
  400764:	89 d8                	mov    %ebx,%eax
  400766:	01 c8                	add    %ecx,%eax
  400768:	8d 50 1f             	lea    0x1f(%rax),%edx
  40076b:	85 c0                	test   %eax,%eax
  40076d:	0f 48 c2             	cmovs  %edx,%eax
  400770:	c1 f8 05             	sar    $0x5,%eax
  400773:	89 c2                	mov    %eax,%edx
  400775:	8b 05 11 19 20 00    	mov    0x201911(%rip),%eax        # 60208c <cb>
  40077b:	01 d0                	add    %edx,%eax
  40077d:	89 c2                	mov    %eax,%edx
  40077f:	c1 ea 1f             	shr    $0x1f,%edx
  400782:	01 d0                	add    %edx,%eax
  400784:	d1 f8                	sar    %eax
  400786:	89 05 00 19 20 00    	mov    %eax,0x201900(%rip)        # 60208c <cb>
  40078c:	8b 05 f6 18 20 00    	mov    0x2018f6(%rip),%eax        # 602088 <r>
  400792:	01 c0                	add    %eax,%eax
  400794:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  40079b:	29 c2                	sub    %eax,%edx
  40079d:	8b 05 fd b4 fa 01    	mov    0x1fab4fd(%rip),%eax        # 23abca0 <g>
  4007a3:	6b c0 f5             	imul   $0xfffffff5,%eax,%eax
  4007a6:	01 d0                	add    %edx,%eax
  4007a8:	8d 88 00 10 00 00    	lea    0x1000(%rax),%ecx
  4007ae:	8b 15 cc 18 20 00    	mov    0x2018cc(%rip),%edx        # 602080 <b>
  4007b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4007b9:	29 d0                	sub    %edx,%eax
  4007bb:	01 c0                	add    %eax,%eax
  4007bd:	01 c8                	add    %ecx,%eax
  4007bf:	8d 50 1f             	lea    0x1f(%rax),%edx
  4007c2:	85 c0                	test   %eax,%eax
  4007c4:	0f 48 c2             	cmovs  %edx,%eax
  4007c7:	c1 f8 05             	sar    $0x5,%eax
  4007ca:	89 c2                	mov    %eax,%edx
  4007cc:	8b 05 be 18 20 00    	mov    0x2018be(%rip),%eax        # 602090 <cr>
  4007d2:	01 d0                	add    %edx,%eax
  4007d4:	89 c2                	mov    %eax,%edx
  4007d6:	c1 ea 1f             	shr    $0x1f,%edx
  4007d9:	01 d0                	add    %edx,%eax
  4007db:	d1 f8                	sar    %eax
  4007dd:	89 05 ad 18 20 00    	mov    %eax,0x2018ad(%rip)        # 602090 <cr>
  4007e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4007e8:	e8 84 00 00 00       	callq  400871 <checkThresholds>
  4007ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4007f2:	e8 60 02 00 00       	callq  400a57 <writeNextYCbCr>
  4007f7:	8b 05 87 18 20 00    	mov    0x201887(%rip),%eax        # 602084 <j>
  4007fd:	83 c0 01             	add    $0x1,%eax
  400800:	89 05 7e 18 20 00    	mov    %eax,0x20187e(%rip)        # 602084 <j>
  400806:	8b 05 78 18 20 00    	mov    0x201878(%rip),%eax        # 602084 <j>
  40080c:	3d 37 04 00 00       	cmp    $0x437,%eax
  400811:	0f 8e ce fe ff ff    	jle    4006e5 <main+0x61>
  400817:	8b 05 87 b4 fa 01    	mov    0x1fab487(%rip),%eax        # 23abca4 <i>
  40081d:	83 c0 01             	add    $0x1,%eax
  400820:	89 05 7e b4 fa 01    	mov    %eax,0x1fab47e(%rip)        # 23abca4 <i>
  400826:	8b 05 78 b4 fa 01    	mov    0x1fab478(%rip),%eax        # 23abca4 <i>
  40082c:	3d 7f 07 00 00       	cmp    $0x77f,%eax
  400831:	0f 8e 9f fe ff ff    	jle    4006d6 <main+0x52>
  400837:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40083b:	48 83 c0 10          	add    $0x10,%rax
  40083f:	48 8b 00             	mov    (%rax),%rax
  400842:	48 89 c7             	mov    %rax,%rdi
  400845:	e8 20 01 00 00       	callq  40096a <writeFile>
  40084a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40084e:	48 83 c0 10          	add    $0x10,%rax
  400852:	48 8b 10             	mov    (%rax),%rdx
  400855:	b8 48 0c 40 00       	mov    $0x400c48,%eax
  40085a:	48 89 d6             	mov    %rdx,%rsi
  40085d:	48 89 c7             	mov    %rax,%rdi
  400860:	b8 00 00 00 00       	mov    $0x0,%eax
  400865:	e8 f6 fc ff ff       	callq  400560 <printf@plt>
  40086a:	48 83 c4 18          	add    $0x18,%rsp
  40086e:	5b                   	pop    %rbx
  40086f:	5d                   	pop    %rbp
  400870:	c3                   	retq   

0000000000400871 <checkThresholds>:
  400871:	55                   	push   %rbp
  400872:	48 89 e5             	mov    %rsp,%rbp
  400875:	8b 05 2d b4 fa 01    	mov    0x1fab42d(%rip),%eax        # 23abca8 <y>
  40087b:	83 f8 0f             	cmp    $0xf,%eax
  40087e:	7f 0c                	jg     40088c <checkThresholds+0x1b>
  400880:	c7 05 1e b4 fa 01 10 	movl   $0x10,0x1fab41e(%rip)        # 23abca8 <y>
  400887:	00 00 00 
  40088a:	eb 17                	jmp    4008a3 <checkThresholds+0x32>
  40088c:	8b 05 16 b4 fa 01    	mov    0x1fab416(%rip),%eax        # 23abca8 <y>
  400892:	3d eb 00 00 00       	cmp    $0xeb,%eax
  400897:	7e 0a                	jle    4008a3 <checkThresholds+0x32>
  400899:	c7 05 05 b4 fa 01 eb 	movl   $0xeb,0x1fab405(%rip)        # 23abca8 <y>
  4008a0:	00 00 00 
  4008a3:	8b 05 e3 17 20 00    	mov    0x2017e3(%rip),%eax        # 60208c <cb>
  4008a9:	83 f8 0f             	cmp    $0xf,%eax
  4008ac:	7f 0c                	jg     4008ba <checkThresholds+0x49>
  4008ae:	c7 05 d4 17 20 00 10 	movl   $0x10,0x2017d4(%rip)        # 60208c <cb>
  4008b5:	00 00 00 
  4008b8:	eb 17                	jmp    4008d1 <checkThresholds+0x60>
  4008ba:	8b 05 cc 17 20 00    	mov    0x2017cc(%rip),%eax        # 60208c <cb>
  4008c0:	3d f0 00 00 00       	cmp    $0xf0,%eax
  4008c5:	7e 0a                	jle    4008d1 <checkThresholds+0x60>
  4008c7:	c7 05 bb 17 20 00 f0 	movl   $0xf0,0x2017bb(%rip)        # 60208c <cb>
  4008ce:	00 00 00 
  4008d1:	8b 05 b9 17 20 00    	mov    0x2017b9(%rip),%eax        # 602090 <cr>
  4008d7:	83 f8 0f             	cmp    $0xf,%eax
  4008da:	7f 0c                	jg     4008e8 <checkThresholds+0x77>
  4008dc:	c7 05 aa 17 20 00 10 	movl   $0x10,0x2017aa(%rip)        # 602090 <cr>
  4008e3:	00 00 00 
  4008e6:	eb 17                	jmp    4008ff <checkThresholds+0x8e>
  4008e8:	8b 05 a2 17 20 00    	mov    0x2017a2(%rip),%eax        # 602090 <cr>
  4008ee:	3d f0 00 00 00       	cmp    $0xf0,%eax
  4008f3:	7e 0a                	jle    4008ff <checkThresholds+0x8e>
  4008f5:	c7 05 91 17 20 00 f0 	movl   $0xf0,0x201791(%rip)        # 602090 <cr>
  4008fc:	00 00 00 
  4008ff:	5d                   	pop    %rbp
  400900:	c3                   	retq   

0000000000400901 <loadFile>:
  400901:	55                   	push   %rbp
  400902:	48 89 e5             	mov    %rsp,%rbp
  400905:	48 83 ec 20          	sub    $0x20,%rsp
  400909:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40090d:	ba 6a 0c 40 00       	mov    $0x400c6a,%edx
  400912:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400916:	48 89 d6             	mov    %rdx,%rsi
  400919:	48 89 c7             	mov    %rax,%rdi
  40091c:	e8 5f fc ff ff       	callq  400580 <fopen@plt>
  400921:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400925:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40092a:	75 12                	jne    40093e <loadFile+0x3d>
  40092c:	b8 70 0c 40 00       	mov    $0x400c70,%eax
  400931:	48 89 c7             	mov    %rax,%rdi
  400934:	b8 00 00 00 00       	mov    $0x0,%eax
  400939:	e8 22 fc ff ff       	callq  400560 <printf@plt>
  40093e:	b8 a0 d0 db 01       	mov    $0x1dbd0a0,%eax
  400943:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400947:	48 89 d1             	mov    %rdx,%rcx
  40094a:	ba 00 ec 5e 00       	mov    $0x5eec00,%edx
  40094f:	be 01 00 00 00       	mov    $0x1,%esi
  400954:	48 89 c7             	mov    %rax,%rdi
  400957:	e8 d4 fb ff ff       	callq  400530 <fread@plt>
  40095c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400960:	48 89 c7             	mov    %rax,%rdi
  400963:	e8 d8 fb ff ff       	callq  400540 <fclose@plt>
  400968:	c9                   	leaveq 
  400969:	c3                   	retq   

000000000040096a <writeFile>:
  40096a:	55                   	push   %rbp
  40096b:	48 89 e5             	mov    %rsp,%rbp
  40096e:	48 81 ec 30 76 2f 00 	sub    $0x2f7630,%rsp
  400975:	48 89 bd d8 89 d0 ff 	mov    %rdi,-0x2f7628(%rbp)
  40097c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400983:	00 00 
  400985:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400989:	31 c0                	xor    %eax,%eax
  40098b:	c7 85 ec 89 d0 ff 00 	movl   $0x0,-0x2f7614(%rbp)
  400992:	00 00 00 
  400995:	c7 85 ec 89 d0 ff 00 	movl   $0x0,-0x2f7614(%rbp)
  40099c:	00 00 00 
  40099f:	eb 27                	jmp    4009c8 <writeFile+0x5e>
  4009a1:	8b 85 ec 89 d0 ff    	mov    -0x2f7614(%rbp),%eax
  4009a7:	48 98                	cltq   
  4009a9:	8b 04 85 a0 20 60 00 	mov    0x6020a0(,%rax,4),%eax
  4009b0:	89 c2                	mov    %eax,%edx
  4009b2:	8b 85 ec 89 d0 ff    	mov    -0x2f7614(%rbp),%eax
  4009b8:	48 98                	cltq   
  4009ba:	88 94 05 f0 89 d0 ff 	mov    %dl,-0x2f7610(%rbp,%rax,1)
  4009c1:	83 85 ec 89 d0 ff 01 	addl   $0x1,-0x2f7614(%rbp)
  4009c8:	8b 85 ec 89 d0 ff    	mov    -0x2f7614(%rbp),%eax
  4009ce:	3d ff 75 2f 00       	cmp    $0x2f75ff,%eax
  4009d3:	76 cc                	jbe    4009a1 <writeFile+0x37>
  4009d5:	ba 91 0c 40 00       	mov    $0x400c91,%edx
  4009da:	48 8b 85 d8 89 d0 ff 	mov    -0x2f7628(%rbp),%rax
  4009e1:	48 89 d6             	mov    %rdx,%rsi
  4009e4:	48 89 c7             	mov    %rax,%rdi
  4009e7:	e8 94 fb ff ff       	callq  400580 <fopen@plt>
  4009ec:	48 89 85 e0 89 d0 ff 	mov    %rax,-0x2f7620(%rbp)
  4009f3:	48 83 bd e0 89 d0 ff 	cmpq   $0x0,-0x2f7620(%rbp)
  4009fa:	00 
  4009fb:	75 12                	jne    400a0f <writeFile+0xa5>
  4009fd:	b8 98 0c 40 00       	mov    $0x400c98,%eax
  400a02:	48 89 c7             	mov    %rax,%rdi
  400a05:	b8 00 00 00 00       	mov    $0x0,%eax
  400a0a:	e8 51 fb ff ff       	callq  400560 <printf@plt>
  400a0f:	48 8d 85 f0 89 d0 ff 	lea    -0x2f7610(%rbp),%rax
  400a16:	48 8b 95 e0 89 d0 ff 	mov    -0x2f7620(%rbp),%rdx
  400a1d:	48 89 d1             	mov    %rdx,%rcx
  400a20:	ba 00 76 2f 00       	mov    $0x2f7600,%edx
  400a25:	be 01 00 00 00       	mov    $0x1,%esi
  400a2a:	48 89 c7             	mov    %rax,%rdi
  400a2d:	e8 5e fb ff ff       	callq  400590 <fwrite@plt>
  400a32:	48 8b 85 e0 89 d0 ff 	mov    -0x2f7620(%rbp),%rax
  400a39:	48 89 c7             	mov    %rax,%rdi
  400a3c:	e8 ff fa ff ff       	callq  400540 <fclose@plt>
  400a41:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a45:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400a4c:	00 00 
  400a4e:	74 05                	je     400a55 <writeFile+0xeb>
  400a50:	e8 fb fa ff ff       	callq  400550 <__stack_chk_fail@plt>
  400a55:	c9                   	leaveq 
  400a56:	c3                   	retq   

0000000000400a57 <writeNextYCbCr>:
  400a57:	55                   	push   %rbp
  400a58:	48 89 e5             	mov    %rsp,%rbp
  400a5b:	8b 05 0f 16 20 00    	mov    0x20160f(%rip),%eax        # 602070 <curByte>
  400a61:	83 e8 01             	sub    $0x1,%eax
  400a64:	8b 15 3e b2 fa 01    	mov    0x1fab23e(%rip),%edx        # 23abca8 <y>
  400a6a:	48 98                	cltq   
  400a6c:	89 14 85 a0 20 60 00 	mov    %edx,0x6020a0(,%rax,4)
  400a73:	8b 05 0b 16 20 00    	mov    0x20160b(%rip),%eax        # 602084 <j>
  400a79:	83 e0 03             	and    $0x3,%eax
  400a7c:	85 c0                	test   %eax,%eax
  400a7e:	75 50                	jne    400ad0 <writeNextYCbCr+0x79>
  400a80:	8b 05 ea 15 20 00    	mov    0x2015ea(%rip),%eax        # 602070 <curByte>
  400a86:	83 e8 01             	sub    $0x1,%eax
  400a89:	8d 50 03             	lea    0x3(%rax),%edx
  400a8c:	85 c0                	test   %eax,%eax
  400a8e:	0f 48 c2             	cmovs  %edx,%eax
  400a91:	c1 f8 02             	sar    $0x2,%eax
  400a94:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400a99:	8b 15 ed 15 20 00    	mov    0x2015ed(%rip),%edx        # 60208c <cb>
  400a9f:	48 98                	cltq   
  400aa1:	89 14 85 a0 20 60 00 	mov    %edx,0x6020a0(,%rax,4)
  400aa8:	8b 05 c2 15 20 00    	mov    0x2015c2(%rip),%eax        # 602070 <curByte>
  400aae:	83 e8 01             	sub    $0x1,%eax
  400ab1:	8d 50 03             	lea    0x3(%rax),%edx
  400ab4:	85 c0                	test   %eax,%eax
  400ab6:	0f 48 c2             	cmovs  %edx,%eax
  400ab9:	c1 f8 02             	sar    $0x2,%eax
  400abc:	05 00 8d 27 00       	add    $0x278d00,%eax
  400ac1:	8b 15 c9 15 20 00    	mov    0x2015c9(%rip),%edx        # 602090 <cr>
  400ac7:	48 98                	cltq   
  400ac9:	89 14 85 a0 20 60 00 	mov    %edx,0x6020a0(,%rax,4)
  400ad0:	5d                   	pop    %rbp
  400ad1:	c3                   	retq   

0000000000400ad2 <loadNextRGB>:
  400ad2:	55                   	push   %rbp
  400ad3:	48 89 e5             	mov    %rsp,%rbp
  400ad6:	8b 05 94 15 20 00    	mov    0x201594(%rip),%eax        # 602070 <curByte>
  400adc:	48 98                	cltq   
  400ade:	0f b6 80 a0 d0 db 01 	movzbl 0x1dbd0a0(%rax),%eax
  400ae5:	0f be c0             	movsbl %al,%eax
  400ae8:	89 05 9a 15 20 00    	mov    %eax,0x20159a(%rip)        # 602088 <r>
  400aee:	8b 05 7c 15 20 00    	mov    0x20157c(%rip),%eax        # 602070 <curByte>
  400af4:	05 00 a4 1f 00       	add    $0x1fa400,%eax
  400af9:	48 98                	cltq   
  400afb:	0f b6 80 a0 d0 db 01 	movzbl 0x1dbd0a0(%rax),%eax
  400b02:	0f be c0             	movsbl %al,%eax
  400b05:	89 05 95 b1 fa 01    	mov    %eax,0x1fab195(%rip)        # 23abca0 <g>
  400b0b:	8b 05 5f 15 20 00    	mov    0x20155f(%rip),%eax        # 602070 <curByte>
  400b11:	05 00 48 3f 00       	add    $0x3f4800,%eax
  400b16:	48 98                	cltq   
  400b18:	0f b6 80 a0 d0 db 01 	movzbl 0x1dbd0a0(%rax),%eax
  400b1f:	0f be c0             	movsbl %al,%eax
  400b22:	89 05 58 15 20 00    	mov    %eax,0x201558(%rip)        # 602080 <b>
  400b28:	8b 05 42 15 20 00    	mov    0x201542(%rip),%eax        # 602070 <curByte>
  400b2e:	83 c0 01             	add    $0x1,%eax
  400b31:	89 05 39 15 20 00    	mov    %eax,0x201539(%rip)        # 602070 <curByte>
  400b37:	5d                   	pop    %rbp
  400b38:	c3                   	retq   
  400b39:	90                   	nop
  400b3a:	90                   	nop
  400b3b:	90                   	nop
  400b3c:	90                   	nop
  400b3d:	90                   	nop
  400b3e:	90                   	nop
  400b3f:	90                   	nop

0000000000400b40 <__libc_csu_init>:
  400b40:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400b45:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  400b4a:	48 8d 2d d3 12 20 00 	lea    0x2012d3(%rip),%rbp        # 601e24 <__init_array_end>
  400b51:	4c 8d 25 cc 12 20 00 	lea    0x2012cc(%rip),%r12        # 601e24 <__init_array_end>
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
  400b80:	e8 83 f9 ff ff       	callq  400508 <_init>
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
  400ba4:	75 ea                	jne    400b90 <__libc_csu_init+0x50>
  400ba6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400bab:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400bb0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400bb5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400bba:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400bbf:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400bc4:	48 83 c4 38          	add    $0x38,%rsp
  400bc8:	c3                   	retq   
  400bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400bd0 <__libc_csu_fini>:
  400bd0:	f3 c3                	repz retq 
  400bd2:	90                   	nop
  400bd3:	90                   	nop
  400bd4:	90                   	nop
  400bd5:	90                   	nop
  400bd6:	90                   	nop
  400bd7:	90                   	nop
  400bd8:	90                   	nop
  400bd9:	90                   	nop
  400bda:	90                   	nop
  400bdb:	90                   	nop
  400bdc:	90                   	nop
  400bdd:	90                   	nop
  400bde:	90                   	nop
  400bdf:	90                   	nop

0000000000400be0 <__do_global_ctors_aux>:
  400be0:	55                   	push   %rbp
  400be1:	48 89 e5             	mov    %rsp,%rbp
  400be4:	53                   	push   %rbx
  400be5:	48 83 ec 08          	sub    $0x8,%rsp
  400be9:	48 8b 05 38 12 20 00 	mov    0x201238(%rip),%rax        # 601e28 <__CTOR_LIST__>
  400bf0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400bf4:	74 19                	je     400c0f <__do_global_ctors_aux+0x2f>
  400bf6:	bb 28 1e 60 00       	mov    $0x601e28,%ebx
  400bfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400c00:	48 83 eb 08          	sub    $0x8,%rbx
  400c04:	ff d0                	callq  *%rax
  400c06:	48 8b 03             	mov    (%rbx),%rax
  400c09:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400c0d:	75 f1                	jne    400c00 <__do_global_ctors_aux+0x20>
  400c0f:	48 83 c4 08          	add    $0x8,%rsp
  400c13:	5b                   	pop    %rbx
  400c14:	5d                   	pop    %rbp
  400c15:	c3                   	retq   
  400c16:	90                   	nop
  400c17:	90                   	nop

Disassembly of section .fini:

0000000000400c18 <_fini>:
  400c18:	48 83 ec 08          	sub    $0x8,%rsp
  400c1c:	e8 cf f9 ff ff       	callq  4005f0 <__do_global_dtors_aux>
  400c21:	48 83 c4 08          	add    $0x8,%rsp
  400c25:	c3                   	retq   
