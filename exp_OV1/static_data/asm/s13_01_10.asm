0x1998:::0::Insn: MOV	-0x18(%RBP),%ECX::
0x199b:::0::Insn: MOV	-0x10(%RBP),%EDX::
0x199e:::0::Insn: ADD	%ECX,%EDX::
0x19a0:::0::Insn: TEST	%EDX,%EDX::
0x19a2:::0::Insn: JS	1a81 <s13+0x139>::
0x19a8:::0::Insn: MOV	-0x18(%RBP),%ECX::
0x19ab:::0::Insn: MOV	-0x10(%RBP),%EDX::
0x19ae:::0::Insn: ADD	%ECX,%EDX::
0x19b0:::0::Insn: CMP	%EDX,-0x14(%RBP)::
0x19b3:::0::Insn: JBE	1a81 <s13+0x139>::
0x19b9:::0::Insn: MOV	-0xc(%RBP),%EDX::
0x19bc:::0::Insn: MOVSXD	%EDX,%RDX::
0x19bf:::0::Insn: MOV	%EAX,%ECX::
0x19c1:::0::Insn: IMUL	%RCX,%RDX::
0x19c5:::0::Insn: LEA	(,%RDX,4),%RCX::
0x19cd:::0::Insn: MOV	-0x30(%RBP),%RDX::
0x19d1:::0::Insn: ADD	%RDX,%RCX::
0x19d4:::0::Insn: MOV	-0x18(%RBP),%ESI::
0x19d7:::0::Insn: MOV	-0x10(%RBP),%EDX::
0x19da:::0::Insn: ADD	%ESI,%EDX::
0x19dc:::0::Insn: MOVSXD	%EDX,%RDX::
0x19df:::0::Insn: PXOR	%XMM0,%XMM0::
0x19e3:::0::Insn: MOVSS	%XMM0,(%RCX,%RDX,4)::
0x19e8:::0::Insn: MOV	-0x18(%RBP),%ECX::
0x19eb:::0::Insn: MOV	-0x10(%RBP),%EDX::
0x19ee:::0::Insn: ADD	%ECX,%EDX::
0x19f0:::0::Insn: MOVSXD	%EDX,%RDX::
0x19f3:::0::Insn: LEA	(,%RDX,4),%RCX::
0x19fb:::0::Insn: MOV	-0x20(%RBP),%RDX::
0x19ff:::0::Insn: ADD	%RCX,%RDX::
0x1a02:::0::Insn: MOVSS	(%RDX),%XMM0::
0x1a06:::0::Insn: PXOR	%XMM1,%XMM1::
0x1a0a:::0::Insn: CVTSS2SD	%XMM0,%XMM1::
0x1a0e:::0::Insn: MOVSD	-0x38(%RBP),%XMM0::
0x1a13:::0::Insn: COMISD	%XMM1,%XMM0::
0x1a17:::0::Insn: JBE	1a82 <s13+0x13a>::
0x1a19:::0::Insn: MOV	-0x18(%RBP),%ECX::
0x1a1c:::0::Insn: MOV	-0x10(%RBP),%EDX::
0x1a1f:::0::Insn: ADD	%ECX,%EDX::
0x1a21:::0::Insn: MOVSXD	%EDX,%RDX::
0x1a24:::0::Insn: LEA	(,%RDX,4),%RCX::
0x1a2c:::0::Insn: MOV	-0x20(%RBP),%RDX::
0x1a30:::0::Insn: ADD	%RCX,%RDX::
0x1a33:::0::Insn: MOVSS	(%RDX),%XMM0::
0x1a37:::0::Insn: MOV	-0xc(%RBP),%EDX::
0x1a3a:::0::Insn: MOVSXD	%EDX,%RDX::
0x1a3d:::0::Insn: LEA	(,%RDX,4),%RCX::
0x1a45:::0::Insn: MOV	-0x28(%RBP),%RDX::
0x1a49:::0::Insn: ADD	%RCX,%RDX::
0x1a4c:::0::Insn: MOVSS	(%RDX),%XMM1::
0x1a50:::0::Insn: MOV	-0xc(%RBP),%EDX::
0x1a53:::0::Insn: MOVSXD	%EDX,%RDX::
0x1a56:::0::Insn: MOV	%EAX,%ECX::
0x1a58:::0::Insn: IMUL	%RCX,%RDX::
0x1a5c:::0::Insn: LEA	(,%RDX,4),%RCX::
0x1a64:::0::Insn: MOV	-0x30(%RBP),%RDX::
0x1a68:::0::Insn: ADD	%RDX,%RCX::
0x1a6b:::0::Insn: MOV	-0x18(%RBP),%ESI::
0x1a6e:::0::Insn: MOV	-0x10(%RBP),%EDX::
0x1a71:::0::Insn: ADD	%ESI,%EDX::
0x1a73:::0::Insn: DIVSS	%XMM1,%XMM0::
0x1a77:::0::Insn: MOVSXD	%EDX,%RDX::
0x1a7a:::0::Insn: MOVSS	%XMM0,(%RCX,%RDX,4)::
0x1a7f:::0::Insn: JMP	1a82 <s13+0x13a>::
0x1a81:::0::Insn: NOP::
0x1a82:::0::Insn: ADDL	$0x1,-0x10(%RBP)::
0x1a86:::0::Insn: MOV	-0x10(%RBP),%EDX::
0x1a89:::0::Insn: CMP	%EDX,-0x14(%RBP)::
0x1a8c:::0::Insn: JA	1998 <s13+0x50>::