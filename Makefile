#testbench
incdir = ../tb
#vcs compile output
tb_name ?= top_tb
#wave related
wave_type := fsdb
wave_path := ./
wave_name := conv
#log save path
log_path := ./log/

#include cmd
INC_CMD = +incdir=$(incdir)

#define .vpd file name
VPD_NAME = +vpdfile+$(tb_name).vpd

#define vcs command
VCS = vcs -full64 \
 	-debug_all \
	-notice \
 	-Mupdate \
 	-sverilog \
	$(novas_args) \
 	$(INC_CMD) \
 	-o $(tb_name) \
	-l $(log_path)vcs.log

#define sim command
SIM = ./$(tb_name)\
 	$(VPD_NAME) \
	-l $(log_path)sim.log \
 	

#make command
all:clean vcs sim wave 

vcs:
	$(VCS) -f ./file.f 

sim:
	$(SIM) +WAVE_PATH=$(wave_path) +WAVE_TYPE=$(wave_type)

wave:
	verdi -sv -f ./file.f  -ssf $(wave_path)$(wave_name).fsdb &

clean:
	@rm -rf ./csrc *.daidir *.log *.vpd *.vdb simv* *.key *race.out*
	@rm -rf *.args vc_hdrs.h glbl.v
	@rm -rf novas.conf novas.rc .vlogansetup.args verdiLog
	@rm -rf AN.DB DVEfiles
	@rm -rf urgReport $(tb_name)


