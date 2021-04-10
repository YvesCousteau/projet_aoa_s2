0x17f0:::0::Insn: MOVSS	(%RDI),%XMM2::
0x17f4:::0::Insn: MOVSXD	%R8D,%RAX::
0x17f7:::0::Insn: CMP	%R8D,%EDX::
0x17fa:::0::Insn: JBE	1872 <s13+0xc2>::
0x17fc:::0::Insn: NOPL	(%RAX)::
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
0x1872:::0::Insn: MOVSXD	%EDX,%RAX::
0x1875:::0::Insn: LEA	0x3(%RAX),%RBX::
0x1879:::0::Insn: TEST	%R11D,%R11D::
0x187c:::0::Insn: JE	18a2 <s13+0xf2>::
0x187e:::0::Insn: XCHG	%AX,%AX::
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
0x18a2:::0::Insn: ADD	$0x4,%RDI::
0x18a6:::0::Insn: ADD	%R9,%RCX::
0x18a9:::0::Insn: CMP	%RDI,%R10::
0x18ac:::0::Insn: JNE	17f0 <s13+0x40>::
