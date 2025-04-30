#define LENGTH 512
#define PAIRS 10240

#include<stdio.h>
#include<stdlib.h>
#include<stdint.h>
#include<string.h>
#include<time.h>


void Needleman_Wunsch(int **A, int **B, int ***C) {    
    clock_t start, end;
    double cpu_time_used;

    start = clock();

    // initiation
    for (int i = 0; i < PAIRS; i++) {
        for (int j = 0; j < LENGTH + 1; j++) {
            C[j][0][i] = -j;
            C[0][j][i] = -j;
        }
    }

    end = clock();

    cpu_time_used = ((double)(end-start))/CLOCKS_PER_SEC;

    printf("Time used on initialization: %f\n", cpu_time_used);

    int temp1;
    int temp2;
    int temp3;
    int max_value;

    start = clock();

    for (int i = 0; i < PAIRS; i++) {
        for (int j = 1; j < LENGTH + 1; j++) {
            for (int k = 1; k < LENGTH + 1; k++) {
                int scale = 7;
                int offset = 2;
                temp1 = C[j - 1][k][i] - 5;
                temp2 = C[j][k - 1][i] - 5;
                temp3 = C[j - 1][k - 1][i];
                temp3 = temp3 - (A[j - 1][i] == B[j - 1][i]) * scale + offset; 
                max_value = temp1;
                if (max_value < temp2) {
                    max_value = temp2;
                }
                if (max_value < temp3) {
                    max_value = temp3;
                }
                C[j][k][i] = max_value;
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

    int32_t **A = (int32_t **) malloc(LENGTH * sizeof(int32_t *));
    int32_t **B = (int32_t **) malloc(LENGTH * sizeof(int32_t *));

    for (int i = 0; i < LENGTH; i++)
    {
        A[i] = (int32_t *) malloc(PAIRS * sizeof(int32_t));
        B[i] = (int32_t *) malloc(PAIRS * sizeof(int32_t));
    }

    int32_t ***C = (int32_t ***) malloc((LENGTH + 1) * sizeof(int32_t **));
    for (int i = 0; i < LENGTH + 1; i++) 
    {
        C[i] = (int32_t **) malloc((LENGTH + 1) * sizeof(int32_t *));
        for (int j = 0; j < LENGTH + 1; j++)
        {
            C[i][j] = (int32_t *) malloc(PAIRS * sizeof(int32_t));
        }
    }

    for (int i = 0; i < PAIRS; i++) {
        for (int j = 0; j < LENGTH; j++) {
            A[j][i] = rand();
            B[j][i] = rand();
        }
    }    
    
    printf("Test Case Generated!\n");

    clock_t start, end;
    double cpu_time_used;

    start = clock();

    Needleman_Wunsch(A, B, C);

    end = clock();

    cpu_time_used = ((double)(end-start))/CLOCKS_PER_SEC;

    printf("Time used on Needleman_Wunsch() function: %f\n", cpu_time_used);

    for (int i = 0; i < LENGTH; i++)
    {
        free(A[i]);
        free(B[i]);
    }
    free(A);
    free(B);

    for (int i = 0; i < LENGTH; i++)
    {
        for (int j = 0; j < LENGTH; j++)
        {
            free(C[i][j]);
        }
        free(C[i]);
    }
    free(C);

    printf("Finished!\n");

    return 0;
}
