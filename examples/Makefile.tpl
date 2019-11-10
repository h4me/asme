asm=nasm

main_gcc: code.asm
	$(asm)  -felf64 code.asm
	gcc -Wall -no-pie -o prog code.o 
#	gcc -o prog code.o 
main_ld: code.asm
	$(asm) -felf64 code.asm
	ld -o prog code.o 
