.PHONY: run

OUT_DIR = target

default:
	make $(OUT_DIR)/a.out

main: $(OUT_DIR)/a.out
	./$(OUT_DIR)/a.out

$(OUT_DIR)/a.out: src/main.c
	mkdir -p $(OUT_DIR)
	gcc src/main.c -o $@
