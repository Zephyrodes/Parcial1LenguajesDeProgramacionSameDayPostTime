%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

%%

[ \t\n]+                  ; // Ignorar espacios en blanco y saltos de línea
lambda                     { printf("ACEPTA\n"); }
print                      { printf("ACEPTA\n"); }
[ a-zA-Z_][a-zA-Z0-9_]*    { /* Identificadores */ }
[0-9]+                     { /* Números */ }
\*\*                       { /* Operador de potencia */ }
[+\-*/]                    { /* Operadores aritméticos */ }
=                         { /* Asignación */ }
:                         { /* Separador de lambda */ }
\(\)                       { /* Paréntesis en la llamada a la función */ }
.                         { /* Cualquier otro carácter */ }

%%

int main(int argc, char **argv) {
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");
        if (file) {
            yyin = file;
            yylex();
            fclose(file);
        } else {
            perror("Error opening file");
            return 1;
        }
    } else {
        fprintf(stderr, "Usage: %s <file>\n", argv[0]);
        return 1;
    }
    return 0;
}