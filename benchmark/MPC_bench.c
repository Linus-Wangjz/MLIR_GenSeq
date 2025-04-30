#define LENGTH 512
#ifndef PAIRS
#define PAIRS 2048
#endif

#include<stdio.h>
#include<stdlib.h>
#include<stdint.h>
#include<string.h>
#include<time.h>


void Min_Cost_Path(int ***cost, int ***dp) {    
    clock_t start, end;
    double cpu_time_used;

    start = clock();

    // initiation
    for (int i = 0; i < PAIRS; i++) {
        dp[0][0][i] = cost[0][0][i];

        for (int j = 1; j < LENGTH; j++) {
            dp[j][0][i] = dp[j - 1][0][0] + cost[j][0][i];
            dp[0][j][i] = dp[0][j - 1][0] + cost[0][j][i];
        }
    }

    end = clock();

    cpu_time_used = ((double)(end-start))/CLOCKS_PER_SEC;

    printf("Time used on initialization: %f\n", cpu_time_used);

    int temp1;
    int temp2;
    int temp3;
    int min_value;

    start = clock();

    for (int i = 0; i < PAIRS; i++) {
        for (int j = 1; j < LENGTH; j++) {
            for (int k = 1; k < LENGTH; k++) {
                temp1 = dp[j - 1][k - 1][i];
                temp2 = dp[j - 1][k][i];
                temp3 = dp[j][k - 1][i];
                min_value = temp1;
                if (min_value > temp2) {
                    min_value = temp2;
                }
                if (min_value > temp3) {
                    min_value = temp3;
                }
                dp[j][k][i] = min_value + cost[j][k][i];
            }
        }
    }

    end = clock();

    cpu_time_used = ((double)(end-start))/CLOCKS_PER_SEC;

    printf("Time used on calculation: %f\n", cpu_time_used);
}

/*
small 64
medium 512
large 2048
*/
int main(int argc, char* argv[]) {

    int32_t ***A = (int32_t ***) malloc(LENGTH * sizeof(int32_t **));
    for (int i = 0; i < LENGTH; i++)
    {
        A[i] = (int32_t **) malloc(LENGTH * sizeof(int32_t *));
        for (int j = 0; j < LENGTH; j++)
        {
            A[i][j] = (int32_t *) malloc(PAIRS * sizeof(int32_t));
        }
    }

    int32_t ***C = (int32_t ***) malloc(LENGTH * sizeof(int32_t **));
    for (int i = 0; i < LENGTH; i++)
    {
        C[i] = (int32_t **) malloc(LENGTH * sizeof(int32_t *));
        for (int j = 0; j < LENGTH; j++)
        {
            C[i][j] = (int32_t *) malloc(PAIRS * sizeof(int32_t));
        }
    }
    
    printf("Test Case Generated!\n");

    clock_t start, end;
    double cpu_time_used;

    start = clock();

    Min_Cost_Path(A, C);

    end = clock();

    cpu_time_used = ((double)(end-start))/CLOCKS_PER_SEC;

    printf("Time used on Min_Cost_Path() function: %f\n", cpu_time_used);

    for (int i = 0; i < LENGTH; i++)
    {
        for (int j = 0; j < LENGTH; j++)
        {
            free(A[i][j]);
            free(C[i][j]);
        }
        free(A[i]);
        free(C[i]);
    }
    free(A);
    free(C);

    printf("Finished!\n");

    return 0;
}
