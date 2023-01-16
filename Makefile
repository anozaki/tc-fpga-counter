# I don't really want to write a custom Makefile but this does make thing easier to get going.
#
# using tool from: https://github.com/YosysHQ/oss-cad-suite-build

BUILD_DIR = build

PROJECT = count
NEXTPNR_OPTS = --pcf-allow-unconstrained --opt-timing
FPGA_TYPE = hx8k
FPGA_PKG = cb132
PCF = src/resources/alchitrycu.pcf

SRC_V   := $(wildcard src/rtl/$(PROJECT)/builtin_components/*.v) $(wildcard src/rtl/$(PROJECT)/*.v)  $(wildcard src/rtl/$(PROJECT)/custom_components/LED/*.v)
SRC_CPP := $(wildcard src/test/*.cpp)

.PHONY: all
all:  build/$(PROJECT).bin

.PHONY: build
build: build/$(PROJECT).json

build/$(PROJECT).json: $(SRC_V)
	mkdir -p build
	yosys -ql $(subst .json,,$@)-yosys.log -p 'synth_ice40 -top top -json $@' $(SRC_V) 

build/$(PROJECT).asc: build/$(PROJECT).json
	nextpnr-ice40 -ql $(subst .asc,,$@)-nextpnr.log ${NEXTPNR_OPTS} --${FPGA_TYPE} --package ${FPGA_PKG} --json $< --pcf ${PCF} --asc $@

.PHONY: nextpnr
nextpnr: build/$(PROJECT).json
	nextpnr-ice40 --gui ${NEXTPNR_OPTS} --${FPGA_TYPE} --package ${FPGA_PKG} --json $< --pcf ${PCF}

$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.asc
	icepack $< $@

.PHONY: verilator
verilator: $(SRC_V) $(SRC_CPP)
	verilator -cc $(SRC_V) --top-module Count -Wno-WIDTH -Wno-SELRANGE -O3 --x-assign fast --x-initial fast --noassert --trace --exe $(SRC_CPP)
	make -C obj_dir -f VCount.mk VCount
	./obj_dir/VCount
	gtkwave ./waveform.vcd

flash: $(BUILD_DIR)/$(PROJECT).bin
	iceprog $<

clean:
	rm -rf build obj_dir