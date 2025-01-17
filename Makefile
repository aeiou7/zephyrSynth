GDB_TARGET_REMOTE=$(GDB_IP)
PROJECT_PATH=$(shell pwd)
PROJECT_NAME=zephyrSynth
PROJECT_BRIEF=zephyr rtos based synthesizer
GDB_ELF_FILE = %(PROJECT_PATH)/build/zephyr/zephyr.elf

debug_f411:
	west build -p -b nucleo_f411re $(PROJECT_PATH)/zephyrSynth-skeleton
debug_52840dk:
	west build -p -b nrf52840dk/nrf52840 $(PROJECT_PATH)/zephyrSynth-skeleton
flash: debug_f411
	west flash 
clean:
	rm -rf $(PROJECT_PATH)/build