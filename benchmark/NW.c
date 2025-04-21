#define SIZE 512
#define MAT_WIDTH 50

#include<stdio.h>
#include<stdlib.h>

void Needleman_Wunsch(int A[SIZE][MAT_WIDTH], int B[SIZE][MAT_WIDTH], int C[SIZE][MAT_WIDTH+1][MAT_WIDTH+1]) {
    // initiation
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < MAT_WIDTH + 1; j++) {
            C[i][j][0] = -j;
            C[i][0][j] = -j;
        }
    }

    int temp1;
    int temp2;
    int temp3;
    int max_value;

    for (int i = 0; i < SIZE; i++) {
        for (int j = 1; j < MAT_WIDTH + 1; j++) {
            for (int k = 1; k < MAT_WIDTH + 1; k++) {
                int scale = 7;
                int offset = 2;
                temp1 = C[i][j - 1][k] - 5;
                temp2 = C[i][j][k - 1] - 5;
                temp3 = C[i][j - 1][k - 1];
                temp3 = temp3 - (A[i][j - 1] == B[i][j - 1]) * scale + offset; 
                // if (A[i][j - 1] == B[i][j - 1]) {
                //     temp3 += 2;
                // } else {
                //     temp3 -= 5;
                // }
                // max_value = max(temp1,temp2);
                // max_value = max(max_value, temp3);
                if (max_value < temp2) {
                    max_value = temp2;
                }
                if (max_value < temp3) {
                    max_value = temp3;
                }
                C[i][j][k] = max_value;
            }
        }
    }
}

int main() {
    int A[SIZE][MAT_WIDTH];
    int B[SIZE][MAT_WIDTH];
    int C[SIZE][MAT_WIDTH+1][MAT_WIDTH+1];

    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < MAT_WIDTH; j++) {
            A[i][j] = (i * j + 3 * i + j) % 4;
        }
    }

    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < MAT_WIDTH; j++) {
            B[i][j] = ((i - 1) * j * 3 + 1 * i + 2 * j) % 4;
        }
    }

    Needleman_Wunsch(A, B, C);

    printf("Success!\n");

    return 0;
}
