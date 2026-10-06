# cp-6bm1-equipo07

Repositorio del **Equipo 07** — Cómputo Paralelo, grupo 6BM1, semestre 27/1 · ESCOM-IPN.
Contiene las Prácticas 1–6 y el proyecto integrador.

## Integrantes

| Nombre | Boleta | Usuario GitHub |
|---|---|---|
| Aburto González Dustin | 2023630135 | _(pendiente)_ |
| Rodríguez Flor Alan Noé | 2025630489 | Krypton-N |
| Sánchez Cornejo Gael Antonio | 2023630660 | _(pendiente)_ |

Docente (colaborador): `RORRO-O`.

## Fichas técnicas

Una por máquina del equipo. La salida cruda de cada una está en
`practicas/practica1/fichas/` (generada con `scripts/ficha.sh`).

| Campo | Aburto (Dustin) | Rodríguez (Noé) | Sánchez (Gael) |
|---|---|---|---|
| Modelo de CPU | | Intel Core i7-13650HX (híbrido) | |
| Núcleos físicos / hilos lógicos | | 14 (6 P + 8 E) / 20 — WSL2 lo expone como 10 × 2 | |
| Frecuencia base / turbo | | P: 2.6 / 4.9 GHz · E: 1.9 / 3.6 GHz | |
| Caché L1d / L2 / L3 | | P: 48 KB/núcleo, E: 32 KB/núcleo / P: 1.25 MB/núcleo, E: 2 MB por clúster de 4 (11.5 MB total) / 24 MB compartida | |
| Memoria RAM | | 24 GB (WSL2 asigna 11 GB a Linux) | |
| Extensiones vectoriales | | AVX2, FMA (sin AVX-512) | |
| Sistema operativo y kernel | | Ubuntu 24.04.5 en WSL2 (Windows 11), kernel 6.18.33.1-microsoft-standard-WSL2 | |
| Compilador | | gcc 13.3.0 | |
| Python / NumPy / BLAS | | 3.12.3 / 2.5.3 / OpenBLAS 0.3.34 | |
| GPU (si hay) | | NVIDIA GeForce RTX 5050 Laptop (8 GB), driver 610.74 | |
| Condiciones | | Laptop conectada a la corriente, modo de energía "rendimiento", sin otras aplicaciones abiertas | |

## Estructura

```
practicas/practica1/   Plataformas y herramientas (línea base secuencial)
proyecto/              Proyecto integrador (a partir de H0, 14 sep)
```
