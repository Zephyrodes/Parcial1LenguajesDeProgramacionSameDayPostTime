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

+ Python

  Comando de instalación:

```bash

sudo apt install python3

```

+ PIP (gestor de paquetes de Python)

  Comando de instalación:
  
```bash

sudo apt install python3-pip

```

+ JDK (Java Development Kit )

  Comando de instalación:
  
```bash

sudo apt install default-jdk

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

## Punto 4 - COMPARACIÓN DE RENDIMIENO: LENGUAJE DE PROGRAMACIÓN COMPILADO VS INTERPRETADO

Este proyecto tiene como objetivo comparar el rendimiento entre un lenguaje de programación **compilado** como C y un lenguaje **interpretado** como Python, usando un algoritmo simple que calcula la suma de los primeros 1 billón de números enteros.

### Descripción:

Este repositorio contiene dos implementaciones del mismo algoritmo:
- **C (Lenguaje Compilado)**: Un lenguaje compilado que suele ser más eficiente en cuanto a rendimiento.
- **Python (Lenguaje Interpretado)**: Un lenguaje interpretado que es más fácil de escribir pero generalmente más lento en la ejecución de código intensivo.

#### Estructura:

- `compilado.c`: Implementación en C.
- `interpretado.py`: Implementación en Python.

Ambos programas realizan la misma operación: sumar los números del 1 al 1,000,000,000 e imprimir tanto el resultado como el tiempo que tomó realizar la operación.

### Compilación y Ejecución:

1. Una vez en el directorio `Punto4\`, Compilar y ejecutar el código en C:

+ usar un compilador C `compilado.c`

```bash

gcc suma.c -o suma

```
+ Ejecuta el programa compilado

```bash

./suma

```
2. Ejecutar el código en Python:

+ Guarda el código Python en un archivo llamado `interpretado.py`
+ Ejecuta el programa
```bash

python3 interpretado.py

```

#### Resultados esperados:

**Código en C:** Debería mostrar un tiempo de ejecución significativamente menor en comparación con el código en Python debido a la naturaleza compilada de C.
**Código en Python:** Debería mostrar un tiempo de ejecución mayor, ya que Python es un lenguaje interpretado y, por lo tanto, más lento en la ejecución de operaciones repetitivas intensivas.

## Punto 5 - CALCULADORA DE FUNCIONES TRIGONOMETRICAS CON ANTLR

Este proyecto es una calculadora de funciones trigonométricas (`Sin`, `Cos`, `Tan`) que utiliza ANTLR para analizar las expresiones desde un archivo de texto. Las expresiones son evaluadas en radianes, y el programa es capaz de procesar múltiples líneas de expresiones contenidas en un archivo de entrada llamado `expr.in`.

### Requisito:

+ ANTLR 4: Para generar los analizadores léxicos y sintácticos.

Sigue las instrucciones en la [página oficial de ANTLR](https://www.antlr.org/download.html) para descargar e instalar ANTLR 4.

**Configurar ANTLR:**

   Asegúrate de que el archivo JAR de ANTLR esté en tu `CLASSPATH`. Puedes hacer esto añadiendo lo siguiente a tu archivo `.bashrc` o `.zshrc` (ajusta la ruta a donde hayas descargado ANTLR):

   ```bash
   export CLASSPATH=".:/path/to/antlr-4.x-complete.jar"
   alias antlr4='java -jar /path/to/antlr-4.x-complete.jar'
   alias grun='java org.antlr.v4.runtime.misc.TestRig'
   ```

#### Estructura:

- `CalculadoraTrigonometrica.g4`: Archivo de gramática ANTLR que define las reglas del lenguaje de expresiones trigonométricas.
- `Calculadora.java`: Archivo principal que carga el archivo expr.in, analiza las expresiones y muestra los resultados.
- `CalculadoraTrigonometricaVisitorImpl`.java: Implementación del visitante para evaluar las expresiones trigonométricas.
- `expr.in`: Archivo de entrada con las expresiones trigonométricas a evaluar.

### Compilación y Ejecución:

1. Una vez en el directorio `Punto5\`, ejecuta el siguiente comando para generar los analizadores léxicos y sintácticos:
   
   ```bash
   
   antlr4 -no-listener -visitor CalculadoraTrigonometrica.g4
   
   ```
Esto generará los archivos necesarios como:
+ `CalculadoraTrigonometricaLexer.java`
+ `CalculadoraTrigonometricaParser.java`
+ `CalculadoraTrigonometricaBaseVisitor.java`
+ `CalculadoraTrigonometricaVisitor.java`

2. Asegúrate de que todos los archivos .java generados por ANTLR, junto con los archivos `Calculadora.java` y `CalculadoraTrigonometricaVisitorImpl.java`, estén en el mismo directorio. Luego, compílalos utilizando el siguiente comando:
   ```bash
   
   javac Calculadora.java CalculadoraTrigonometrica*.java
   
   ```
3. Para ejecutar el programa, asegúrate de que el archivo expr.in se encuentre en el mismo directorio que los archivos .class generados. Luego, ejecuta el siguiente comando:
   ```bash
   
   java Calculadora
   
   ```
