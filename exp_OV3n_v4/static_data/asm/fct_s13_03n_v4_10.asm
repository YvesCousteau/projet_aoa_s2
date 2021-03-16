0x1950:::0::Insn: ENDBR64::
0x1954:::0::Insn: TEST	%EDI,%EDI::
0x1956:::0::Insn: JE	19d2 <s13+0x82>::
0x1958:::0::Insn: PUSH	%RBP::
0x1959:::0::Insn: MOV	%EDI,%R11D::
0x195c:::0::Insn: LEA	-0x1(%RDI),%EAX::
0x195f:::0::Insn: PUSH	%RBX::
0x1960:::0::Insn: MOVSXD	%R8D,%RBX::
0x1963:::0::Insn: MOV	%RSI,%R10::
0x1966:::0::Insn: VMOVSD	%XMM0,%XMM0,%XMM2::
0x196a:::0::Insn: MOV	%RDX,%R9::
0x196d:::0::Insn: SAL	$0x2,%R11::
0x1971:::0::Insn: LEA	0x4(%RDX,%RAX,4),%RBP::
0x1976:::0::Insn: SAL	$0x2,%RBX::
0x197a:::0::Insn: LEA	(%R8,%RDI,1),%ESI::
0x197e:::0::Insn: XCHG	%AX,%AX::
0x1980:::0::Insn: MOV	%R8D,%EAX::(11) 
0x1983:::0::Insn: MOV	%RBX,%RDX::(11) 
0x1986:::0::Insn: NOPW	%CS:(%RAX,%RAX,1)::(11) 
0x1990:::0::Insn: TEST	%EAX,%EAX::  (10) 
0x1992:::0::Insn: JS	19b9 <s13+0x69>::  (10) 
0x1994:::0::Insn: CMP	%EAX,%EDI::  (10) 
0x1996:::0::Insn: JBE	19b9 <s13+0x69>::  (10) 
0x1998:::0::Insn: MOVL	$0,(%RCX,%RDX,1)::  (10) 
0x199f:::0::Insn: VMOVSS	(%R10,%RDX,1),%XMM0::  (10) 
0x19a5:::0::Insn: VCVTSS2SD	%XMM0,%XMM0,%XMM1::  (10) 
0x19a9:::0::Insn: VCOMISD	%XMM1,%XMM2::  (10) 
0x19ad:::0::Insn: JBE	19b9 <s13+0x69>::  (10) 
0x19af:::0::Insn: VDIVSS	(%R9),%XMM0,%XMM0::  (10) 
0x19b4:::0::Insn: VMOVSS	%XMM0,(%RCX,%RDX,1)::  (10) 
0x19b9:::0::Insn: INC	%EAX::  (10) 
0x19bb:::0::Insn: ADD	$0x4,%RDX::  (10) 
0x19bf:::0::Insn: CMP	%EAX,%ESI::  (10) 
0x19c1:::0::Insn: JNE	1990 <s13+0x40>::  (10) 
0x19c3:::0::Insn: ADD	$0x4,%R9::(11) 
0x19c7:::0::Insn: ADD	%R11,%RCX::(11) 
0x19ca:::0::Insn: CMP	%RBP,%R9::(11) 
0x19cd:::0::Insn: JNE	1980 <s13+0x30>::(11) 
0x19cf:::0::Insn: POP	%RBX::
0x19d0:::0::Insn: POP	%RBP::
0x19d1:::0::Insn: RET::
0x19d2:::0::Insn: RET::
0x19d3:::0::Insn: NOPW	%CS:(%RAX,%RAX,1)::
0x19dd:::0::Insn: NOPL	(%RAX)::
