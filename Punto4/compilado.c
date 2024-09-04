#include <stdio.h>
#include <time.h>

int main() {
    long long int n = 1000000000; // 1 billón
    long long int suma = 0;
    
    // Tiempo de inicio
    clock_t inicio = clock();
    
    for (long long int i = 1; i <= n; i++) {
        suma += i;
    }
    
    // Tiempo de finalización
    clock_t fin = clock();
    
    // Calcular el tiempo transcurrido en segundos
    double tiempo_total = (double)(fin - inicio) / CLOCKS_PER_SEC;
    
    printf("Suma: %lld\n", suma);
    printf("Tiempo tomado en C: %f segundos\n", tiempo_total);
    
    return 0;
}
