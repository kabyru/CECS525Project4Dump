#include <time.h>
#include <stdio.h>

#define SIZE 200
int matrix[SIZE][SIZE];

int main()
{
    clock_t start, end;
    int sum = 0;
    double totalInSec = 0.0;
    for (int i = 0; i < SIZE; i++)
    {
        for (int j = 0; j < SIZE; j++)
        {
            matrix[i][j] = i + j;
        }
    }

    start = clock();

    for (int i = 0; i < SIZE; i++)
    {
        for (int j = 0; j < SIZE; j++)
        {
            sum = sum + matrix[i][j];
        }
    }
    end = clock();

    totalInSec = (double) (end - start) / CLOCKS_PER_SEC;
    printf("[Row %dx%d] Time: %f\n",SIZE,SIZE, totalInSec);

    return 0;
}