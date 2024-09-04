#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Función para contar las ocurrencias de una palabra clave en un archivo
int contar_ocurrencias(FILE *archivo, const char *palabra_clave) {
    char buffer[1024];
    int cuenta = 0;
    size_t len = strlen(palabra_clave);

    while (fscanf(archivo, "%1023s", buffer) == 1) {
        if (strncmp(buffer, palabra_clave, len) == 0 && buffer[len] == '\0') {
            cuenta++;
        }
    }

    return cuenta;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Uso: %s archivo palabra_clave\n", argv[0]);
        return 1;
    }

    // Abrir el archivo de texto
    FILE *archivo = fopen(argv[1], "r");
    if (archivo == NULL) {
        perror("Error al abrir el archivo");
        return 1;
    }

    // Contar las ocurrencias de la palabra clave
    int ocurrencias = contar_ocurrencias(archivo, argv[2]);

    // Cerrar el archivo
    fclose(archivo);

    // Mostrar el resultado
    printf("%s se repite %d veces en el texto.\n", argv[2], ocurrencias);

    return 0;
}
