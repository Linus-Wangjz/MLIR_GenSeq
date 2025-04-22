#include <stdio.h>

int loop_tiling()
{
    int a[16][16];
    int b[16][16]; 
    int c;
    for (int i = 0; i < 256; i+=16)
    {
        for (int j = 0; j < 16; j++)
        {
            for (int k = 0; k < 16; k++)
            {
                c = a[j][k] + b[j][k];
            }
        } 
    }
    return c;
}


int main()
{
    int time;
    time = loop_tiling();

    printf("%d\n",time);
}
