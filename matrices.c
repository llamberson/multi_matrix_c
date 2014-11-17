// @author: Luke Lamberson
#include <stdio.h>
#define ROW_SIZE 2
#define COL_SIZE 2

void displayResults(int multMatrix[][COL_SIZE]) {
	int row, col;

	printf("Product of entered matrices:\n");
	for (row = 0; row < ROW_SIZE; row++) {
		for (col = 0; col < COL_SIZE; col++)
			printf("%d\t", multMatrix[row][col]);

		printf("\n");
	}
}

int transpose(int matrix2[][COL_SIZE]) {
	int row, col;
	int colMajMatrix[ROW_SIZE][COL_SIZE];

	for (row = 0; row < ROW_SIZE; row++) {
		for (col = 0; col < COL_SIZE; col++) {
			colMajMatrix[row][col] = matrix2[col][row];
		}
	}

	printf("Transposed Matrix:\n");
	for (row = 0; row < ROW_SIZE; row++) {
		for (col = 0; col < COL_SIZE; col++)
			printf("%d\t", colMajMatrix[row][col]);

		printf("\n");
	}

	printf("Product of matrices after transposition:\n");
	return colMajMatrix;
}

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

	displayResults(multMatrix);
}

int main() {
	setvbuf(stdout, NULL, _IONBF, 0);
	int matrix1[ROW_SIZE][COL_SIZE] = { { 1, 3 }, { 1, 3 } };
	int matrix2[ROW_SIZE][COL_SIZE] = { { 1, 1 }, { 3, 3 } };

	multiplyMatrices(matrix1, matrix2);
	multiplyMatrices(matrix1, transpose(matrix2));

	return 0;
}
