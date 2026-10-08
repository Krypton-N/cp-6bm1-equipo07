# cp-6bm1-equipo07

Repositorio del **Equipo 07** — Cómputo Paralelo, grupo 6BM1, semestre 27/1 · ESCOM-IPN.
Contiene las Prácticas 1–6 y el proyecto integrador.

## Integrantes

| Nombre | Boleta | Usuario GitHub |
|---|---|---|
| Aburto González Dustin | 2023630135 | Dustin2603 |
| Rodríguez Flor Alan Noé | 2025630489 | Krypton-N |
| Sánchez Cornejo Gael Antonio | 2023630660 | _(pendiente)_ |

Docente (colaborador): `RORRO-O`.

## Fichas técnicas

Una por máquina del equipo. La salida cruda de cada una está en
`practicas/practica1/fichas/` (generada con `scripts/ficha.sh`).

| Campo | Aburto (Dustin) | Rodríguez (Noé) | Sánchez (Gael) |
|---|---|---|---|
| Modelo de CPU | AMD Ryzen 5 7535HS (Zen 3+) | Intel Core i7-13650HX (híbrido) | Por confirmar |
| Núcleos físicos / hilos lógicos | 6 / 12 | 14 (6 P + 8 E) / 20 — WSL2 lo expone como 10 × 2 | Por confirmar |
| Frecuencia base / turbo | 3.3 / 4.55 GHz | P: 2.6 / 4.9 GHz · E: 1.9 / 3.6 GHz | Por confirmar |
| Caché L1d / L2 / L3 | L1: 384 KB / L2: 3 MB / L3: 16 MB compartida | P: 48 KB/núcleo, E: 32 KB/núcleo / P: 1.25 MB/núcleo, E: 2 MB por clúster de 4 (11.5 MB total) / 24 MB compartida | Por confirmar |
| Memoria RAM | 16 GB DDR5-4800 | 24 GB (WSL2 asigna 11 GB a Linux) | Por confirmar |
| Extensiones vectoriales | AVX, AVX2, FMA3 | AVX2, FMA (sin AVX-512) | Por confirmar |
| Sistema operativo y kernel | Windows 11 Home | Ubuntu 24.04.5 en WSL2 (Windows 11), kernel 6.18.33.1-microsoft-standard-WSL2 | Por confirmar |
| Compilador | GCC (versión por confirmar) | gcc 13.3.0 | Por confirmar |
| Python / NumPy / BLAS | Por confirmar según instalación | 3.12.3 / 2.5.3 / OpenBLAS 0.3.34 | Por confirmar |
| GPU (si hay) | NVIDIA GeForce RTX 4050 Laptop GPU (6 GB GDDR6) | NVIDIA GeForce RTX 5050 Laptop (8 GB), driver 610.74 | NVIDIA GeForce RTX 3050 Laptop GPU, 6 GB GDDR6 |
| Driver NVIDIA | Por confirmar | 610.74 | 591.66 |
| CUDA | Por confirmar | — | 13.1 |
| VRAM utilizada / total | — | — | 874 MiB / 6144 MiB |
| Temperatura GPU | — | — | 44 °C |
| Uso de GPU | — | — | 1 % |
| Potencia GPU | — | — | 8 W / 75 W |
| Gobernador de CPU | — | no disponible (WSL2/VM) | no disponible (WSL2/VM) |
| Condiciones | Laptop conectada a la corriente, modo de máximo rendimiento | Laptop conectada a la corriente, modo de energía "rendimiento", sin otras aplicaciones abiertas | GPU en estado P0, 44 °C, 8 W de 75 W, 1 % de utilización, sin procesos GPU activos |
## Estructura

```
practicas/practica1/   Plataformas y herramientas (línea base secuencial)
proyecto/              Proyecto integrador (a partir de H0, 14 sep)
```
