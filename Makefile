CC = gcc -Wall -Werror -pedantic-errors -g

all: matrixTime_1 matrixTime_2 matrixTime_3 matrixTime200by200_1 matrixTime200by200_2 matrixTime200by200_3 matrixTime2000by2000_1 matrixTime2000by2000_2 matrixTime2000by2000_3 matrixTime_1.S matrixTime_2.S matrixTime_3.S matrixTime200by200_1.S matrixTime200by200_2.S matrixTime200by200_3.S matrixTime2000by2000_1.S matrixTime2000by2000_2.S matrixTime2000by2000_3.S 

matrixTime_1:
	$(CC) -O1 matrixTime.c -o matrixTime_1

matrixTime_2:
	$(CC) -O0 matrixTime.c -o matrixTime_2

matrixTime_3:
	$(CC) -floop-interchange matrixTime.c -o matrixTime_3

matrixTime200by200_1:
	$(CC) -O1 matrixTime200by200.c -o matrixTime200by200_1

matrixTime200by200_2:
	$(CC) -O0 matrixTime200by200.c -o matrixTime200by200_2

matrixTime200by200_3:
	$(CC) -floop-interchange matrixTime200by200.c -o matrixTime200by200_3

matrixTime2000by2000_1:
	$(CC) -O1 matrixTime2000by2000.c -o matrixTime2000by2000_1

matrixTime2000by2000_2:
	$(CC) -O0 matrixTime2000by2000.c -o matrixTime2000by2000_2

matrixTime2000by2000_3:
	$(CC) -floop-interchange matrixTime2000by2000.c -o matrixTime2000by2000_3

matrixTime_1.S:
	$(CC) -O1 -S matrixTime.c -o matrixTime_1.S

matrixTime_2.S:
	$(CC) -O0 -S matrixTime.c -o matrixTime_2.S

matrixTime_3.S:
	$(CC) -floop-interchange -S matrixTime.c -o matrixTime_3.S

matrixTime200by200_1.S:
	$(CC) -O1 -S matrixTime200by200.c -o matrixTime200by200_1.S

matrixTime200by200_2.S:
	$(CC) -O0 -S matrixTime200by200.c -o matrixTime200by200_2.S

matrixTime200by200_3.S:
	$(CC) -floop-interchange -S matrixTime200by200.c -o matrixTime200by200_3.S

matrixTime2000by2000_1.S:
	$(CC) -O1 -S matrixTime2000by2000.c -o matrixTime2000by2000_1.S

matrixTime2000by2000_2.S:
	$(CC) -O0 -S matrixTime2000by2000.c -o matrixTime2000by2000_2.S

matrixTime2000by2000_3.S:
	$(CC) -floop-interchange -S matrixTime2000by2000.c -o matrixTime2000by2000_3.S

clean:
	rm -f matrixTime_1 matrixTime_2 matrixTime_3 matrixTime200by200_1 matrixTime200by200_2 matrixTime200by200_3 matrixTime2000by2000_1 matrixTime2000by2000_2 matrixTime2000by2000_3 *.S *~