all : cs1 cs2 cs3 cs4

#
cs1 : linux_system.o linux_program.o c_program.o main1.o
	gcc -o cs1 linux_system.o linux_program.o c_program.o main1.o

linux_system.o : linux_system.c
	gcc -Wall -Wextra -c -o linux_system.o linux_system.c

linux_program.o : linux_program.c
	gcc -Wall -Wextra -c -o linux_program.o linux_program.c

c_program.o : c_program.c
	gcc -Wall -Wextra -c -o c_program.o c_program.c

main1.o : main1.c
	gcc -Wall -Wextra -c -o main1.o main1.c

#
cs2 : database.o software.o python.o main2.o
	gcc -o cs2 database.o software.o python.o main2.o

database.o : database.c
	gcc -Wall -Wextra -c -o database.o database.c

software.o : software.c
	gcc -Wall -Wextra -c -o software.o software.c

python.o : python.c
	gcc -Wall -Wextra -c -o python.o python.c

main2.o : main2.c
	gcc -Wall -Wextra -c -o main2.o main2.c

#
cs3 : java_program.o web_program.o computer.o main3.o
	gcc -o cs3 java_program.o web_program.o computer.o main3.o

java_program.o : java_program.c
	gcc -Wall -Wextra -c -o java_program.o java_program.c

web_program.o : web_program.c
	gcc -Wall -Wextra -c -o web_program.o web_program.c

computer.o : computer.c
	gcc -Wall -Wextra -c -o computer.o computer.c

main3.o : main3.c
	gcc -Wall -Wextra -c -o main3.o main3.c

#
cs4 : linux_program.o c_program.o web_program.o software.o python.o main4.o 
	gcc -o cs4 linux_program.o c_program.o web_program.o software.o python.o main4.o


clean :
	rm -rf *.o cs[1-4]




