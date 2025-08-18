# Makefile para CV Bilingüe
# Compila el CV en español (default) o inglés

.PHONY: all spanish english clean help

# Default target - Both versions
all: both

# Spanish version (default)
spanish:
	@echo "📄 Compilando CV en español..."
	@mkdir -p build
	xelatex -output-directory=build -jobname=cv_spanish cv.tex
	xelatex -output-directory=build -jobname=cv_spanish cv.tex
	@cp build/cv_spanish.pdf ./cv_spanish.pdf
	@echo "✅ CV en español compilado: cv_spanish.pdf"

# English version
english:
	@echo "📄 Compilando CV en inglés..."
	@mkdir -p build
	xelatex -output-directory=build -jobname=cv_english "\def\cvlang{english}\input{cv.tex}"
	xelatex -output-directory=build -jobname=cv_english "\def\cvlang{english}\input{cv.tex}"
	@cp build/cv_english.pdf ./cv_english.pdf
	@echo "✅ CV en inglés compilado: cv_english.pdf"

# Both versions
both: spanish english
	@echo "🎉 Ambas versiones compiladas exitosamente"

# Clean build files
clean:
	@echo "🧹 Limpiando archivos temporales..."
	@rm -rf build/
	@rm -f cv_spanish.pdf cv_english.pdf
	@echo "✅ Limpieza completada"

# Help
help:
	@echo "📋 CV Bilingüe - Comandos disponibles:"
	@echo "  make          - Compila ambas versiones (default)"
	@echo "  make spanish  - Compila CV en español"
	@echo "  make english  - Compila CV en inglés"
	@echo "  make both     - Compila ambas versiones"
	@echo "  make clean    - Limpia archivos temporales"
	@echo "  make help     - Muestra esta ayuda"