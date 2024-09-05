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

## Requisitos generales

+ AWK (version 4.x o superior recomendada)

    Comando de instalación:

```bash

sudo apt install gawk

```

+ Lex/Flex (Generador de Análisis Léxico)

  Comando de instalación:

```bash

sudo apt-get install flex

```


+ GCC (Compilador de C)

  Comando de instalación:

```bash

sudo apt-get install build-essential

```


## Punto 1 - AFD ANALIZADOR DE TOKENS

Este proyecto contiene un script AWK para analizar y clasificar tokens de acuerdo con un Autómata Finito Determinista (AFD) definido. El AFD acepta cuatro tipos de tokens basados en las siguientes expresiones regulares:

`+` (SUMA)

`++` (INCR)

`[0-9]+` (ENTERO)

`([0-9]+)”.”([0-9]+)` (REAL)

### Descripción:

El script AWK, `token.awk` está diseñado para leer un archivo de entrada y clasificar cada línea de acuerdo con el AFD proporcionado. Los tokens reconocidos y sus clasificaciones son:

`+` se clasifica como `SUMA`

`++` se clasifica como `INCR`

`[0-9]+` se clasifica como `ENTERO`

`([0-9]+)”.”([0-9]+)` se clasifica como `REAL`

Cualquier entrada que no coincida con estos patrones se clasificará como `UNKNOWN`.

### Requisito:

+ Un archivo de texto con las cadenas que deseas analizar, en este caso `token.txt`

### Ejecución:

1. Una vez en el directorio `Punto1\`, coloca el siguiente comando

```bash

awk -f token.awk token.txt

```

Esto procesará cada línea del archivo `token.txt` y mostrará el token correspondiente según el AFD definido.

## Punto 2 - PROYECTO LEX PARA EXPRESIONES LAMBDA DE PYTHON

Este proyecto contiene un archivo de definición de LEX que reconoce expresiones lambda de Python y verifica si el contenido de un archivo de texto cumple con una estructura básica de una expresión lambda.

### Descripción:

El programa en LEX está diseñado para identificar expresiones lambda y llamadas a funciones en un archivo de texto.

#### Estructura:

`lambda.l`: Archivo fuente de LEX que define las reglas para reconocer una expresión lambda de Python, incluye:

+ Reglas para identificar palabras clave (lambda, print).
+ Reconocimiento de identificadores, números y operadores aritméticos.
+ Manejo de espacios en blanco y caracteres adicionales.

`ejemplo.txt`: Texto de ejemplo que contiene una expresión lambda y una llamada a esa función.

### Compilación y Ejecución:

1. Primero, Una vez en el directorio `Punto2\`,compila el archivo LEX para generar el archivo C:
```bash

lex lambda.l

```
Esto generará el archivo `lex.yy.c`

2. Compila el archivo C generado con gcc para crear el ejecutable:
```bash

gcc lex.yy.c -o a.out -ll

```
3. Ejecuta el archivo compilado con el archivo de texto como argumento:
```bash

./a.out ejemplo.txt

```
Esto imprimirá "ACEPTA" si el archivo de texto contiene una expresión lambda válida y una llamada a la función.

## Punto 3 - CONTADOR DE PALABRAS EN ARCHIVO TXT

Este programa en C permite contar la cantidad de veces que una palabra clave aparece en un archivo de texto.

### Requisito:

+ Un archivo de texto para analizar, en este caso `arroz.txt`

### Compilación y Ejecución:

1. Una vez en el directorio `Punto3\`, compila el archivo fuente `contador.c` usando gcc:

```bash

gcc -o contador contador.c

```
2. Ejecuta el programa pasando el archivo de texto y la palabra clave como argumentos:

```bash

./contador arroz.txt arroz

```
Donde:
+ `arroz.txt` es el archivo de texto que deseas analizar.
+ `arroz` es la palabra que quieres buscar en el archivo.

El programa imprimira la cantidad de veces que la palabra clave se encuentra en el archivo de texto.


