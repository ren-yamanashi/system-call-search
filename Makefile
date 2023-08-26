.PHONY: run

OUT_DIR = target

default:
	make $(OUT_DIR)/main.s

$(OUT_DIR)/main.s: src/main.c
	mkdir -p $(OUT_DIR)
	gcc -S src/main.c -o $@
