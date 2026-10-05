#!/usr/bin/env bash
# ficha.sh — Parte B: salida cruda para la ficha técnica del hardware (una por integrante).
# Ejecutar desde practicas/practica1:   bash scripts/ficha.sh > fichas/ficha_<usuario>.txt 2>&1
echo "# Ficha técnica — $(date '+%Y-%m-%d %H:%M:%S') — $(whoami)@$(hostname)"
echo "## lscpu"; lscpu
echo "## nproc"; nproc
echo "## Extensiones vectoriales"
lscpu | grep -o -w -E 'sse4_2|avx|avx2|avx512f|fma|asimd|neon' | sort -u
echo "## free -h"; free -h
echo "## lstopo-no-graphics"; lstopo-no-graphics
echo "## Gobernador de CPU"
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 2>/dev/null || echo "no disponible (WSL2/VM)"
echo "## nvidia-smi"; nvidia-smi 2>/dev/null || echo "sin GPU NVIDIA local"
echo "## BLAS de NumPy"
python3 -c "import numpy; numpy.show_config()" | grep -i -A3 blas
