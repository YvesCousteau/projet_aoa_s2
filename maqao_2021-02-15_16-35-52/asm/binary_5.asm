0x1568::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:8::Insn: TEST	%EAX,%EAX::
0x156a::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:8::Insn: JS	1595 <s13+0x65>::
0x156c::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:8::Insn: CMP	%EAX,%EDI::
0x156e::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:8::Insn: JBE	1595 <s13+0x65>::
0x1570::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:11::Insn: MOVL	$0,(%RCX,%RDX,1)::
0x1577::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:13::Insn: MOVSS	(%R9,%RDX,1),%XMM0::
0x157d::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:13::Insn: PXOR	%XMM1,%XMM1::
0x1581::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:13::Insn: CVTSS2SD	%XMM0,%XMM1::
0x1585::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:13::Insn: COMISD	%XMM1,%XMM2::
0x1589::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:13::Insn: JBE	1595 <s13+0x65>::
0x158b::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:14::Insn: DIVSS	(%R8),%XMM0::
0x1590::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:14::Insn: MOVSS	%XMM0,(%RCX,%RDX,1)::
0x1595::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:7::Insn: ADD	$0x1,%EAX::
0x1598::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:7::Insn: ADD	$0x4,%RDX::
0x159c::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:7::Insn: CMP	%EAX,%ESI::
0x159e::/home/hugohenrotte/Code/projet_aoa_s2/kernel.c:7::Insn: JNE	1568 <s13+0x38>::
