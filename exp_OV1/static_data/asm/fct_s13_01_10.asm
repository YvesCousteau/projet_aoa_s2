0x15f4:::0::Insn: ENDBR64::
0x15f8:::0::Insn: TEST	%EDI,%EDI::
0x15fa:::0::Insn: JE	1682 <s13+0x8e>::
0x1600:::0::Insn: PUSH	%R12::
0x1602:::0::Insn: PUSH	%RBP::
0x1603:::0::Insn: PUSH	%RBX::
0x1604:::0::Insn: MOV	%RSI,%R10::
0x1607:::0::Insn: MOVAPD	%XMM0,%XMM2::
0x160b:::0::Insn: MOV	%EDI,%EBX::
0x160d:::0::Insn: MOV	%RDX,%R9::
0x1610:::0::Insn: SAL	$0x2,%RBX::
0x1614:::0::Insn: MOV	%RCX,%R11::
0x1617:::0::Insn: LEA	-0x1(%RDI),%EAX::
0x161a:::0::Insn: LEA	0x4(%RDX,%RAX,4),%R12::
0x161f:::0::Insn: MOVSXD	%R8D,%RBP::
0x1622:::0::Insn: SAL	$0x2,%RBP::
0x1626:::0::Insn: LEA	(%R8,%RDI,1),%ECX::
0x162a:::0::Insn: JMP	1672 <s13+0x7e>::
0x162c:::0::Insn: ADD	$0x1,%EAX::  (7) 
0x162f:::0::Insn: ADD	$0x4,%RDX::  (7) 
0x1633:::0::Insn: CMP	%EAX,%ECX::  (7) 
0x1635:::0::Insn: JE	1666 <s13+0x72>::  (7) 
0x1637:::0::Insn: TEST	%EAX,%EAX::  (7) 
0x1639:::0::Insn: JS	162c <s13+0x38>::  (7) 
0x163b:::0::Insn: CMP	%EAX,%EDI::  (7) 
0x163d:::0::Insn: JBE	162c <s13+0x38>::  (7) 
0x163f:::0::Insn: MOVL	$0,(%RSI,%RDX,1)::  (7) 
0x1646:::0::Insn: MOVSS	(%R10,%RDX,1),%XMM0::  (7) 
0x164c:::0::Insn: PXOR	%XMM1,%XMM1::  (7) 
0x1650:::0::Insn: CVTSS2SD	%XMM0,%XMM1::  (7) 
0x1654:::0::Insn: COMISD	%XMM1,%XMM2::  (7) 
0x1658:::0::Insn: JBE	162c <s13+0x38>::  (7) 
0x165a:::0::Insn: DIVSS	(%R9),%XMM0::  (7) 
0x165f:::0::Insn: MOVSS	%XMM0,(%RSI,%RDX,1)::  (7) 
0x1664:::0::Insn: JMP	162c <s13+0x38>::  (7) 
0x1666:::0::Insn: ADD	$0x4,%R9::(6) 
0x166a:::0::Insn: ADD	%RBX,%R11::(6) 
0x166d:::0::Insn: CMP	%R12,%R9::(6) 
0x1670:::0::Insn: JE	167d <s13+0x89>::(6) 
0x1672:::0::Insn: MOV	%R11,%RSI::(6) 
0x1675:::0::Insn: MOV	%R8D,%EAX::(6) 
0x1678:::0::Insn: MOV	%RBP,%RDX::(6) 
0x167b:::0::Insn: JMP	1637 <s13+0x43>::(6) 
0x167d:::0::Insn: POP	%RBX::
0x167e:::0::Insn: POP	%RBP::
0x167f:::0::Insn: POP	%R12::
0x1681:::0::Insn: RET::
0x1682:::0::Insn: RET::
0x1683:::0::Insn: NOPW	%CS:(%RAX,%RAX,1)::
0x168d:::0::Insn: NOPL	(%RAX)::
