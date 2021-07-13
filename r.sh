#NAME: shaochen ren
 

rm *.o, *.out

echo "Start program."

#C++
g++ -c -g -Wall -m64 -no-pie -o main.o main.cpp -std=c++17

g++ -c -g -Wall -m64 -no-pie -o isinteger.o isinteger.cpp -std=c++17

g++ -c -g -Wall -m64 -no-pie -o display_array.o display_array.cpp -std=c++17

nasm -g -F dwarf -f elf64 -o atolong.o atolong.asm

nasm -g -F dwarf -f elf64 -o reverse.o reverse.asm

#gcc -c -g -Wall -m64 -no-pie -o <c>.o <c>.c -std=c11


nasm -g -F dwarf -f elf64 -o swap.o swap.asm

nasm -g -F dwarf -f elf64 -o manager.o manager.asm

nasm -g -F dwarf -f elf64 -o read_clock.o read_clock.asm

nasm -g -F dwarf -f elf64 -o input_array.o input_array.asm






g++ -m64 -no-pie -o a.out -std=c++17 main.o  manager.o read_clock.o input_array.o atolong.o  swap.o reverse.o isinteger.o display_array.o


./a.out

