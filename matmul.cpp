#include<cstdint>

#define N 2
#define M 3
#define K 4

void matmul(int32_t A[N][K], int32_t B[K][M], int32_t C[N][M]) {
  int32_t i, j, k;
  for (int32_t i = 0; i < N; i++) {
    for (int32_t j = 0; j < M; j++) {
      for (int32_t k = 0; k < K; k++) {
        C[i][j] += A[i][k] * B[k][j];
      }
    }
  }
}