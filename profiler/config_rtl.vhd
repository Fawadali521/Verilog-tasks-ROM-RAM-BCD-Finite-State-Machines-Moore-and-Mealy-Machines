--
-- Filename    : config_rtl.vhd
-- 
-- Designer    : D. K. May
--
-- Description : RTL Configuration

configuration Test_Bench_RTL of test_ringbuf is
  for test_ringbuf_ARCH
    for ring_INST: ringbuf
      use entity work.ringbuf(RTL) ;
    end for ;
  end for;
end Test_Bench_RTL;
