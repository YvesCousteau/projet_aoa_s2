0x17e0:::0::Insn: MOV	%EBX,%EAX::
0x17e2:::0::Insn: MOV	%R10,%RDX::
0x17e5:::0::Insn: NOPL	(%RAX)::
0x17e8:::0::Insn: TEST	%EAX,%EAX::  (6) 
0x17ea:::0::Insn: JS	1815 <s13+0x65>::  (6) 
0x17ec:::0::Insn: CMP	%EAX,%EDI::  (6) 
0x17ee:::0::Insn: JBE	1815 <s13+0x65>::  (6) 
0x17f0:::0::Insn: MOVL	$0,(%RCX,%RDX,1)::  (6) 
0x17f7:::0::Insn: MOVSS	(%R9,%RDX,1),%XMM0::  (6) 
0x17fd:::0::Insn: PXOR	%XMM1,%XMM1::  (6) 
0x1801:::0::Insn: CVTSS2SD	%XMM0,%XMM1::  (6) 
0x1805:::0::Insn: COMISD	%XMM1,%XMM2::  (6) 
0x1809:::0::Insn: JBE	1815 <s13+0x65>::  (6) 
0x180b:::0::Insn: DIVSS	(%R8),%XMM0::  (6) 
0x1810:::0::Insn: MOVSS	%XMM0,(%RCX,%RDX,1)::  (6) 
0x1815:::0::Insn: ADD	$0x1,%EAX::  (6) 
0x1818:::0::Insn: ADD	$0x4,%RDX::  (6) 
0x181c:::0::Insn: CMP	%ESI,%EAX::  (6) 
0x181e:::0::Insn: JNE	17e8 <s13+0x38>::  (6) 
0x1820:::0::Insn: ADD	$0x4,%R8::
0x1824:::0::Insn: ADD	%RBP,%RCX::
0x1827:::0::Insn: CMP	%R11,%R8::
0x182a:::0::Insn: JNE	17e0 <s13+0x30>::
