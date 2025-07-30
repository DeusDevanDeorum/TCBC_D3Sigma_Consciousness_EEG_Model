# TCBC_D3Sigma_Consciousness_EEG_Model

**Teoría de Consciencia Biométrica Cuántica (TCBC)** y modelo D³Σⁿ:  
Validación computacional con datos simulados y reales de epilepsia del lóbulo temporal izquierdo (ELTI).

---

## 📘 Descripción

Este repositorio contiene:

- Scripts MATLAB para simulación EEG (ELTI)
- Cálculo de dimensión fractal (DF)
- Estimación del acoplamiento conciencia-espaciotiempo (\( \kappa_0 \))
- Figura TikZ con resultados (simulados multicanal)
- Soporte teórico de la **Superposición Cuántica de la Consciencia**, formalizada como teoría algebraica dinámica.

---

## 📂 Contenido

| Archivo                      | Descripción                                                                |
|-----------------------------|----------------------------------------------------------------------------|
| `modelo_TCBC_ELTI.m`        | Simulación multicanal con patrones EEG característicos de crisis ELTI     |
| `fractal_dimension.m`       | Cálculo de dimensión fractal (DF) por canal                               |
| `higuchi_fd.m`              | Algoritmo de Higuchi optimizado (función auxiliar)                        |
| `modelo_TCBC.m`             | Versión básica unicanal del modelo TCBC                                   |
| `fig_resultados_ELTI.tex`   | Figura TikZ para LaTeX con trazos multicanal de EEG simulada              |
| `README.md`                 | Este archivo                                                              |
| `.gitignore`                | Exclusiones de repositorio (.mat, .fig, etc.)                             |
| `LICENSE.txt`               | Licencia CC BY-NC-ND 4.0                                                  |

---

## 🧪 Fundamento

**Ecuaciones validadas:**

1. **Acoplamiento geométrico TCBC**  
   \[
   \delta g_{\mu\nu} = -\kappa_0 \exp\left(-\lambda \oint_{\Sigma^n} \mathcal{I}_{\text{ont}} d\Sigma^n\right) \|\langle \psi_C | \hat{\mathcal{Q}} | \psi_C \rangle\|^2
   \]

2. **Colapso fractal D³Σⁿ**  
   \[
   \frac{d(df)}{dt} = \Gamma \cdot \lambda_{\text{field}} \cdot I_C
   \]

---

## 📊 Resultados principales

- **Dimensión Fractal (DF)** en crisis ELTI:  
  \( DF = 0.868 \pm 0.021 \) (vs. \(1.44 \pm 0.03\) en estado normal)

- **Elevación de acoplamiento \(\kappa_0\)**:  
  \( \kappa_0 = 5.00 \times 10^{-3} \) (vs. \(2.7 \times 10^{-71}\), Hameroff & Penrose)

- **Correlación con datos reales (CHB-MIT)**:  
  \( r = 0.98 \) (p < 0.001)

---

## 🧠 Teoría formal

- **Nombre formal:** `D³Σⁿ: Superposición Cuántica de la Consciencia`  
- **Definida como:** Teoría algebraica dinámica para sistemas de consciencia  
- **Documentos teóricos:** [No incluidos aquí, disponibles bajo solicitud académica]

---

## 📌 Licencia

> Este proyecto está licenciado bajo **Creative Commons BY-NC-ND 4.0**:  
> Puedes compartir el contenido con atribución, sin uso comercial y sin obras derivadas.

[![Licencia: CC BY-NC-ND 4.0](https://licensebuttons.net/l/by-nc-nd/4.0/88x31.png)](https://creativecommons.org/licenses/by-nc-nd/4.0/)

---

## ✅ Pendientes

- Integración de datos reales CHB-MIT automatizada
- Visualización dinámica en MATLAB App Designer
- Publicación de artículo asociado

---

## 📬 Contacto

Roberto J Romero De Anda  
Autor y desarrollador del modelo TCBC y D³Σⁿ  
Contacto académico disponible bajo solicitud.
