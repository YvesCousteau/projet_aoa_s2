_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "DIVSS,",
    offsets = "0,",
    addresses = "0x165a,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSS,",
    offsets = "0,",
    addresses = "0x1646,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "SS",
    opcodes = "MOV,MOVSS,",
    offsets = "0,0,",
    addresses = "0x163f,0x165f,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 4,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
}