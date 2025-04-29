#define LENGTH 512
#define PAIRS 64

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

void Needleman_Wunsch(int (*A)[PAIRS], int (*B)[PAIRS], int (*C)[LENGTH + 1][PAIRS]) {
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

    FILE *fp_x, *fp_y;

    fp_x = fopen("./int_small/seqx.txt","r");
    fp_y = fopen("./int_small/seqy.txt","r");

    int (*A)[PAIRS] = (int (*)[PAIRS]) malloc(LENGTH * PAIRS * sizeof(int));
    int (*B)[PAIRS] = (int (*)[PAIRS]) malloc(LENGTH * PAIRS * sizeof(int));

    int (*C)[LENGTH + 1][PAIRS] = (int (*)[LENGTH + 1][PAIRS]) malloc((LENGTH + 1) * (LENGTH + 1) * PAIRS * sizeof(int));

    char Achar, Bchar;
    for (int i = 0; i < PAIRS; i++) {
        for (int j = 0; j < LENGTH; j++) {
            fscanf(fp_x, "%c", &Achar);
            A[j][i] = atoi(&Achar);
            // A[j][i] = (i * j + 3 * i + j) % 4;
        }
    }

    for (int i = 0; i < PAIRS; i++) {
        for (int j = 0; j < LENGTH; j++) {
            fscanf(fp_y, "%c", &Bchar);
            B[j][i] = atoi(&Bchar);
            // B[j][i] = ((i - 1) * j * 3 + 1 * i + 2 * j) % 4;
        }
    }

    printf("Read-in Success!\n");

    Needleman_Wunsch(A, B, C);

    printf("Success!\n");

    free(A);
    free(B);
    free(C);

    fclose(fp_x);
    fclose(fp_y);

    return 0;
}
