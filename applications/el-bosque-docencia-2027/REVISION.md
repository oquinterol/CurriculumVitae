# Revisión interna — Oscar / El Bosque 2027

No adjuntar esta nota a la candidatura.

## Encargo y límites

Oscar confirmó en esta sesión que desea su propia variante para el reemplazo descrito en la sesión `01a1d78d-7f35-740e-9329-8eb7cfa40b08`, almacenada bajo `/home/oscar/.pi/agent/sessions/--home-oscar-Documents-CV-K--/`. El mensaje original, fechado 13/11/2026, menciona Bioinformática y Microbiología, duración aproximada de tres meses e inicio en febrero de 2027. No hay convocatoria oficial ni asignaturas, temarios o carga horaria documentados.

Oscar pidió usar solo lo documentado al preguntarle por experiencia práctica propia en Microbiología. No se atribuyen técnicas, cargos ni codirecciones de Karol. Tampoco se afirma especialización en Microbiología, docencia universitaria como profesor titular de asignatura, disponibilidad o elegibilidad confirmadas.

La consulta a Context Hub `CV convocatoria CV-K` no devolvió notas. El contexto procede de la sesión indicada y de las fuentes locales, no de memoria recuperada.

## Evidencias utilizadas

- `cv-sections/education.tex`: Licenciatura en Biología (diciembre de 2022), Maestría en Bioinformática (abril de 2026), títulos de trabajos de grado. Se reutiliza esta sección en la variante.
- `cv-sections/experience.tex`: Laboratorio de Biología de la Universidad Distrital, mayo de 2024–septiembre de 2026; asistencia estudiantil en la UNAL, junio–diciembre de 2023 (entrada comentada del CV general, recuperada por pertinencia educativa). No se convierte la asistencia en docencia de Biología ni de Microbiología.
- `certifications/laboral/Certificados_Tecnico_Laboratorios.pdf`: contratos y obligaciones de apoyo a prácticas, capacitación de usuarios, uso seguro de equipos y protocolos. La certificación de 2026 consultada tiene vigencia original hasta julio; septiembre se conserva del CV vigente, no se presenta como fecha verificada en ese certificado.
- `certifications/laboral/CertificadoLaboratorista2025.pdf`: funciones de alistamiento, capacitación y orientación en prácticas.
- `certifications/laboral/CONSTANCIA P.P Quintero Oscar.pdf`: Práctica Profesional III y IV en 2020, jornada de la tarde, Instituto Técnico Industrial Francisco José de Caldas. No se inventan horas ni meses.
- `cv-sections/extracurricular.tex`: GiBBS desde noviembre de 2023 y BIOMOLc desde agosto de 2017; modelo metabólico de papa, RNA-Seq y apoyo a talleres de Linux. Se conservan como experiencia investigativa; no se presentan textos científicos como publicaciones aceptadas.
- `cv-sections/skills.tex`: selección de herramientas bioinformáticas y computacionales ya declaradas. No son herramientas nuevas inferidas por esta adaptación.
- `cv-sections/courses.tex`: curso de proteínas recombinantes (40 horas), participación en EMIC (12 horas) y Ensembl Browser Workshop. Son formación/participación, no experiencia laboral microbiológica ni talleres impartidos. Se muestran por mes sin ordenar ni resolver la coincidencia de fechas detalladas de los dos eventos de noviembre de 2025.
- `cv-sections/presentation.tex` y `language.tex`: póster ISCB 2024 e idiomas. No se transforma el póster en publicación arbitrada.

## Criterio editorial

Dos páginas en español. Primera: perfil, títulos y experiencia educativa. Segunda: investigación, competencias técnicas, formación complementaria, póster e idiomas. Se omiten trabajos de IA y desarrollo web no centrales para esta candidatura, sin borrarlos del CV general. Por indicación posterior explícita de Oscar, la variante no lleva firma ni restricciones de extracción. Ninguna variante debe incorporar firma salvo petición explícita. Se simplificaron los encabezados a «Competencias técnicas» y «Formación complementaria», sin calificativos editoriales.

## Pendientes para una adaptación final a las asignaturas

1. Conocer convocatoria oficial, asignaturas, modalidad y carga docente.
2. Confirmar disponibilidad para febrero de 2027 y compatibilidad con otras actividades.
3. Si la vacante exige práctica o titulación específica en Microbiología, contrastarla con los requisitos: el perfil documentado aquí es Biología/Bioinformática, no Microbiología profesional acreditada.
4. Si solicitan soportes, verificar certificado de asistencia estudiantil UNAL 2023 y cierre contractual de septiembre de 2026. No adjuntar automáticamente todo el submódulo de certificados.

## Compilación

Validación realizada: `make el-bosque-docencia` y `make` finalizaron correctamente; existen los PDF generales y el específico. Variante de dos páginas tamaño carta, texto extraído y ambas páginas revisadas visualmente, sin cortes ni páginas vacías. Persisten dos avisos menores de caja horizontal de 2,92 pt en entradas de formación; no se observan recortes. La compilación inicial incluía firma; se retiró después por petición del usuario, junto con las restricciones de extracción. `git diff --check` sin errores. El PDF específico queda excluido de Git.

`make el-bosque-docencia` genera el PDF en esta carpeta; no se versionan artefactos generados. El CV general conserva sus fuentes. Esta nota documenta la preparación del CV; no registra mensajes privados ni sustituye el seguimiento de la candidatura.
