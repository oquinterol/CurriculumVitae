# Curriculum Vitae

Este proyecto contiene mi hoja de vida en formato LaTeX, diseñada para ser personalizable y profesional.

## Estado del Proyecto

El CV está actualmente configurado con:
- Estructura modular usando archivos .tex separados por secciones
- Sistema de compilación LaTeX
- Gestión de imágenes y recursos
- Configuración de gitignore para proteger información sensible

## Estructura del Proyecto

- `cv.tex` - Archivo principal del CV
- `cv-sections/` - Secciones bilingües del CV; `education.tex` contiene los grados y `courses.tex` la formación complementaria
- `certifications/` - Submódulo privado con los certificados de respaldo
- `letters/` - Submódulo privado con las cartas de presentación
- `assets/signature/` - Firma local opcional (excluida del repositorio)
- `build/` - Artefactos temporales (excluidos del repositorio)
- `Makefile` - Interfaz de compilación y protección opcional de los CV firmados

## Compilación

```bash
make         # Ambos CV y cartas
make both    # Solo CV en español e inglés
make spanish # Solo CV en español
make english # Solo CV en inglés
make letters # Solo cartas
```

Los CV generados (`cv_spanish.pdf` y `cv_english.pdf`) permanecen locales y no se versionan. Los cursos están ordenados por fecha de finalización; los grupos de cursos muestran las fechas y horas individuales.

## TODO
### Privacidad y Seguridad
- [ ] **CRÍTICO**: Evitar exponer información privada como:
  - Imágenes de firma personal (`signature.png`, etc.)
  - Datos de contacto sensibles
  - Certificaciones con información personal

