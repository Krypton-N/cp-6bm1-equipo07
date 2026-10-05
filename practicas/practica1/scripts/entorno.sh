#!/usr/bin/env bash
# entorno.sh — Parte A: verificación del entorno y prueba de OpenMP.
# Ejecutar desde practicas/practica1:   bash scripts/entorno.sh > entorno.txt 2>&1
echo "# Verificación del entorno — $(date '+%Y-%m-%d %H:%M:%S') — $(whoami)@$(hostname)"
echo "## Sistema"; uname -srm; grep PRETTY_NAME /etc/os-release
echo "## Herramientas"
gcc --version | head -1
g++ --version | head -1
python3 --version && python3 -c "import numpy; print('numpy', numpy.__version__)"
git --version
echo | gcc -fopenmp -dM -E - | grep -i openmp
echo "## hello_omp"
cd src && make -s hello_omp
echo "--- OMP_NUM_THREADS=1"; OMP_NUM_THREADS=1 ./hello_omp
echo "--- OMP_NUM_THREADS=4"; OMP_NUM_THREADS=4 ./hello_omp
