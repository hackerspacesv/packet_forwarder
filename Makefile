### Environment constants 

LGW_PATH ?= ./submodules/lora_gateway/libloragw
ARCH ?=
CROSS_COMPILE ?=
export $LGW_PATH

## general build targets

all: libloragw
	$(MAKE) all -e -C mp_pkt_fwd

clean:
	$(MAKE) clean -e -C mp_pkt_fwd

patch_lora_gateway:
	$(MAKE) patch_lora_gateway -e -C ./submodules

libloragw: patch_lora_gateway
	$(MAKE) all -e -C $(LGW_PATH)

### EOF
