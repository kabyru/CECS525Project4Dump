#include <time.h>
#include <stdio.h>

#define MOD 4
#define SIZE 20
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

	for(int jstart = 0; jstart < MOD; ++jstart)
	{	
		for(int istart = 0; istart < MOD; ++istart)
		{
			for (int j = jstart; j < SIZE; j+=MOD)
			{
				for (int i = istart; i < SIZE; i+=MOD)
				{
					sum = sum + matrix[i][j];
				}
			}
		}	
	}
	end = clock();

    totalInSec = (double) (end - start) / CLOCKS_PER_SEC;
    printf("[Column %dx%d Mod %d] Time: %f\n",SIZE,SIZE,MOD, totalInSec);

    return 0;
}