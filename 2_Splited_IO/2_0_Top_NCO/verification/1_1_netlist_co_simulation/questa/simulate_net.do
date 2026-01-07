vsim -t ps work.sc_main

run -all

coverage save nco_net_coverage.ucdb

quit -f
