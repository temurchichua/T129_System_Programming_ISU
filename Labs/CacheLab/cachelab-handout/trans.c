// Student: Temur Chichua - temur.chichua.1@iliauni.edu.ge

/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    // Divide the matrix into smaller blocks
    // and transpose them for better cache performance
    int rowBlock, colBlock, row, col, tempCache[8];
    printf("Starting loop");

    if (N == 32) {
        // iterate through the blocks of the matrix
        for (colBlock = 0; colBlock < M; colBlock += 8) {
            for (rowBlock = 0; rowBlock < N; rowBlock += 8) {
                // iterate through the rows of the block
                for (row = rowBlock; row < rowBlock + 8; row++) {
                    // iterate through the columns of the block
                    for (col = colBlock; col < colBlock + 8; col++) {
                        // if the row and column are not the same
                        if (row != col) {
                            // transpose the matrix
                            B[col][row] = A[row][col];
                        } else {
                            // save the value in the cache
                            tempCache[row - rowBlock] = A[row][col];
                        }
                    }
                    // if the block is on the diagonal
                    if (rowBlock == colBlock) {
                        // copy the values from the cache to the block
                        B[row][row] = tempCache[row - rowBlock];
                    }
                }
            }
        }
    } else if ( N == 64 ){
        // iterate through the blocks of the matrix
        for (colBlock = 0; colBlock < M; colBlock += 8) {
            for (rowBlock = 0; rowBlock < N; rowBlock += 8) {
                // iterate through the rows of the block
                for (row = rowBlock; row < rowBlock + 4; row++) {
                    // store the column into the temp cache
                    for (int i = 0; i < 8; i++) {
                        // unload to B matrix and store values to cache
                        if (i <= 4) {
                            B[colBlock + i - 4][row + 4] = tempCache[i] = A[row][colBlock + i];
                        } else {
                            B[colBlock + i][row] = tempCache[i] = A[row][colBlock + i];
                        }
                    }
                }
                    // iterate through the columns of the block
                for (col = colBlock; col < colBlock + 4; col++) {
                        // transpose the matrix using the cache
                        // store the values to B matrix
                        // B right up corner = A left down corner
                        tempCache[0] = B[col][rowBlock + 4];
                        tempCache[1] = B[col][rowBlock + 5];
                        tempCache[2] = B[col][rowBlock + 6];
                        tempCache[3] = B[col][rowBlock + 7];
                        // A left down corner = B right up corner
                        tempCache[4] = A[rowBlock + 4][col];
                        tempCache[5] = A[rowBlock + 5][col];
                        tempCache[6] = A[rowBlock + 6][col];
                        tempCache[7] = A[rowBlock + 7][col];
                        // set B left down corner
                        B[col + 4][row] = tempCache[0];
                        B[col + 4][row + 1] = tempCache[1];
                        B[col + 4][row + 2] = tempCache[2];
                        B[col + 4][row + 3] = tempCache[3];
                        // set B right down corner
                        B[col + 4][rowBlock + 4] = A[rowBlock + 4][col + 4];
                        B[col + 4][rowBlock + 5] = A[rowBlock + 5][col + 4];
                        B[col + 4][rowBlock + 6] = A[rowBlock + 6][col + 4];
                        B[col + 4][rowBlock + 7] = A[rowBlock + 7][col + 4];

                    }
                }
            }
    } else {
        // iterate through the blocks of the matrix
        for (colBlock = 0; colBlock < M; colBlock += 16) {
            for (rowBlock = 0; rowBlock < N; rowBlock += 16) {
                // iterate through the rows of the block
                for (row = rowBlock; row < rowBlock + 16 && row < N; row++) {
                    // iterate through the columns of the block
                    for (col = colBlock; col < colBlock + 16 && col < M; col++) {
                        // if the row and column are not the same
                        if (row != col) {
                            // transpose the matrix
                            B[col][row] = A[row][col];
                        } else {
                            // save the value in the cache
                            tempCache[row - rowBlock] = A[row][col];
                        }
                    }
                    // if the block is on the diagonal
                    if (rowBlock == colBlock) {
                        // copy the values from the cache to the block
                        B[row][row] = tempCache[row - rowBlock];
                    }
                }
            }
        }
    }
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);

}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

