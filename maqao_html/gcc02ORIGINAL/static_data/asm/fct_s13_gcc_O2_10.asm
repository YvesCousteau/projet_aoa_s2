0x17b0:::0::Insn: ENDBR64::
0x17b4:::0::Insn: TEST	%EDI,%EDI::
0x17b6:::0::Insn: JE	182f <s13+0x7f>::
0x17b8:::0::Insn: PUSH	%RBP::
0x17b9:::0::Insn: LEA	-0x1(%RDI),%EAX::
0x17bc:::0::Insn: MOV	%EDI,%EBP::
0x17be:::0::Insn: MOV	%RSI,%R9::
0x17c1:::0::Insn: PUSH	%RBX::
0x17c2:::0::Insn: MOV	%R8D,%EBX::
0x17c5:::0::Insn: MOVAPD	%XMM0,%XMM2::
0x17c9:::0::Insn: MOV	%RDX,%R8::
0x17cc:::0::Insn: MOVSXD	%EBX,%R10::
0x17cf:::0::Insn: SAL	$0x2,%RBP::
0x17d3:::0::Insn: LEA	0x4(%RDX,%RAX,4),%R11::
0x17d8:::0::Insn: LEA	(%RDI,%RBX,1),%ESI::
0x17db:::0::Insn: SAL	$0x2,%R10::
0x17df:::0::Insn: NOP::
0x17e0:::0::Insn: MOV	%EBX,%EAX::(7) 
0x17e2:::0::Insn: MOV	%R10,%RDX::(7) 
0x17e5:::0::Insn: NOPL	(%RAX)::(7) 
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
0x1820:::0::Insn: ADD	$0x4,%R8::(7) 
0x1824:::0::Insn: ADD	%RBP,%RCX::(7) 
0x1827:::0::Insn: CMP	%R11,%R8::(7) 
0x182a:::0::Insn: JNE	17e0 <s13+0x30>::(7) 
0x182c:::0::Insn: POP	%RBX::
0x182d:::0::Insn: POP	%RBP::
0x182e:::0::Insn: RET::
0x182f:::0::Insn: RET::
