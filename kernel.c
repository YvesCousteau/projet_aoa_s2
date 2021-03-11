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

         if ( a[ j ] < radius ) {
           c [ i ][ j ] = a [ j ] / b [ i ];
         }
		 else {
     	 	 c [ i ][ j ] = 0.0;
		 }

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
