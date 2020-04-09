CC = gcc -Wall -Werror -pedantic-errors -g
BASE := matrixTime matrixTime200by200 matrixTime2000by2000
BASE += $(BASE:=ColumnMajor)
BASE_1 := $(BASE:=_1)
EVERY := $(BASE_1)
BASE_2 += $(BASE:=_2)
EVERY += $(BASE_2)
BASE_3 += $(BASE:=_3)
EVERY += $(BASE_3)
EVERY_S := $(EVERY:=.S)

all: $(EVERY) $(EVERY_S)

%_1: %.c
	$(CC) -O1 $< -o $@

%_2: %.c
	$(CC) -O0 $< -o $@

%_3: %.c
	$(CC) -floop-interchange $< -o $@

%_1.S: %.c
	$(CC) -O1 -S $< -o $@

%_2.S: %.c
	$(CC) -O0 -S $< -o $@

%_3.S: %.c
	$(CC) -floop-interchange -S $< -o $@

clean:
	rm -f $(EVERY) $(EVERY_S)

run: $(BASE_1) $(BASE_2) $(BASE_3)
	@echo O1 Optimized
	@for ex in $(BASE_1); do ./$$ex; done
	@echo O0 Optimized
	@for ex in $(BASE_2); do ./$$ex; done
	@echo "floop-interchange" Optimized
	@for ex in $(BASE_3); do ./$$ex; done