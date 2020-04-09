#include <time.h>
#include <stdio.h>

int main()
{
    clock_t start_t, end_t, total_t;
    int sum = 0;

    int matrix[20][20];
    for (int i = 0; i < 20; i++)
    {
        for (int j = 0; j < 20; j++)
        {
            matrix[i][j] = i + j;
        }
    }

    start_t = clock();
    printf("Starting of the program, start_t = %ld\n", start_t);

    //Row major, which means i then j
    for (int i = 0; i < 20; i++)
    {
        for (int j = 0; j < 20; j++)
        {
            sum = sum + matrix[i][j];
        }
    }
    end_t = clock();
    print("End of the big loop, end_t = %ld\n", end_t);

    total_t = (double) (end_t = start_t) / CLOCKS_PER_SEC;
    printf("Total time taken by CPU: %f\n", total_t);
    printf("Computed sum: %d\n",sum);
    printf("Exiting program...\n");

    return(0);
}