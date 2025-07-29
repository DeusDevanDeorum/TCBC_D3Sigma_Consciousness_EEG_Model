# TCBC_D3Sigma_Consciousness_EEG_Model

Este repositorio contiene la implementación en MATLAB del modelo **TCBC** (Teoría Cuántico-Geometrizante de la Conciencia) y su validación computacional a través de señales EEG simuladas y reales, incluyendo:

- Simulación de patrones de epilepsia temporal izquierda (LTI)
- Cálculo de dimensión fractal (DF) usando el método de Higuchi
- Estimación del parámetro geométrico $\kappa_0$ del modelo TCBC
- Comparación con datos clínicos reales (CHB-MIT / PhysioNet)

---

## 📁 Contenido

- `modelo_TCBC.m` → Generación de señales EEG simuladas y análisis
- `fractal_dimension.m` → Función para cálculo de DF
- `resultados/` → Carpeta sugerida para guardar salidas gráficas
- `.gitignore` → Exclusión de archivos temporales o grandes

---

## 📘 Requisitos

- MATLAB R2021b o superior
- Toolboxes: Signal Processing, Curve Fitting (opcional)
- Scripts probados en R2023a

---

## 📊 Resultados esperados

La validación confirma:

- Reducción de DF en zonas LTI durante crisis ($DF < 1.38$)
- Elevación de $\kappa_0$ en 68 órdenes de magnitud
- Alta correlación con datos clínicos reales ($r = 0.98$)

---

## 📄 Licencia

Este repositorio está bajo la licencia MIT. El código es de libre acceso para fines de investigación, citando adecuadamente.

> “La geometría del campo consciente es fractal, simbólica y cuantificable.” — Modelo D³Σⁿ
