#ifdef ORIGINAL

void s13 (unsigned n , const float a[n] ,const float b[n] , float c[n][n] ,int offset , double radius) {
   int i, j;

   for ( i =0; i < n ; i ++) {
     for ( j =0; j < n ; j ++) {
         if ( offset + j < 0 || offset + j >= n )
            continue;

         c [ i ][ offset + j ] = 0.0;

         if ( a[offset + j] < radius ) {
           c [ i ][ offset + j ] = a [ offset + j ] / b [ i ];
         }

      }
   }
}

#elif defined CORRECTED

void s13 (unsigned n, const float a[n], const float b[n], float c[n][n], int offset, double radius) {
	int i, j;

	for ( i = 0; i < n ; i ++) {
		for ( j = offset; j < n; j ++) {

			c [ i ][ j ] = a[j] < radius ? 0.0 : a [ j ] / b [ i ];

		}
	}
}

#elif defined CORRECTED2

void s13 (unsigned n, const float a[n], const float b[n], float c[n][n], int offset, double radius) {
	int i, j;

	float a2[n];
	for ( i = 0; i < n ; i ++)
		a2[i] = a[i] < radius ? 0.0 : a[i];

	for ( i = 0; i < n ; i ++) {
		for ( j = offset; j < n; j ++) {

			c [ i ][ j ] = a2 [ j ] / b [ i ];

		}
	}
}


#else

/* original */
void s13 (unsigned n , const float a[n] ,const float b[n] , float c[n][n] ,int offset , double radius) {
   int i, j;

   for ( i =0; i < n ; i ++) {
     for ( j =0; j < n ; j ++) {
         if ( offset + j < 0 || offset + j >= n )
            continue;

         c [ i ][ offset + j ] = 0.0;

         if ( a[offset + j] < radius ) {
           c [ i ][ offset + j ] = a [ offset + j ] / b [ i ];
         }

      }
   }
}
#endif