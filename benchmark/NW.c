#define SIZE 512
#define MAT_WIDTH 50

#include<stdio.h>
#include<stdlib.h>

void Needleman_Wunsch(int A[MAT_WIDTH][SIZE], int B[MAT_WIDTH][SIZE], int C[MAT_WIDTH+1][MAT_WIDTH+1][SIZE]) {
    // initiation
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < MAT_WIDTH + 1; j++) {
            C[j][0][i] = -j;
            C[0][j][i] = -j;
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

int main() {
    int A[MAT_WIDTH][SIZE];
    int B[MAT_WIDTH][SIZE];
    int C[MAT_WIDTH+1][MAT_WIDTH+1][SIZE];

    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < MAT_WIDTH; j++) {
            A[j][i] = (i * j + 3 * i + j) % 4;
        }
    }

    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < MAT_WIDTH; j++) {
            B[j][i] = ((i - 1) * j * 3 + 1 * i + 2 * j) % 4;
        }
    }

    Needleman_Wunsch(A, B, C);

    printf("Success!\n");

    return 0;
}
