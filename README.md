# TCBC_D3Sigma_Consciousness_EEG_Model

Este repositorio contiene los módulos computacionales y figura simbólica utilizados en la validación del modelo **D³Σⁿ** (“Superposición Cuántica de la Consciencia”) aplicado a datos simulados y clínicos de epilepsia del lóbulo temporal izquierdo (ELTI).

---

## 🧠 Modelo Teórico

La teoría D³Σⁿ postula una dinámica algebraico-cuántica de la consciencia que puede colapsar geométricamente bajo crisis, modificando la métrica del espaciotiempo consciente. El modelo TCBC (Teoría de la Consciencia Biométrica Cuántica) se valida aquí mediante:

- Simulación de señales EEG con patrones de ELTI (ondas agudas, theta y beta).
- Cálculo de la Dimensión Fractal (DF) usando el método de Higuchi.
- Estimación de parámetros dinámicos como el acoplamiento $\kappa_0$.

---

## 📦 Contenido

| Archivo                      | Descripción                                                        |
|-----------------------------|---------------------------------------------------------------------|
| `modelo_TCBC_ELTI.m`        | Script principal que genera las señales EEG simuladas              |
| `higuchi_fd.m`              | Función de cálculo de la dimensión fractal                         |
| `fractal_dimension.m`       | Módulo de análisis de DF por canal EEG                             |
| `fig_resultados_ELTI.tex`   | Figura simbólica generada en TikZ con resultados clave             |
| `fig_resultados_ELTI.pdf`   | Figura compilada (para artículos o presentaciones)                 |
| `LICENSE.txt`               | Licencia CC BY-NC-ND 4.0 (no permite uso comercial ni modificaciones) |
| `.gitignore`                | Archivos ignorados (MATLAB temp, compilados, etc.)                 |

---

## 🧪 Ejecución (en MATLAB)

1. Abre `modelo_TCBC_ELTI.m` en MATLAB.
2. Ejecuta el script: se generará la señal EEG simulada en canales F7, T7, C3, P7.
3. Se calcula la dimensión fractal por canal.
4. Parámetros estimados como $\kappa_0$ son mostrados en consola.

---

## 📊 Validación

Los resultados simulados reproducen:

- Reducción de DF ($<1.38$) en canales izquierdos (ELTI)
- Actividad EEG patológica en T7 (theta + ondas agudas)
- Caída de coherencia interhemisférica

---

## 📚 Referencias

- Hameroff & Penrose (2014)
- Englôt et al. (2017)
- Spencer (1992)
- Gleichgerrcht et al. (2020)
- Dataset CHB-MIT: [PhysioNet](https://physionet.org)

---

## 🔐 Licencia

Este proyecto está licenciado bajo **CC BY-NC-ND 4.0**  
➡️ Esto significa que puedes compartir el contenido con atribución, **pero no puedes modificar ni usar con fines comerciales** sin permiso del autor.

---

## ⏳ Pendientes

- Integración de datos reales CHB-MIT con validación cruzada
- Visualización simbólica trina dinámica (α, β, γ)
- Exportación en formato LaTeX para artículo

---
© Robert Romero, 2025. Todos los derechos reservados.
