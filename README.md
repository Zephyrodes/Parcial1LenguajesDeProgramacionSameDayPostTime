# Parcial 1 Lenguajes De Programacion (Mismo dia, Distinta Hora)

Repositorio para el primer parcial de Lenguajes de Programación

## Estructura del Repositorio

- **`Punto1/`**: Contiene el programa de AWK con analizador de token con AFD.
- **`Punto2/`**:Contiene el programa de LEX para identificar expresiones Lambda.
- **`Punto3/`**:Contiene el programa en C para contar repeticiones de una palabra clave.
- **`Punto4/`**: Contiene dos programas, uno con lenguaje de programación compilado (C), y el otro con lenguaje de programación interpretado (Python).
- **`Punto5/`**: Contiene el programa de ANTLR que calcula funciones trigonometricas.

Descargar el archivo comprimido que contiene las 5 carpetas con su respectivo punto, y para cada punto, cambia el directorio con el siguiente comando:

```bash

cd  /ruta/a/la/carpeta/PuntoX

```

## Punto 1 - AFD ANALIZADOR DE TOKENS

Este proyecto contiene un script AWK para analizar y clasificar tokens de acuerdo con un Autómata Finito Determinista (AFD) definido. El AFD acepta cuatro tipos de tokens basados en las siguientes expresiones regulares:

    - + (SUMA)
    - ++ (INCR)
    - [0-9]+ (ENTERO)
    - ([0-9]+)”.”([0-9]+) (REAL)

### Descripción:

El script AWK está diseñado para leer un archivo de entrada y clasificar cada línea de acuerdo con el AFD proporcionado. Los tokens reconocidos y sus clasificaciones son:

    + se clasifica como SUMA
    ++ se clasifica como INCR
    [0-9]+ se clasifica como ENTERO
    ([0-9]+)”.”([0-9]+) se clasifica como REAL

Cualquier entrada que no coincida con estos patrones se clasificará como UNKNOWN.


