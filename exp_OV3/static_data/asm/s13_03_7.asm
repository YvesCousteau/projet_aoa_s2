0x1630:::0::Insn: MOV	%EBX,%EAX::
0x1632:::0::Insn: MOV	%R10,%RDX::
0x1635:::0::Insn: NOPL	(%RAX)::
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
0x166c:::0::Insn: CMP	%EAX,%ESI::  (6) 
0x166e:::0::Insn: JNE	1638 <s13+0x38>::  (6) 
0x1670:::0::Insn: ADD	$0x4,%R8::
0x1674:::0::Insn: ADD	%RBP,%RCX::
0x1677:::0::Insn: CMP	%R11,%R8::
0x167a:::0::Insn: JNE	1630 <s13+0x30>::
