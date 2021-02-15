#ifdef OPT1

void s13 (int n, float a[n][n], float b[n][n], float c[n][n], int offset, double radius) {
	int i, j, k;

	for ( i =0; i < n ; i ++) {
	  for ( j =0; j < n ; j ++) {
			if ( offset + j < 0 || offset + j >= n )
				continue;
			
			c [ i ][ offset + j ] = 0.0;

			if ( a [ offset + j ] < radius ) {
			  c [ i ][ offset + j ] = a [ offset + j ] / b [ i ];
			}

		}
	}
}

#elif defined OPT2

#include <string.h> // memset

/* ijk -> ikj permutation to make stride 1 the innermost loop */
void s13 (int n, float a[n][n], float b[n][n], float c[n][n]) {
	int i, j, k;

	memset (c, 0, n * n * sizeof c[0][0]);

	for (i=0; i<n; i++)
		for (k=0; k<n; k++)
			for (j=0; j<n; j++)
				c[i][j] += a[i][k] * b[k][j];
}

#else

/* original */
void s13 (int n, float a[n][n], float b[n][n], float c[n][n]) {
	int i, j, k;

	for (i=0; i<n; i++)
		for (j=0; j<n; j++) {
			c[i][j] = 0.0f;

			for (k=0; k<n; k++)
				c[i][j] += a[i][k] * b[k][j];
		}
}
#endif
