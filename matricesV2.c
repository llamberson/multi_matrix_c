// @author: Luke Lamberson
#include <stdio.h>
#include <stdlib.h>

#define ROW_SIZE 16
#define COL_SIZE 16

void displayResults(int multMatrix[][COL_SIZE]) {
	int row, col;

	for (row = 0; row < ROW_SIZE; row++) {
		for (col = 0; col < COL_SIZE; col++)
			printf("%d\t", multMatrix[row][col]);

		printf("\n");
	}
}
//
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

	printf("Product of matrices:\n");
	displayResults(multMatrix);
}

int main() {
	setvbuf(stdout, NULL, _IONBF, 0);
	int row, col, r1, r2;
	int matrix1[ROW_SIZE][COL_SIZE];
	int matrix2[ROW_SIZE][COL_SIZE];

	for (row = 0; row < ROW_SIZE; row++) {
		for (col = 0; col < COL_SIZE; col++) {
			r1 = rand()%10;
			r2 = rand()%10;
			matrix1[row][col] = r1;
			matrix2[row][col] = r2;
		}
	}

	//multiplyMatrices(matrix1, matrix2);
	multiplyMatrices(matrix1, transpose(matrix2));

	return 0;
}
