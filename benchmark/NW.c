#define LENGTH 512

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

void Needleman_Wunsch(int **A, int **B, int ***C, int num_pair) {
    // initiation
    for (int i = 0; i < num_pair; i++) {
        for (int j = 0; j < LENGTH + 1; j++) {
            C[j][0][i] = -j;
            C[0][j][i] = -j;
        }
    }

    int temp1;
    int temp2;
    int temp3;
    int max_value;

    for (int i = 0; i < num_pair; i++) {
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

int main(int argc, char* argv[]) {
    // int A[LENGTH][num_pair];
    // int B[LENGTH][num_pair];
    // int C[LENGTH+1][LENGTH+1][num_pair];
    int num_pair;

    FILE *fp_x, *fp_y;
    if (strcpy(argv[1],"small") == 0)
    {
        fp_x = fopen("./int_small/seqx.txt","r");
        fp_y = fopen("./int_small/seqy.txt","r");
        num_pair = 64;

    }
    else if (strcpy(argv[1],"medium") == 0)
    {
        fp_x = fopen("./int_medium/seqx.txt","r");
        fp_y = fopen("./int_medium/seqy.txt","r");
        num_pair = 512;
    }
    else if (strcpy(argv[1],"large") == 0)
    {
        fp_x = fopen("./int_large/seqx.txt","r");
        fp_y = fopen("./int_large/seqy.txt","r");
        num_pair = 2048;
    }

    int **A = (int **) malloc(LENGTH * sizeof(int *));
    int **B = (int **) malloc(LENGTH * sizeof(int *));

    for (int i = 0; i < LENGTH; i++)
    {
        A[i] = (int *) malloc(num_pair * sizeof(int));
        B[i] = (int *) malloc(num_pair * sizeof(int));
    }

    int ***C = (int ***) malloc(LENGTH * sizeof(int **));
    for (int i = 0; i < LENGTH; i++) 
    {
        C[i] = (int **) malloc(LENGTH * sizeof(int *));
        for (int j = 0; j < LENGTH; j++)
        {
            C[i][j] = (int *) malloc(num_pair * sizeof(int));
        }
    }

    for (int i = 0; i < num_pair; i++) {
        for (int j = 0; j < LENGTH; j++) {
            fscanf(fp_x, "%d", &A[j][i]);
            // A[j][i] = (i * j + 3 * i + j) % 4;
        }
    }

    for (int i = 0; i < num_pair; i++) {
        for (int j = 0; j < LENGTH; j++) {
            fscanf(fp_y, "%d", &B[j][i]);
            // B[j][i] = ((i - 1) * j * 3 + 1 * i + 2 * j) % 4;
        }
    }

    printf("Read-in Success!\n");

    Needleman_Wunsch(A, B, C, num_pair);

    printf("Success!\n");

    for (int i = 0; i < LENGTH; i++)
    {
        free(A[i]);
        free(B[i]);
    }

    free(A);
    free(B);

    fclose(fp_x);
    fclose(fp_y);

    return 0;
}
