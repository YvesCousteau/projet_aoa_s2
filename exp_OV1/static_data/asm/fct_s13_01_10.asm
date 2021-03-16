0x1948:::0::Insn: ENDBR64::
0x194c:::0::Insn: PUSH	%RBP::
0x194d:::0::Insn: MOV	%RSP,%RBP::
0x1950:::0::Insn: MOV	%EDI,-0x14(%RBP)::
0x1953:::0::Insn: MOV	%RSI,-0x20(%RBP)::
0x1957:::0::Insn: MOV	%RDX,-0x28(%RBP)::
0x195b:::0::Insn: MOV	%RCX,-0x30(%RBP)::
0x195f:::0::Insn: MOV	%R8D,-0x18(%RBP)::
0x1963:::0::Insn: MOVSD	%XMM0,-0x38(%RBP)::
0x1968:::0::Insn: MOV	-0x14(%RBP),%EAX::
0x196b:::0::Insn: MOV	%EAX,%EDX::
0x196d:::0::Insn: SUB	$0x1,%RDX::
0x1971:::0::Insn: MOV	%RDX,-0x8(%RBP)::
0x1975:::0::Insn: MOV	%EAX,%EDX::
0x1977:::0::Insn: MOV	%RDX,%R10::
0x197a:::0::Insn: MOV	$0,%R11D::
0x1980:::0::Insn: MOVL	$0,-0xc(%RBP)::
0x1987:::0::Insn: JMP	1a96 <s13+0x14e>::
0x198c:::0::Insn: MOVL	$0,-0x10(%RBP)::(11) 
0x1993:::0::Insn: JMP	1a86 <s13+0x13e>::(11) 
0x1998:::0::Insn: MOV	-0x18(%RBP),%ECX::  (10) 
0x199b:::0::Insn: MOV	-0x10(%RBP),%EDX::  (10) 
0x199e:::0::Insn: ADD	%ECX,%EDX::  (10) 
0x19a0:::0::Insn: TEST	%EDX,%EDX::  (10) 
0x19a2:::0::Insn: JS	1a81 <s13+0x139>::  (10) 
0x19a8:::0::Insn: MOV	-0x18(%RBP),%ECX::  (10) 
0x19ab:::0::Insn: MOV	-0x10(%RBP),%EDX::  (10) 
0x19ae:::0::Insn: ADD	%ECX,%EDX::  (10) 
0x19b0:::0::Insn: CMP	%EDX,-0x14(%RBP)::  (10) 
0x19b3:::0::Insn: JBE	1a81 <s13+0x139>::  (10) 
0x19b9:::0::Insn: MOV	-0xc(%RBP),%EDX::  (10) 
0x19bc:::0::Insn: MOVSXD	%EDX,%RDX::  (10) 
0x19bf:::0::Insn: MOV	%EAX,%ECX::  (10) 
0x19c1:::0::Insn: IMUL	%RCX,%RDX::  (10) 
0x19c5:::0::Insn: LEA	(,%RDX,4),%RCX::  (10) 
0x19cd:::0::Insn: MOV	-0x30(%RBP),%RDX::  (10) 
0x19d1:::0::Insn: ADD	%RDX,%RCX::  (10) 
0x19d4:::0::Insn: MOV	-0x18(%RBP),%ESI::  (10) 
0x19d7:::0::Insn: MOV	-0x10(%RBP),%EDX::  (10) 
0x19da:::0::Insn: ADD	%ESI,%EDX::  (10) 
0x19dc:::0::Insn: MOVSXD	%EDX,%RDX::  (10) 
0x19df:::0::Insn: PXOR	%XMM0,%XMM0::  (10) 
0x19e3:::0::Insn: MOVSS	%XMM0,(%RCX,%RDX,4)::  (10) 
0x19e8:::0::Insn: MOV	-0x18(%RBP),%ECX::  (10) 
0x19eb:::0::Insn: MOV	-0x10(%RBP),%EDX::  (10) 
0x19ee:::0::Insn: ADD	%ECX,%EDX::  (10) 
0x19f0:::0::Insn: MOVSXD	%EDX,%RDX::  (10) 
0x19f3:::0::Insn: LEA	(,%RDX,4),%RCX::  (10) 
0x19fb:::0::Insn: MOV	-0x20(%RBP),%RDX::  (10) 
0x19ff:::0::Insn: ADD	%RCX,%RDX::  (10) 
0x1a02:::0::Insn: MOVSS	(%RDX),%XMM0::  (10) 
0x1a06:::0::Insn: PXOR	%XMM1,%XMM1::  (10) 
0x1a0a:::0::Insn: CVTSS2SD	%XMM0,%XMM1::  (10) 
0x1a0e:::0::Insn: MOVSD	-0x38(%RBP),%XMM0::  (10) 
0x1a13:::0::Insn: COMISD	%XMM1,%XMM0::  (10) 
0x1a17:::0::Insn: JBE	1a82 <s13+0x13a>::  (10) 
0x1a19:::0::Insn: MOV	-0x18(%RBP),%ECX::  (10) 
0x1a1c:::0::Insn: MOV	-0x10(%RBP),%EDX::  (10) 
0x1a1f:::0::Insn: ADD	%ECX,%EDX::  (10) 
0x1a21:::0::Insn: MOVSXD	%EDX,%RDX::  (10) 
0x1a24:::0::Insn: LEA	(,%RDX,4),%RCX::  (10) 
0x1a2c:::0::Insn: MOV	-0x20(%RBP),%RDX::  (10) 
0x1a30:::0::Insn: ADD	%RCX,%RDX::  (10) 
0x1a33:::0::Insn: MOVSS	(%RDX),%XMM0::  (10) 
0x1a37:::0::Insn: MOV	-0xc(%RBP),%EDX::  (10) 
0x1a3a:::0::Insn: MOVSXD	%EDX,%RDX::  (10) 
0x1a3d:::0::Insn: LEA	(,%RDX,4),%RCX::  (10) 
0x1a45:::0::Insn: MOV	-0x28(%RBP),%RDX::  (10) 
0x1a49:::0::Insn: ADD	%RCX,%RDX::  (10) 
0x1a4c:::0::Insn: MOVSS	(%RDX),%XMM1::  (10) 
0x1a50:::0::Insn: MOV	-0xc(%RBP),%EDX::  (10) 
0x1a53:::0::Insn: MOVSXD	%EDX,%RDX::  (10) 
0x1a56:::0::Insn: MOV	%EAX,%ECX::  (10) 
0x1a58:::0::Insn: IMUL	%RCX,%RDX::  (10) 
0x1a5c:::0::Insn: LEA	(,%RDX,4),%RCX::  (10) 
0x1a64:::0::Insn: MOV	-0x30(%RBP),%RDX::  (10) 
0x1a68:::0::Insn: ADD	%RDX,%RCX::  (10) 
0x1a6b:::0::Insn: MOV	-0x18(%RBP),%ESI::  (10) 
0x1a6e:::0::Insn: MOV	-0x10(%RBP),%EDX::  (10) 
0x1a71:::0::Insn: ADD	%ESI,%EDX::  (10) 
0x1a73:::0::Insn: DIVSS	%XMM1,%XMM0::  (10) 
0x1a77:::0::Insn: MOVSXD	%EDX,%RDX::  (10) 
0x1a7a:::0::Insn: MOVSS	%XMM0,(%RCX,%RDX,4)::  (10) 
0x1a7f:::0::Insn: JMP	1a82 <s13+0x13a>::  (10) 
0x1a81:::0::Insn: NOP::  (10) 
0x1a82:::0::Insn: ADDL	$0x1,-0x10(%RBP)::  (10) 
0x1a86:::0::Insn: MOV	-0x10(%RBP),%EDX::  (10) 
0x1a89:::0::Insn: CMP	%EDX,-0x14(%RBP)::  (10) 
0x1a8c:::0::Insn: JA	1998 <s13+0x50>::  (10) 
0x1a92:::0::Insn: ADDL	$0x1,-0xc(%RBP)::(11) 
0x1a96:::0::Insn: MOV	-0xc(%RBP),%EDX::(11) 
0x1a99:::0::Insn: CMP	%EDX,-0x14(%RBP)::(11) 
0x1a9c:::0::Insn: JA	198c <s13+0x44>::(11) 
0x1aa2:::0::Insn: NOP::
0x1aa3:::0::Insn: NOP::
0x1aa4:::0::Insn: POP	%RBP::
0x1aa5:::0::Insn: RET::
0x1aa6:::0::Insn: NOPW	%CS:(%RAX,%RAX,1)::
