SUBDIRS := hello hellokeys

.PHONY: all clean run

all clean run:
	@for dir in ${SUBDIRS}; do \
		${MAKE} -C $$dir $@ || exit 1; \
	done
