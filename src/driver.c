#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <time.h>

#define NB_METAS 31



#define L2 226




extern uint64_t rdtsc ();

//extern void s13 (int n, float a[n][n], float b[n][n], float c[n][n], int offset, double radius);
extern void s13 (unsigned n , float a [ n ] ,const float b [ n ] , float c [ n ][ n ] ,int offset , double radius);

static void init_array (int n, float a[n]) {
   int i;

   for (i=0; i<n; i++)
      a[i] = (float) rand() / RAND_MAX;
}

static void dump_array (char * filename, int n, float a[n][n]) {
   int i, j;

   FILE * out = fopen(filename, "a+");

   for (i=0; i<n; i++)
      for (j=0; j<n; j++)
         fprintf (out, "%f\n", a[i][j]);
}

int main (int argc, char *argv[]) {
   /* check command line arguments */
   if (argc < 4 || argc > 5) {
      fprintf (stderr, "Usage: %s <size> <nb warmup repets> <nb measure repets>\n", argv[0]);
      abort();
   }

   int offset = 0;
   double radius = 10;

   int i, m;

   /* get command line arguments */
   int size = atoi (argv[1]); /* matrix size */
   //int repw = atoi (argv[2]); /* repetition number */
   int repw = atoi (argv[2]);
   int repm = atoi (argv[3]); /* repetition number */

   uint64_t rep [NB_METAS][repm];


   for (m=0; m<NB_METAS; m++) {
      /* allocate arrays */
      float (*a) = malloc (size * sizeof(float));
      float (*b) = malloc (size * sizeof(float));
      //float (*b)[size] = malloc (size * size * sizeof b[0][0]);
      float (*c)[size] = malloc (size * size * sizeof c[0][0]);

      /* init arrays */
      srand(0);
      init_array (size, a);
      init_array (size, b);

      /* warmup (repw repetitions in first meta, 1 repet in next metas) */
      // if (m == 0) {
      //    clock_t start = clock();
      //    for (i=0; i<repw; i++)
      //       s13 (size, a, b, c, offset, radius);
      //    clock_t stop = clock();
      //    printf("temps: %f\n",(stop-start)/(float) CLOCKS_PER_SEC);
      // } else {
      //    s13 (size, a, b, c, offset, radius);
      // }


      // for (i=0; i<repm; i++)
      // {
      //   uint64_t t1 = rdtsc();
      //      s13 (size, a, b, c, offset, radius);
      //   uint64_t t2 = rdtsc();
      //   rep[m][i] = t2-t1;
      //   mesure += rep[m][i];
      //   printf ("%.2f cycles/c_elements\n",mesure/ ((float) size * size * repm));
      // }


      //for (i=0; i<repm; i++)
      //{
      //  uint64_t t1 = rdtsc();
      //  s13 (size, a, b, c, offset, radius);
      //  uint64_t t2 = rdtsc();
      //  rep[m][i]=(t2 - t1);
      //}

      uint64_t t1 = rdtsc();
      for (i=0; i<repm; i++)
      {
           s13 (size, a, b, c, offset, radius);
      }
      uint64_t t2 = rdtsc();
      printf ("%.2f cycles/c_element\n",(t2 - t1)/ ((float) size * size * repm));


      /* print output */
      //if (argc==5) dump_array (argv[4], size, c);

      /* free arrays */
      free (a);
      free (b);
      free (c);

      //sleep(4);

   }

   //for (size_t i = 0; i < NB_METAS; i++) {
   //  for (size_t j = 0; j < repm; j++) {
   //    printf("%.2f",rep[i][j]/((float)size*size) );
   //    if (j != repm) printf(",");
   //  }
   //  printf("\n");
   //}
   /* Print cycles moyen par meta rep */
   // printf("mesure : %.2f cycles\n",mesure/31 );

     /* for (int i = 0; i < NB_METAS; i++){
	for (int j= 0; j < repm; j++){
	      printf("%lu", rep[i][j]);
			if (j != repm) printf(",");
	}
	printf("\n");
     	}*/

   return EXIT_SUCCESS;
}
