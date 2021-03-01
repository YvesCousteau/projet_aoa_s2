0x14c9:::0::Insn: ENDBR64::
0x14cd:::0::Insn: TEST	%EDI,%EDI::
0x14cf:::0::Insn: JE	1557 <s13+0x8e>::
0x14d5:::0::Insn: PUSH	%R12::
0x14d7:::0::Insn: PUSH	%RBP::
0x14d8:::0::Insn: PUSH	%RBX::
0x14d9:::0::Insn: MOV	%RSI,%R10::
0x14dc:::0::Insn: MOVAPD	%XMM0,%XMM2::
0x14e0:::0::Insn: MOV	%EDI,%EBX::
0x14e2:::0::Insn: MOV	%RDX,%R9::
0x14e5:::0::Insn: SAL	$0x2,%RBX::
0x14e9:::0::Insn: MOV	%RCX,%R11::
0x14ec:::0::Insn: LEA	-0x1(%RDI),%EAX::
0x14ef:::0::Insn: LEA	0x4(%RDX,%RAX,4),%R12::
0x14f4:::0::Insn: MOVSXD	%R8D,%RBP::
0x14f7:::0::Insn: SAL	$0x2,%RBP::
0x14fb:::0::Insn: LEA	(%R8,%RDI,1),%ECX::
0x14ff:::0::Insn: JMP	1547 <s13+0x7e>::
0x1501:::0::Insn: ADD	$0x1,%EAX::  (6) 
0x1504:::0::Insn: ADD	$0x4,%RDX::  (6) 
0x1508:::0::Insn: CMP	%EAX,%ECX::  (6) 
0x150a:::0::Insn: JE	153b <s13+0x72>::  (6) 
0x150c:::0::Insn: TEST	%EAX,%EAX::  (6) 
0x150e:::0::Insn: JS	1501 <s13+0x38>::  (6) 
0x1510:::0::Insn: CMP	%EAX,%EDI::  (6) 
0x1512:::0::Insn: JBE	1501 <s13+0x38>::  (6) 
0x1514:::0::Insn: MOVL	$0,(%RSI,%RDX,1)::  (6) 
0x151b:::0::Insn: MOVSS	(%R10,%RDX,1),%XMM0::  (6) 
0x1521:::0::Insn: PXOR	%XMM1,%XMM1::  (6) 
0x1525:::0::Insn: CVTSS2SD	%XMM0,%XMM1::  (6) 
0x1529:::0::Insn: COMISD	%XMM1,%XMM2::  (6) 
0x152d:::0::Insn: JBE	1501 <s13+0x38>::  (6) 
0x152f:::0::Insn: DIVSS	(%R9),%XMM0::  (6) 
0x1534:::0::Insn: MOVSS	%XMM0,(%RSI,%RDX,1)::  (6) 
0x1539:::0::Insn: JMP	1501 <s13+0x38>::  (6) 
0x153b:::0::Insn: ADD	$0x4,%R9::(5) 
0x153f:::0::Insn: ADD	%RBX,%R11::(5) 
0x1542:::0::Insn: CMP	%R12,%R9::(5) 
0x1545:::0::Insn: JE	1552 <s13+0x89>::(5) 
0x1547:::0::Insn: MOV	%R11,%RSI::(5) 
0x154a:::0::Insn: MOV	%R8D,%EAX::(5) 
0x154d:::0::Insn: MOV	%RBP,%RDX::(5) 
0x1550:::0::Insn: JMP	150c <s13+0x43>::(5) 
0x1552:::0::Insn: POP	%RBX::
0x1553:::0::Insn: POP	%RBP::
0x1554:::0::Insn: POP	%R12::
0x1556:::0::Insn: RET::
0x1557:::0::Insn: RET::
