#define LENGTH 512
#define PAIRS 512

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>

void Needleman_Wunsch(int (*A)[PAIRS], int (*B)[PAIRS], int (*C)[LENGTH + 1][PAIRS]) {
// void Needleman_Wunsch(int A[][PAIRS], int B[][PAIRS], int C[][LENGTH + 1][PAIRS]) {
    // initiation
    for (int i = 0; i < PAIRS; i++) {
        for (int j = 0; j < LENGTH + 1; j++) {
            C[j][0][i] = -j;
            C[0][j][i] = -j;
        }
    }

    int temp1;
    int temp2;
    int temp3;
    int max_value;

    // printf("%d\n",A[0][0]);
    // printf("%d\n",C[0][0][0]);

    for (int i = 0; i < PAIRS; i++) {
        for (int j = 1; j < LENGTH + 1; j++) {
            for (int k = 1; k < LENGTH + 1; k++) {
                int scale = 7;
                int offset = 2;
                temp1 = C[j - 1][k][i] - 5;
                temp2 = C[j][k - 1][i] - 5;
                temp3 = C[j - 1][k - 1][i];
                temp3 = temp3 - (A[j - 1][i] == B[j - 1][i]) * scale + offset; 
                // if (A[i][j - 1] == B[i][j - 1]) {
                //     temp3 += 2;
                // } else {
                //     temp3 -= 5;
                // }
                // max_value = max(temp1,temp2);
                // max_value = max(max_value, temp3);
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
}

/*
small 64
medium 512
large 2048
*/
int main(int argc, char* argv[]) {
    // int A[LENGTH][PAIRS];
    // int B[LENGTH][PAIRS];
    // int C[LENGTH+1][LENGTH+1][PAIRS];


    int (*A)[PAIRS] = (int (*)[PAIRS]) malloc(LENGTH * PAIRS * sizeof(int));
    int (*B)[PAIRS] = (int (*)[PAIRS]) malloc(LENGTH * PAIRS * sizeof(int));

    int (*C)[LENGTH + 1][PAIRS] = (int (*)[LENGTH + 1][PAIRS]) malloc((LENGTH + 1) * (LENGTH + 1) * PAIRS * sizeof(int));


    for (int i = 0; i < PAIRS; i++) {
        for (int j = 0; j < LENGTH; j++) {
            A[j][i] = rand();
            B[j][i] = rand();
        }
    }

    printf("Initialization Success!\n");

    clock_t start, end;
    double cpu_time_used;

    start = clock();

    Needleman_Wunsch(A, B, C);

    end = clock();

    cpu_time_used = ((double)(end-start))/CLOCKS_PER_SEC;

    printf("Success! Time used: %f\n", cpu_time_used);

    free(A);
    free(B);
    free(C);

    return 0;
}
