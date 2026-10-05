# Práctica 1 — Plataformas y herramientas para cómputo paralelo

## Requisitos

Linux (nativo o WSL2) con `build-essential`, `hwloc`, `hyperfine` y un entorno de Python con NumPy, matplotlib y pandas:

```bash
sudo apt install -y build-essential git python3-venv hwloc time hyperfine
python3 -m venv ~/cp-env && source ~/cp-env/bin/activate
pip install numpy matplotlib pandas
```

## Reproducir todo (dos comandos)

Desde `practicas/practica1/`, con el entorno activado (`source ~/cp-env/bin/activate`):

```bash
(cd src && bash ../scripts/run_all.sh)   # compila y genera results/*.csv (~5 min)
python3 scripts/plot.py                  # results/resumen.csv y results/practica1.png
```

Conectar la laptop a la corriente, modo de energía "rendimiento" y cerrar aplicaciones pesadas.

## Otros pasos

| Paso | Comando (desde `practicas/practica1/`) |
|---|---|
| Parte A — entorno | `bash scripts/entorno.sh > entorno.txt 2>&1` |
| Parte B — ficha técnica | `bash scripts/ficha.sh > fichas/ficha_<usuario>.txt 2>&1` |
| Parte E — GPU | Abrir `notebooks/p1_gpu.ipynb` en Colab/Kaggle con GPU, ejecutar todo y descargar con salidas |

## Contenido

| Ruta | Descripción |
|---|---|
| `src/matmul.c` | Multiplicación de matrices i-j-k en C (línea base) |
| `src/Makefile` | Compila `-O0`, `-O2`, `-O3 -march=native` y `hello_omp` |
| `src/matmul_pure.py` | Python puro con listas |
| `src/matmul_numpy.py` | NumPy/BLAS, incluye `cpu_over_wall` |
| `src/hello_omp.c` | Verificación del toolchain OpenMP |
| `scripts/run_all.sh` | Ejecuta todo el benchmark y genera los CSV |
| `scripts/plot.py` | Tabla resumen y gráficas |
| `results/` | `c.csv`, `py_puro.csv`, `numpy.csv`, `resumen.csv`, `practica1.png` |
| `notebooks/p1_gpu.ipynb` | Comparación CPU vs GPU con CuPy |

Protocolo de medición: 1 calentamiento descartado, 5 repeticiones, promedio ± desviación estándar,
reloj de pared monotónico (`clock_gettime(CLOCK_MONOTONIC)` / `time.perf_counter()`).
