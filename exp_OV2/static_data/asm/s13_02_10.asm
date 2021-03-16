0x1988:::0::Insn: TEST	%EAX,%EAX::
0x198a:::0::Insn: JS	19b5 <s13+0x65>::
0x198c:::0::Insn: CMP	%EAX,%EDI::
0x198e:::0::Insn: JBE	19b5 <s13+0x65>::
0x1990:::0::Insn: MOVL	$0,(%RCX,%RDX,1)::
0x1997:::0::Insn: MOVSS	(%R9,%RDX,1),%XMM0::
0x199d:::0::Insn: PXOR	%XMM1,%XMM1::
0x19a1:::0::Insn: CVTSS2SD	%XMM0,%XMM1::
0x19a5:::0::Insn: COMISD	%XMM1,%XMM2::
0x19a9:::0::Insn: JBE	19b5 <s13+0x65>::
0x19ab:::0::Insn: DIVSS	(%R8),%XMM0::
0x19b0:::0::Insn: MOVSS	%XMM0,(%RCX,%RDX,1)::
0x19b5:::0::Insn: ADD	$0x1,%EAX::
0x19b8:::0::Insn: ADD	$0x4,%RDX::
0x19bc:::0::Insn: CMP	%ESI,%EAX::
0x19be:::0::Insn: JNE	1988 <s13+0x38>::
