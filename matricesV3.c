/* @author: Luke Lamberson */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ROW_SIZE 16
#define COL_SIZE 16

/* Displays the results to screen after computations. */
void displayResults(int multMatrix[][COL_SIZE]) {
	int row, col;

	for (row = 0; row < ROW_SIZE; row++) {
		for (col = 0; col < COL_SIZE; col++)
			printf("%d\t", multMatrix[row][col]);

		printf("\n");
	}
}

/* Transposes a row-major matrix into a column-major matrix. */
int transpose(int matrix2[][COL_SIZE]) {
	int row, col;
	int colMajMatrix[ROW_SIZE][COL_SIZE];

	for (row = 0; row < ROW_SIZE; row++) {
		for (col = 0; col < COL_SIZE; col++) {
			colMajMatrix[row][col] = matrix2[col][row];
		}
	}

	printf("\nTransposed Matrix2:\n");
	for (row = 0; row < ROW_SIZE; row++) {
		for (col = 0; col < COL_SIZE; col++)
			printf("%d\t", colMajMatrix[row][col]);

		printf("\n");
	}

	printf("\nTransposed ");
	return colMajMatrix; /** WARNING: Multiple markers at this line
	 - function returns address of local variable [-Wreturn-local-
	 addr]
	 - return makes integer from pointer without a cast [enabled by
	 default] */
}

/* Multiplies two matrices. */
void multiplyMatrices(int matrix1[][COL_SIZE], int matrix2[][COL_SIZE]) {
	int row, col, k, sum = 0;
	int multMatrix[ROW_SIZE][COL_SIZE];

	for (row = 0; row < ROW_SIZE; row++) {
		for (col = 0; col < COL_SIZE; col++) {
			for (k = 0; k < ROW_SIZE; k++) {
				sum = sum + matrix1[row][k] * matrix2[k][col];
			}

			multMatrix[row][col] = sum;
			sum = 0;
		}
	}

	printf("\nProduct of matrices:\n");
	displayResults(multMatrix);
}

/* Executes program functions. */
int main() {
	setvbuf(stdout, NULL, _IONBF, 0);
	int row, col, r1, r2;
	int matrix1[ROW_SIZE][COL_SIZE];
	int matrix2[ROW_SIZE][COL_SIZE];
	int mat_trans[ROW_SIZE][COL_SIZE];

	for (row = 0; row < ROW_SIZE; row++) {
		for (col = 0; col < COL_SIZE; col++) {
			r1 = rand() % 10;
			r2 = rand() % 10;
			matrix1[row][col] = r1;
			matrix2[row][col] = r2;
		}
	}

	printf("\nMatrix1:\n");
	displayResults(matrix1);
	printf("\nMatrix2:\n");
	displayResults(matrix2);

	memcpy(mat_trans, transpose(matrix2), sizeof(int) * ROW_SIZE * COL_SIZE); /* WARNING: passing argument 2 of 'memcpy'
																				makes pointer from integer without a cast
																				[enabled by default] */

	multiplyMatrices(matrix1, mat_trans);
	multiplyMatrices(matrix1, matrix2);

	return 0;
}
