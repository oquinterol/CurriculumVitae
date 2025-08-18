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
- `cv-sections/` - Directorio con secciones modulares del CV
- `images/` - Recursos gráficos (excluido del repositorio por privacidad)

## TODO

### Funcionalidades Pendientes
- [x] ~~Crear script automatizado para compilación rápida del CV~~ (Makefile ya implementado)
- [ ] Implementar sistema de branches para versiones específicas de ofertas laborales
- [ ] Agregar plantillas para diferentes tipos de posiciones

### Privacidad y Seguridad
- [ ] **CRÍTICO**: Evitar exponer información privada como:
  - Imágenes de firma personal (`signature.png`, etc.)
  - Datos de contacto sensibles
  - Certificaciones con información personal
- [ ] Documentar guías de privacidad para colaboradores
- [ ] Implementar verificaciones automáticas antes de commits públicos

### Mejoras Técnicas
- [ ] Optimizar proceso de build
- [ ] Agregar validación de formato LaTeX
- [ ] Implementar sistema de plantillas más flexible
