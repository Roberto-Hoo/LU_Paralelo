
//parallelLU.cpp
#include <iostream>
#include <omp.h>
#include <stdio.h>
#include <ctime>
#include <gsl/gsl_linalg.h>
#include <gsl/gsl_rng.h>


using namespace std;

char caracter;
int n = 5;

gsl_matrix *A = gsl_matrix_alloc(n, n);
gsl_matrix *U = gsl_matrix_alloc(n, n);
gsl_matrix *L = gsl_matrix_alloc(n, n);


int main(int argc, char *argv[]) {


    // gerador randÃ´mico
    gsl_rng *rng = gsl_rng_alloc(gsl_rng_default);
    gsl_rng_set(rng, time(NULL));

    // inicializaÃ§Ã£o
    printf("Inicializando ... \n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < i; j++) {
            int sig = 1;
            if (gsl_rng_uniform(rng) >= 0.5)
                sig = -1;
            gsl_matrix_set(A, i, j, sig * gsl_rng_uniform(rng));
            gsl_matrix_set(A, j, i, gsl_matrix_get(A, i, j));
        }
        int sig = 1;
        if (gsl_rng_uniform(rng) >= 0.5)
            sig = -1;
        gsl_matrix_set(A, i, i, sig * gsl_rng_uniform_pos(rng));
    }
    // Print the values of A and b using GSL print functions
    cout << "A = \n";
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            //printf("A(%d,%d) = %g\n", i, j, gsl_matrix_get(A, i, j));
            printf(" %10.6f  ", gsl_matrix_get(A, i, j));
        }
        printf("\n");
    }
    printf("feito.\n");

    // U = A
    gsl_matrix_memcpy(U, A);
    // L = I
    gsl_matrix_set_identity(L);

    omp_set_num_threads(n);

    for (int k = 0; k < n - 1; k++) {
#pragma omp parallel for
        for (int i = k + 1; i < n; i++) {
            gsl_matrix_set(L, i, k, gsl_matrix_get(U, i, k) / gsl_matrix_get(U, k, k));
            for (int j = k; j < n; j++) {
                gsl_matrix_set(U, i, j, gsl_matrix_get(U, i, j)
                                        - gsl_matrix_get(L, i, k) * gsl_matrix_get(U, k, j));
            }
        }
    }

    // Print the values of L using GSL print functions
    cout << "L = \n";
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            //printf("A(%d,%d) = %g\n", i, j, gsl_matrix_get(A, i, j));
            printf(" %10.6f  ", gsl_matrix_get(L, i, j));
        }
        printf("\n");
    }



    // Print the values of U using GSL print functions
    cout << "U = \n";
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            //printf("A(%d,%d) = %g\n", i, j, gsl_matrix_get(A, i, j));
            printf(" %10.6f  ", gsl_matrix_get(U, i, j));
        }
        printf("\n");
    }


    printf("feito.\n");


    gsl_matrix_free(A);
    gsl_matrix_free(U);
    gsl_matrix_free(L);
    gsl_rng_free(rng);

    cout << "\n\nTecle uma tecla e apos Enter para finalizar...\n";
    cin >> caracter;


    return 0;
}
