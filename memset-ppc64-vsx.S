#include "etch-helpers.h"

	.file	"memset-ppc64-vsx.S"
	ETCH_SECTION(memset)
	.globl	ETCH_NAME(memset)
	.type	ETCH_NAME(memset), @function
	.p2align 4,,10
ETCH_NAME(memset):
ETCH_LABEL(ENTRY_MEMSET):
	CFI(startproc)
	# Code over here
	# arguments are:
	# ptr = r3
	# char = r4
	# size = r5
	mr 10, 5
ETCH_LABEL(LOOP_START):
	cmplwi 10, 0
	beq ETCH_LABEL(DONE)
	stbx 4, 10, 3
	subi 10, 10, 1
	b ETCH_LABEL(LOOP_START)

ETCH_LABEL(DONE):
	b ETCH_LABEL(EXIT_MEMSET)

ETCH_LABEL(EXIT_MEMSET):
	# move 0 to return register
	li 9, 0
	# return to the caller
	blr
	CFI(endproc)
	.size	memset, .-memset
