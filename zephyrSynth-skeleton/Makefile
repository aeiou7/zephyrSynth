GDB_TARGET_REMOTE=$(GDB_IP)
PROJECT_PATH=$(shell pwd)
PROJECT_NAME=zephyrSynth
PROJECT_BRIEF=zephyr rtos based synthesizer
GDB_ELF_FILE = %(PROJECT_PATH)/build/zephyr/zephyr.elf

debug_f411:
	west build -b nucleo_f411re $(PROJECT_PATH)
debug_52840dk:
	west build -b nrf52840dk/nrf52840 $(PROJECT_PATH)
flash: debug_f411
	west flash -f openocd_flash.cfg -c "program $(PROJECT_PATH)/build/zephyr/zephyr.elf verify reset"
clean:
	rm -rf $(PROJECT_PATH)/build