#include "etch-helpers.h"

	.file	"memset-ppc6-vsx.S"
	ETCH_SECTION(memset)
	.globl	ETCH_NAME(memset)
	.type	ETCH_NAME(memset), @function
	.p2align 4,,10
ETCH_NAME(memset):
ETCH_LABEL(ENTRY_MEMSET):
	CFI(startproc)
	# Code over here

ETCH_LABEL(EXIT_MEMSET):
	# move 0 to return register
	li 9, 0
	# return to the caller
	blr
	CFI(endproc)
	.size	memset, .-memset
