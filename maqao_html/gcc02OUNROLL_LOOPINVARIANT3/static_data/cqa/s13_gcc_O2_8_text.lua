_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "8 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 4 FP arithmetical operations:\n - 4: divide\nThe binary loop is loading 16 bytes (4 single precision FP elements).\nThe binary loop is storing 16 bytes (4 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1b20\n\nInstruction                  | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nMOVSS (%RSI,%RAX,4),%XMM4    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPS %XMM1,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCOMISS %XMM4,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nJA 1b34 <s13+0x384>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOVAPS %XMM4,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nDIVSS %XMM2,%XMM3            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 11      | 3\nMOVSS %XMM3,(%RDX,%RAX,4)    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSS 0x4(%RSI,%RAX,4),%XMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPS %XMM1,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCOMISS %XMM4,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nJA 1b4e <s13+0x39e>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nDIVSS %XMM2,%XMM4            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 11      | 3\nMOVAPS %XMM4,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOVSS %XMM3,0x4(%RDX,%RAX,4) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSS 0x8(%RSI,%RAX,4),%XMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPS %XMM1,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCOMISS %XMM4,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nJA 1b69 <s13+0x3b9>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOVAPS %XMM4,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nDIVSS %XMM2,%XMM3            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 11      | 3\nMOVSS %XMM3,0x8(%RDX,%RAX,4) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSS 0xc(%RSI,%RAX,4),%XMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPS %XMM1,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCOMISS %XMM4,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nJA 1b84 <s13+0x3d4>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nDIVSS %XMM2,%XMM4            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 11      | 3\nMOVAPS %XMM4,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOVSS %XMM3,0xc(%RDX,%RAX,4) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x4,%RAX                | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %EAX,%R10D               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJA 1b20 <s13+0x370>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
        {
          title = "General properties",
          txt = "nb instructions    : 31\nnb uops            : 30\nloop length        : 115\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 7.50 cycles\nfront end            : 7.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 8.00 | 0.50 | 2.67 | 2.67 | 4.00 | 0.50 | 5.00 | 2.67\ncycles | 8.00 | 0.50 | 2.67 | 2.67 | 4.00 | 0.50 | 5.00 | 2.67\n\nCycles executing div or sqrt instructions: 12.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 7.50\nDispatch  : 8.00\nDIV/SQRT  : 12.00\nOverall L1: 12.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all    : 33%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nother  : 50%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all    : 25%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nother  : 31%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 12.00 cycles. At this rate:\n - 2% of peak load performance is reached (1.33 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (1.33 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
      },
      header = {
        "1% of peak computational performance is used (0.33 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 12.00 to 3.00 cycles (4.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 12.00 to 8.00 cycles (1.50x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "8 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 4 FP arithmetical operations:\n - 4: divide\nThe binary loop is loading 16 bytes (4 single precision FP elements).\nThe binary loop is storing 16 bytes (4 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1b20\n\nInstruction                  | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nMOVSS (%RSI,%RAX,4),%XMM4    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPS %XMM1,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCOMISS %XMM4,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nJA 1b34 <s13+0x384>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOVAPS %XMM4,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nDIVSS %XMM2,%XMM3            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 11      | 3\nMOVSS %XMM3,(%RDX,%RAX,4)    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSS 0x4(%RSI,%RAX,4),%XMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPS %XMM1,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCOMISS %XMM4,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nJA 1b4e <s13+0x39e>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nDIVSS %XMM2,%XMM4            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 11      | 3\nMOVAPS %XMM4,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOVSS %XMM3,0x4(%RDX,%RAX,4) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSS 0x8(%RSI,%RAX,4),%XMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPS %XMM1,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCOMISS %XMM4,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nJA 1b69 <s13+0x3b9>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOVAPS %XMM4,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nDIVSS %XMM2,%XMM3            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 11      | 3\nMOVSS %XMM3,0x8(%RDX,%RAX,4) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSS 0xc(%RSI,%RAX,4),%XMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPS %XMM1,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCOMISS %XMM4,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nJA 1b84 <s13+0x3d4>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nDIVSS %XMM2,%XMM4            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 11      | 3\nMOVAPS %XMM4,%XMM3           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOVSS %XMM3,0xc(%RDX,%RAX,4) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x4,%RAX                | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %EAX,%R10D               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJA 1b20 <s13+0x370>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
        {
          title = "General properties",
          txt = "nb instructions    : 31\nnb uops            : 30\nloop length        : 115\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 7.50 cycles\nfront end            : 7.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 8.00 | 0.50 | 2.67 | 2.67 | 4.00 | 0.50 | 5.00 | 2.67\ncycles | 8.00 | 0.50 | 2.67 | 2.67 | 4.00 | 0.50 | 5.00 | 2.67\n\nCycles executing div or sqrt instructions: 12.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 7.50\nDispatch  : 8.00\nDIV/SQRT  : 12.00\nOverall L1: 12.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all    : 33%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nother  : 50%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all    : 25%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nother  : 31%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 12.00 cycles. At this rate:\n - 2% of peak load performance is reached (1.33 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (1.33 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
      },
      header = {
        "1% of peak computational performance is used (0.33 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 12.00 to 3.00 cycles (4.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 12.00 to 8.00 cycles (1.50x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "",
      "Warnings:\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=16\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 16 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 16,
  },
}
