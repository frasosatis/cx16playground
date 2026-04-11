#
# Simple Makefile for prog8 environment
#
TARGET		:= hello
OUTDIR          := bin
PROG8		:= prog8c
PROG8FLAGS 	:= -target cx16

all: bin/$(TARGET).prg

$(OUTDIR)/%.prg: %.p8
	$(PROG8) $(PROG8FLAGS) $< -out $(OUTDIR)/

.PHONY: clean
clean:
	-rm $(OUTDIR)/$(TARGET).prg
	-rm $(OUTDIR)/$(TARGET).asm
	-rm $(OUTDIR)/$(TARGET).vice-mon-list

.PHONY: run
run: all
	x16emu -run -prg $(OUTDIR)/$(TARGET).prg
