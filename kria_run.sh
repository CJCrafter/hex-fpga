g++-13 -I/usr/lib/vitis_hls -DHLS_NO_XIL_FPO_LIB -O3 host.cpp -o host
sudo fpgautil -b bitstream.bit
./host