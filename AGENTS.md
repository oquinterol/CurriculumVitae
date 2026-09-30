# Guía para agentes

## Alcance
- Estas instrucciones aplican a todo el repositorio.
- Este repositorio contiene un CV bilingüe en LaTeX.

## Comandos de compilación
- Usa siempre el `Makefile` para compilar y validar cambios.
- No ejecutes `xelatex` directamente, ni siquiera para comprobaciones rápidas.
- Compilación completa (CV en español, CV en inglés y cartas): `make`
- Solo ambas versiones del CV: `make both`
- Solo CV en español: `make spanish`
- Solo CV en inglés: `make english`
- Cartas: `make letters`
- Limpieza de artefactos: `make clean`

## Validación
- Después de modificar archivos `.tex`, ejecuta el objetivo de `make` correspondiente; por defecto, usa `make`.
- Comprueba que la compilación termine exitosamente y que los PDF generados existan.
- No omitas la compilación mediante el `Makefile` ni la sustituyas por comandos equivalentes.

## Firma y protección del PDF
- `cv.tex` incluye `assets/signature/Firma-Alexis-path.pdf` solo si el archivo existe.
- El `Makefile` aplica restricciones de extracción únicamente a los CV que incluyen la firma; las cartas no se protegen mediante esta regla.
- Estas restricciones dependen del visor PDF y dificultan la extracción, pero no constituyen protección DRM absoluta.

## Estructura
- `cv.tex`: documento principal.
- `cv-sections/`: secciones modulares del CV.
- `letters/`: cartas de presentación.
- `Makefile`: única interfaz oficial de compilación.
- `build/`: archivos temporales de LaTeX.

## Flujo de trabajo
- Haz cambios pequeños y específicos.
- Conserva cambios locales preexistentes de otras tareas; no restaures ni sobrescribas archivos sin revisar `git status`.
- No modifiques PDFs u otros artefactos generados manualmente; deja que el `Makefile` los produzca.
- No agregues dependencias nuevas sin solicitar autorización.
