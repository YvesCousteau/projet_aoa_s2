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

#elif defined UNROLL_LOOPINVARIANT

void s13 (unsigned n, const float a[n], const float b[n], float c[n][n], int offset, double radius) {
	int i, j;

  float bi;
  float r = (double)radius;

  for ( i = 0; i < n ; i ++) {
    bi = b [ i ];

    for ( j = offset; j < (n-3); j +=4) {
      c [ i ][ j ] = a[j] < r ? 0.0 : a [ j ] / bi;
      c [ i ][ j+1 ] = a[j+1] < r ? 0.0 : a [ j+1 ] / bi;
      c [ i ][ j+2 ] = a[j+2] < r ? 0.0 : a [ j+2 ] / bi;
      c [ i ][ j+3 ] = a[j+3] < r ? 0.0 : a [ j+3 ] / bi;
    }

    for(j = (n-3); j<n;j++){
      c [ i ][ j ] = a[j] < r ? 0.0 : a [ j ] / bi;
    }

  }

}

#elif defined UNROLL_LOOPINVARIANT2

void s13 (unsigned n, const float a[n], const float b[n], float c[n][n], int offset, double radius) {
  int i, j;

  float bi;
  float r = (float)radius;
  float r2[4] = {r, r, r, r};

  for ( i = 0; i < n ; i ++) {
    bi = b [ i ];

    for ( j = offset; j < (n-3); j +=4) {
      c [ i ][ j ] = a[j] < r2[0] ? 0.0 : a [ j ] / bi;
      c [ i ][ j+1 ] = a[j+1] < r2[1] ? 0.0 : a [ j+1 ] / bi;
      c [ i ][ j+2 ] = a[j+2] < r2[2] ? 0.0 : a [ j+2 ] / bi;
      c [ i ][ j+3 ] = a[j+3] < r2[3] ? 0.0 : a [ j+3 ] / bi;
    }

    for(j = (n-3); j<n;j++){
      c [ i ][ j ] = a[j] < r ? 0.0 : a [ j ] / bi;
    }

  }

}

#elif defined LOOPINVARIANT

void s13 (unsigned n, const float a[n], const float b[n], float c[n][n], int offset, double radius) {
  int i, j;

  float bi;
  float r = (double)radius;

  for ( i = 0; i < n ; i ++) {
    bi = b [ i ];
    for ( j = offset; j < n; j ++) {
      c [ i ][ j ] = a[j] < radius ? 0.0 : a [ j ] / bi;
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
