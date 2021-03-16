0x1990:::0::Insn: TEST	%EAX,%EAX::
0x1992:::0::Insn: JS	19b9 <s13+0x69>::
0x1994:::0::Insn: CMP	%EAX,%EDI::
0x1996:::0::Insn: JBE	19b9 <s13+0x69>::
0x1998:::0::Insn: MOVL	$0,(%RCX,%RDX,1)::
0x199f:::0::Insn: VMOVSS	(%R10,%RDX,1),%XMM0::
0x19a5:::0::Insn: VCVTSS2SD	%XMM0,%XMM0,%XMM1::
0x19a9:::0::Insn: VCOMISD	%XMM1,%XMM2::
0x19ad:::0::Insn: JBE	19b9 <s13+0x69>::
0x19af:::0::Insn: VDIVSS	(%R9),%XMM0,%XMM0::
0x19b4:::0::Insn: VMOVSS	%XMM0,(%RCX,%RDX,1)::
0x19b9:::0::Insn: INC	%EAX::
0x19bb:::0::Insn: ADD	$0x4,%RDX::
0x19bf:::0::Insn: CMP	%EAX,%ESI::
0x19c1:::0::Insn: JNE	1990 <s13+0x40>::
