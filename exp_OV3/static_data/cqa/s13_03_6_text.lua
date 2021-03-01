_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop does not load or store any data.",
        },
      },
      expert = {
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1560\n\nInstruction         | Nb FU | P0   | P1   | P2 | P3 | P4 | P5   | P6   | P7 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------\nMOV %EBX,%EAX       | 1     | 0    | 0    | 0  | 0  | 0  | 0    | 0    | 0  | 0       | 0.25\nMOV %R10,%RDX       | 1     | 0    | 0    | 0  | 0  | 0  | 0    | 0    | 0  | 0       | 0.25\nNOPL (%RAX)         | 1     | 0    | 0    | 0  | 0  | 0  | 0    | 0    | 0  | 0       | 0.25\nADD $0x4,%R8        | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nADD %RBP,%RCX       | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nCMP %R11,%R8        | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nJNE 1560 <s13+0x30> | 1     | 0.50 | 0    | 0  | 0  | 0  | 0    | 0.50 | 0  | 0       | 0.50-1\n",
        },
        {
          title = "General properties",
          txt = "nb instructions    : 7\nnb uops            : 6\nloop length        : 20\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 1.50 cycles\nfront end            : 1.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 0.75 | 0.75 | 0.00 | 0.00 | 0.00 | 0.75 | 0.75 | 0.00\ncycles | 0.75 | 0.75 | 0.00 | 0.00 | 0.00 | 0.75 | 0.75 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 1.50\nDispatch  : 0.75\nData deps.: 1.00\nOverall L1: 1.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nother  : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all    : 25%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nother  : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 1.50 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 1.50 to 0.75 cycles (2.00x speedup).\n",
        },
      },
      header = {
        "Warnings:\nThis path is accessible from 4 CFG paths (including child blocks)\n",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 1.50 to 0.37 cycles (4.00x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
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
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop does not load or store any data.",
        },
      },
      expert = {
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1560\n\nInstruction         | Nb FU | P0   | P1   | P2 | P3 | P4 | P5   | P6   | P7 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------\nMOV %EBX,%EAX       | 1     | 0    | 0    | 0  | 0  | 0  | 0    | 0    | 0  | 0       | 0.25\nMOV %R10,%RDX       | 1     | 0    | 0    | 0  | 0  | 0  | 0    | 0    | 0  | 0       | 0.25\nNOPL (%RAX)         | 1     | 0    | 0    | 0  | 0  | 0  | 0    | 0    | 0  | 0       | 0.25\nADD $0x4,%R8        | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nADD %RBP,%RCX       | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nCMP %R11,%R8        | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nJNE 1560 <s13+0x30> | 1     | 0.50 | 0    | 0  | 0  | 0  | 0    | 0.50 | 0  | 0       | 0.50-1\n",
        },
        {
          title = "General properties",
          txt = "nb instructions    : 7\nnb uops            : 6\nloop length        : 20\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 1.50 cycles\nfront end            : 1.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 0.75 | 0.75 | 0.00 | 0.00 | 0.00 | 0.75 | 0.75 | 0.00\ncycles | 0.75 | 0.75 | 0.00 | 0.00 | 0.00 | 0.75 | 0.75 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 1.50\nDispatch  : 0.75\nData deps.: 1.00\nOverall L1: 1.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nother  : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all    : 25%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nother  : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 1.50 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 1.50 to 0.75 cycles (2.00x speedup).\n",
        },
      },
      header = {
        "Warnings:\nThis path is accessible from 4 CFG paths (including child blocks)\n",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 1.50 to 0.37 cycles (4.00x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "",
      "Warnings:\nNon-innermost loop: analyzing only self part (ignoring child loops).",
      "This loop has 4 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 4,
  },
}
