import time

n = 1000000000  # 1 billón
suma = 0

# Tiempo de inicio
inicio = time.time()

for i in range(1, n + 1):
    suma += i

# Tiempo de finalización
fin = time.time()

# Calcular el tiempo transcurrido en segundos
tiempo_total = fin - inicio

print(f"Suma: {suma}")
print(f"Tiempo tomado en Python: {tiempo_total} segundos")
