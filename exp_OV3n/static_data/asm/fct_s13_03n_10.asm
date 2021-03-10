0x1600:::0::Insn: ENDBR64::
0x1604:::0::Insn: TEST	%EDI,%EDI::
0x1606:::0::Insn: JE	1682 <s13+0x82>::
0x1608:::0::Insn: PUSH	%RBP::
0x1609:::0::Insn: MOV	%EDI,%R11D::
0x160c:::0::Insn: LEA	-0x1(%RDI),%EAX::
0x160f:::0::Insn: PUSH	%RBX::
0x1610:::0::Insn: MOVSXD	%R8D,%RBX::
0x1613:::0::Insn: MOV	%RSI,%R10::
0x1616:::0::Insn: VMOVSD	%XMM0,%XMM0,%XMM2::
0x161a:::0::Insn: MOV	%RDX,%R9::
0x161d:::0::Insn: SAL	$0x2,%R11::
0x1621:::0::Insn: LEA	0x4(%RDX,%RAX,4),%RBP::
0x1626:::0::Insn: SAL	$0x2,%RBX::
0x162a:::0::Insn: LEA	(%R8,%RDI,1),%ESI::
0x162e:::0::Insn: XCHG	%AX,%AX::
0x1630:::0::Insn: MOV	%R8D,%EAX::(7) 
0x1633:::0::Insn: MOV	%RBX,%RDX::(7) 
0x1636:::0::Insn: NOPW	%CS:(%RAX,%RAX,1)::(7) 
0x1640:::0::Insn: TEST	%EAX,%EAX::  (6) 
0x1642:::0::Insn: JS	1669 <s13+0x69>::  (6) 
0x1644:::0::Insn: CMP	%EAX,%EDI::  (6) 
0x1646:::0::Insn: JBE	1669 <s13+0x69>::  (6) 
0x1648:::0::Insn: MOVL	$0,(%RCX,%RDX,1)::  (6) 
0x164f:::0::Insn: VMOVSS	(%R10,%RDX,1),%XMM0::  (6) 
0x1655:::0::Insn: VCVTSS2SD	%XMM0,%XMM0,%XMM1::  (6) 
0x1659:::0::Insn: VCOMISD	%XMM1,%XMM2::  (6) 
0x165d:::0::Insn: JBE	1669 <s13+0x69>::  (6) 
0x165f:::0::Insn: VDIVSS	(%R9),%XMM0,%XMM0::  (6) 
0x1664:::0::Insn: VMOVSS	%XMM0,(%RCX,%RDX,1)::  (6) 
0x1669:::0::Insn: INC	%EAX::  (6) 
0x166b:::0::Insn: ADD	$0x4,%RDX::  (6) 
0x166f:::0::Insn: CMP	%EAX,%ESI::  (6) 
0x1671:::0::Insn: JNE	1640 <s13+0x40>::  (6) 
0x1673:::0::Insn: ADD	$0x4,%R9::(7) 
0x1677:::0::Insn: ADD	%R11,%RCX::(7) 
0x167a:::0::Insn: CMP	%RBP,%R9::(7) 
0x167d:::0::Insn: JNE	1630 <s13+0x30>::(7) 
0x167f:::0::Insn: POP	%RBX::
0x1680:::0::Insn: POP	%RBP::
0x1681:::0::Insn: RET::
0x1682:::0::Insn: RET::
0x1683:::0::Insn: NOPW	%CS:(%RAX,%RAX,1)::
0x168d:::0::Insn: NOPL	(%RAX)::
