# CMake generated Testfile for 
# Source directory: /home/duda/Downloads/crypto/schemes/sdith/SDitH-v2/Optimized_Implementation/sdith_cat5_short
# Build directory: /home/duda/Downloads/crypto/schemes/sdith/SDitH-v2/Optimized_Implementation/sdith_cat5_short/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(bench_sdith "bench_sdith")
set_tests_properties(bench_sdith PROPERTIES  _BACKTRACE_TRIPLES "/home/duda/Downloads/crypto/schemes/sdith/SDitH-v2/Optimized_Implementation/sdith_cat5_short/CMakeLists.txt;126;add_test;/home/duda/Downloads/crypto/schemes/sdith/SDitH-v2/Optimized_Implementation/sdith_cat5_short/CMakeLists.txt;0;")
subdirs("lib/sha3")
subdirs("lib/aes")
subdirs("generator")
