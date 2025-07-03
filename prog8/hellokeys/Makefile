#
# Simple Makefile for prog8 environment
#
TARGET		:= hellokeys

PROG8		:= prog8c
PROG8FLAGS 	:= -target cx16

all: $(TARGET).prg

%.prg: %.p8
	$(PROG8) $(PROG8FLAGS) $<

.PHONY: clean
clean:
	-rm $(TARGET).prg
	-rm $(TARGET).asm
	-rm $(TARGET).vice-mon-list

.PHONY: run
run: all
	x16emu -run -prg $(TARGET).prg
