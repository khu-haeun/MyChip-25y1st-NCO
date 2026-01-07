#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout/source/nco.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco || exit 1
# /usr/local/share/qflow/scripts/magic_db.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco || exit 1
/usr/local/share/qflow/scripts/magic_drc.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco || exit 1
# /usr/local/share/qflow/scripts/netgen_lvs.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/design/MyChip/2025_1st/NCO/2_Splited_IO/top_layout nco || exit 1
