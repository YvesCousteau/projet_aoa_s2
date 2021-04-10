0x17b0:::0::Insn: ENDBR64::
0x17b4:::0::Insn: MOV	%EDI,%R9D::
0x17b7:::0::Insn: TEST	%R9D,%R9D::
0x17ba:::0::Insn: JE	18b4 <s13+0x104>::
0x17c0:::0::Insn: MOV	%RDX,%RDI::
0x17c3:::0::Insn: MOV	%R9D,%EDX::
0x17c6:::0::Insn: MOV	%R9,%RAX::
0x17c9:::0::Insn: XOR	%R11D,%R11D::
0x17cc:::0::Insn: PUSH	%RBX::
0x17cd:::0::Insn: ADD	$-0x3,%EDX::
0x17d0:::0::Insn: PXOR	%XMM1,%XMM1::
0x17d4:::0::Insn: CVTSD2SS	%XMM0,%XMM0::
0x17d8:::0::Insn: SETB	%R11B::
0x17dc:::0::Insn: SUB	$0x1,%EAX::
0x17df:::0::Insn: SAL	$0x2,%R9::
0x17e3:::0::Insn: LEA	0x4(%RDI,%RAX,4),%R10::
0x17e8:::0::Insn: NOPL	(%RAX,%RAX,1)::
0x17f0:::0::Insn: MOVSS	(%RDI),%XMM2::(6) 
0x17f4:::0::Insn: MOVSXD	%R8D,%RAX::(6) 
0x17f7:::0::Insn: CMP	%R8D,%EDX::(6) 
0x17fa:::0::Insn: JBE	1872 <s13+0xc2>::(6) 
0x17fc:::0::Insn: NOPL	(%RAX)::(6) 
0x1800:::0::Insn: MOVSS	(%RSI,%RAX,4),%XMM4::  (8) 
0x1805:::0::Insn: MOVAPS	%XMM1,%XMM3::  (8) 
0x1808:::0::Insn: COMISS	%XMM4,%XMM0::  (8) 
0x180b:::0::Insn: JA	1814 <s13+0x64>::  (8) 
0x180d:::0::Insn: MOVAPS	%XMM4,%XMM3::  (8) 
0x1810:::0::Insn: DIVSS	%XMM2,%XMM3::  (8) 
0x1814:::0::Insn: MOVSS	%XMM3,(%RCX,%RAX,4)::  (8) 
0x1819:::0::Insn: MOVSS	0x4(%RSI,%RAX,4),%XMM4::  (8) 
0x181f:::0::Insn: MOVAPS	%XMM1,%XMM3::  (8) 
0x1822:::0::Insn: COMISS	%XMM4,%XMM0::  (8) 
0x1825:::0::Insn: JA	182e <s13+0x7e>::  (8) 
0x1827:::0::Insn: DIVSS	%XMM2,%XMM4::  (8) 
0x182b:::0::Insn: MOVAPS	%XMM4,%XMM3::  (8) 
0x182e:::0::Insn: MOVSS	%XMM3,0x4(%RCX,%RAX,4)::  (8) 
0x1834:::0::Insn: MOVSS	0x8(%RSI,%RAX,4),%XMM4::  (8) 
0x183a:::0::Insn: MOVAPS	%XMM1,%XMM3::  (8) 
0x183d:::0::Insn: COMISS	%XMM4,%XMM0::  (8) 
0x1840:::0::Insn: JA	1849 <s13+0x99>::  (8) 
0x1842:::0::Insn: MOVAPS	%XMM4,%XMM3::  (8) 
0x1845:::0::Insn: DIVSS	%XMM2,%XMM3::  (8) 
0x1849:::0::Insn: MOVSS	%XMM3,0x8(%RCX,%RAX,4)::  (8) 
0x184f:::0::Insn: MOVSS	0xc(%RSI,%RAX,4),%XMM4::  (8) 
0x1855:::0::Insn: MOVAPS	%XMM1,%XMM3::  (8) 
0x1858:::0::Insn: COMISS	%XMM4,%XMM0::  (8) 
0x185b:::0::Insn: JA	1864 <s13+0xb4>::  (8) 
0x185d:::0::Insn: DIVSS	%XMM2,%XMM4::  (8) 
0x1861:::0::Insn: MOVAPS	%XMM4,%XMM3::  (8) 
0x1864:::0::Insn: MOVSS	%XMM3,0xc(%RCX,%RAX,4)::  (8) 
0x186a:::0::Insn: ADD	$0x4,%RAX::  (8) 
0x186e:::0::Insn: CMP	%EAX,%EDX::  (8) 
0x1870:::0::Insn: JA	1800 <s13+0x50>::  (8) 
0x1872:::0::Insn: MOVSXD	%EDX,%RAX::(6) 
0x1875:::0::Insn: LEA	0x3(%RAX),%RBX::(6) 
0x1879:::0::Insn: TEST	%R11D,%R11D::(6) 
0x187c:::0::Insn: JE	18a2 <s13+0xf2>::(6) 
0x187e:::0::Insn: XCHG	%AX,%AX::(6) 
0x1880:::0::Insn: MOVSS	(%RSI,%RAX,4),%XMM4::  (7) 
0x1885:::0::Insn: MOVAPS	%XMM1,%XMM3::  (7) 
0x1888:::0::Insn: COMISS	%XMM4,%XMM0::  (7) 
0x188b:::0::Insn: JA	1894 <s13+0xe4>::  (7) 
0x188d:::0::Insn: MOVAPS	%XMM4,%XMM3::  (7) 
0x1890:::0::Insn: DIVSS	%XMM2,%XMM3::  (7) 
0x1894:::0::Insn: MOVSS	%XMM3,(%RCX,%RAX,4)::  (7) 
0x1899:::0::Insn: ADD	$0x1,%RAX::  (7) 
0x189d:::0::Insn: CMP	%RBX,%RAX::  (7) 
0x18a0:::0::Insn: JNE	1880 <s13+0xd0>::  (7) 
0x18a2:::0::Insn: ADD	$0x4,%RDI::(6) 
0x18a6:::0::Insn: ADD	%R9,%RCX::(6) 
0x18a9:::0::Insn: CMP	%RDI,%R10::(6) 
0x18ac:::0::Insn: JNE	17f0 <s13+0x40>::(6) 
0x18b2:::0::Insn: POP	%RBX::
0x18b3:::0::Insn: RET::
0x18b4:::0::Insn: RET::
0x18b5:::0::Insn: NOPW	%CS:(%RAX,%RAX,1)::
0x18bf:::0::Insn: NOP::
