global loader			; the entry symbol for ELF

MAGIC_NUMBER equ 0x1BADB002	; define the magic number constant
FLAGS	     equ 0x0		; multiboot flags
CHECKSUM     equ -MAGIC_NUMBER	; calculate the checksum

section .text:			; start of the text (code) section
align 4				; the code must be 4 bytes aligned
	dd MAGIC_NUMBER		; write the magc number to machine code
	dd FLAGS		; the flags
	dd CHECKSUM		; and the checksum

loader:				; the loader label
	mov eax, 0xCAFEBABE	; place num into eax register
.loop:
	jmp .loop		; loop forever
