# Makefile para CV Bilingüe
# Compila el CV en español (default) o inglés

.PHONY: all spanish english clean help init

# Default target - English
all: english

# English version (default)
english:
	@echo "📄 Compilando CV en inglés..."
	@mkdir -p build
	xelatex -output-directory=build -jobname=cv_english "\def\cvlang{english}\input{resume_cv.tex}"
	xelatex -output-directory=build -jobname=cv_english "\def\cvlang{english}\input{resume_cv.tex}"
	@cp build/cv_english.pdf ./cv_english.pdf
	@echo "✅ CV en inglés compilado: cv_english.pdf"

# Spanish version
spanish:
	@echo "📄 Compilando CV en español..."
	@mkdir -p build
	xelatex -output-directory=build -jobname=cv_spanish "\def\cvlang{spanish}\input{resume_cv.tex}"
	xelatex -output-directory=build -jobname=cv_spanish "\def\cvlang{spanish}\input{resume_cv.tex}"
	@cp build/cv_spanish.pdf ./cv_spanish.pdf
	@echo "✅ CV en español compilado: cv_spanish.pdf"


# Both versions
both: spanish english
	@echo "🎉 Ambas versiones compiladas exitosamente"

# Clean build files
clean:
	@echo "🧹 Limpiando archivos temporales..."
	@rm -rf build/
	@rm -f cv_spanish.pdf cv_english.pdf
	@echo "✅ Limpieza completada"

# Setup/initialization
init:
	@echo "🚀 Inicializando proyecto CV bilingüe..."
	@echo "📋 Comandos disponibles:"
	@echo "  make          - Compila CV en español (default)"
	@echo "  make spanish  - Compila CV en español"
	@echo "  make english  - Compila CV en inglés"
	@echo "  make both     - Compila ambas versiones"
	@echo "  make clean    - Limpia archivos temporales"
	@echo "  make help     - Muestra esta ayuda"

# Help
help: init