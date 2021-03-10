0x1640:::0::Insn: TEST	%EAX,%EAX::
0x1642:::0::Insn: JS	1669 <s13+0x69>::
0x1644:::0::Insn: CMP	%EAX,%EDI::
0x1646:::0::Insn: JBE	1669 <s13+0x69>::
0x1648:::0::Insn: MOVL	$0,(%RCX,%RDX,1)::
0x164f:::0::Insn: VMOVSS	(%R10,%RDX,1),%XMM0::
0x1655:::0::Insn: VCVTSS2SD	%XMM0,%XMM0,%XMM1::
0x1659:::0::Insn: VCOMISD	%XMM1,%XMM2::
0x165d:::0::Insn: JBE	1669 <s13+0x69>::
0x165f:::0::Insn: VDIVSS	(%R9),%XMM0,%XMM0::
0x1664:::0::Insn: VMOVSS	%XMM0,(%RCX,%RDX,1)::
0x1669:::0::Insn: INC	%EAX::
0x166b:::0::Insn: ADD	$0x4,%RDX::
0x166f:::0::Insn: CMP	%EAX,%ESI::
0x1671:::0::Insn: JNE	1640 <s13+0x40>::
