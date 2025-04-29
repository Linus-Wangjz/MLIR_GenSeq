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

/*
Command line argument ./NW.exe ./int_small/seqx.txt ./int_small/seqy.txt 64
small 64
medium 512
large 2048
*/
int main(int argc, char* argv[]) {
    // int A[LENGTH][num_pair];
    // int B[LENGTH][num_pair];
    // int C[LENGTH+1][LENGTH+1][num_pair];
    int num_pair;

    FILE *fp_x, *fp_y;

    if (argc != 4)
    {
        printf("Usage: ./NW.exe PATH_TO_SEQX PATH_TO_SEQY NUM_OF_PAIRS\n");
        exit(EXIT_FAILURE);
    }

    if ((fp_x = fopen(argv[1],"r")) == NULL)
    {
        printf("Cannot open %s\n", argv[1]);
        exit(EXIT_FAILURE);
    }
    
    if ((fp_y = fopen(argv[2],"r")) == NULL)
    {
        printf("Cannot open %s\n", argv[2]);
        exit(EXIT_FAILURE);
    }

    if ((num_pair = atoi(argv[3])) == 0)
    {
        printf("Invalid number of pairs: %s\n", argv[3]);
        exit(EXIT_FAILURE);
    }


    int **A = (int **) malloc(LENGTH * sizeof(int *));
    int **B = (int **) malloc(LENGTH * sizeof(int *));

    for (int i = 0; i < LENGTH; i++)
    {
        A[i] = (int *) malloc(num_pair * sizeof(int));
        B[i] = (int *) malloc(num_pair * sizeof(int));
    }

    int ***C = (int ***) malloc((LENGTH + 1) * sizeof(int **));
    for (int i = 0; i < LENGTH + 1; i++) 
    {
        C[i] = (int **) malloc((LENGTH + 1) * sizeof(int *));
        for (int j = 0; j < LENGTH + 1; j++)
        {
            C[i][j] = (int *) malloc(num_pair * sizeof(int));
        }
    }

    char Achar, Bchar;
    for (int i = 0; i < num_pair; i++) {
        for (int j = 0; j < LENGTH; j++) {
            fscanf(fp_x, "%c", &Achar);
            A[j][i] = atoi(&Achar);
            // A[j][i] = (i * j + 3 * i + j) % 4;
        }
    }

    for (int i = 0; i < num_pair; i++) {
        for (int j = 0; j < LENGTH; j++) {
            fscanf(fp_y, "%c", &Bchar);
            B[j][i] = atoi(&Bchar);
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

    for (int i = 0; i < LENGTH; i++)
    {
        for (int j = 0; j < LENGTH; j++)
        {
            free(C[i][j]);
        }
        free(C[i]);
    }
    free(C);

    fclose(fp_x);
    fclose(fp_y);

    return 0;
}
