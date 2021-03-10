0x1600:::0::Insn: ENDBR64::
0x1604:::0::Insn: TEST	%EDI,%EDI::
0x1606:::0::Insn: JE	167f <s13+0x7f>::
0x1608:::0::Insn: PUSH	%RBP::
0x1609:::0::Insn: LEA	-0x1(%RDI),%EAX::
0x160c:::0::Insn: MOV	%EDI,%EBP::
0x160e:::0::Insn: MOV	%RSI,%R9::
0x1611:::0::Insn: PUSH	%RBX::
0x1612:::0::Insn: MOV	%R8D,%EBX::
0x1615:::0::Insn: MOVAPD	%XMM0,%XMM2::
0x1619:::0::Insn: MOV	%RDX,%R8::
0x161c:::0::Insn: MOVSXD	%EBX,%R10::
0x161f:::0::Insn: SAL	$0x2,%RBP::
0x1623:::0::Insn: LEA	0x4(%RDX,%RAX,4),%R11::
0x1628:::0::Insn: LEA	(%RDI,%RBX,1),%ESI::
0x162b:::0::Insn: SAL	$0x2,%R10::
0x162f:::0::Insn: NOP::
0x1630:::0::Insn: MOV	%EBX,%EAX::(7) 
0x1632:::0::Insn: MOV	%R10,%RDX::(7) 
0x1635:::0::Insn: NOPL	(%RAX)::(7) 
0x1638:::0::Insn: TEST	%EAX,%EAX::  (6) 
0x163a:::0::Insn: JS	1665 <s13+0x65>::  (6) 
0x163c:::0::Insn: CMP	%EAX,%EDI::  (6) 
0x163e:::0::Insn: JBE	1665 <s13+0x65>::  (6) 
0x1640:::0::Insn: MOVL	$0,(%RCX,%RDX,1)::  (6) 
0x1647:::0::Insn: MOVSS	(%R9,%RDX,1),%XMM0::  (6) 
0x164d:::0::Insn: PXOR	%XMM1,%XMM1::  (6) 
0x1651:::0::Insn: CVTSS2SD	%XMM0,%XMM1::  (6) 
0x1655:::0::Insn: COMISD	%XMM1,%XMM2::  (6) 
0x1659:::0::Insn: JBE	1665 <s13+0x65>::  (6) 
0x165b:::0::Insn: DIVSS	(%R8),%XMM0::  (6) 
0x1660:::0::Insn: MOVSS	%XMM0,(%RCX,%RDX,1)::  (6) 
0x1665:::0::Insn: ADD	$0x1,%EAX::  (6) 
0x1668:::0::Insn: ADD	$0x4,%RDX::  (6) 
0x166c:::0::Insn: CMP	%ESI,%EAX::  (6) 
0x166e:::0::Insn: JNE	1638 <s13+0x38>::  (6) 
0x1670:::0::Insn: ADD	$0x4,%R8::(7) 
0x1674:::0::Insn: ADD	%RBP,%RCX::(7) 
0x1677:::0::Insn: CMP	%R11,%R8::(7) 
0x167a:::0::Insn: JNE	1630 <s13+0x30>::(7) 
0x167c:::0::Insn: POP	%RBX::
0x167d:::0::Insn: POP	%RBP::
0x167e:::0::Insn: RET::
0x167f:::0::Insn: RET::
