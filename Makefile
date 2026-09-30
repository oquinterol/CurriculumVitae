# Makefile para CV Bilingüe
# Compila el CV en español (default) o inglés

# Find all .tex files in letters/ and generate their PDF targets
LETTER_SOURCES := $(wildcard letters/*.tex)
LETTER_PDFS := $(LETTER_SOURCES:.tex=.pdf)
SIGNATURE_PDF := assets/signature/Firma-Alexis-path.pdf

# Apply PDF extraction restrictions only to CVs that include the signature.
define protect_signature_pdf
	@if test -f "$(SIGNATURE_PDF)"; then \
		echo "🔒 Protegiendo la firma contra extracción en $(1)..."; \
		owner_password=$$(date +%s%N)-$$(printf '%s' "$$$$"); \
		qpdf --encrypt --user-password='' --owner-password="$$owner_password" --bits=256 --extract=n --modify=none --annotate=n --assemble=n --form=n --print=full -- "$(1)" "$(1).protected"; \
		mv "$(1).protected" "$(1)"; \
	fi
endef

.PHONY: all spanish english letters clean help

# Default target - Both CV versions and all letters
all: both letters

# Spanish version (default)
spanish:
	@echo "📄 Compilando CV en español..."
	@mkdir -p build
	xelatex -output-directory=build -jobname=cv_spanish cv.tex
	xelatex -output-directory=build -jobname=cv_spanish cv.tex
	$(call protect_signature_pdf,build/cv_spanish.pdf)
	@cp build/cv_spanish.pdf ./cv_spanish.pdf
	@echo "✅ CV en español compilado: cv_spanish.pdf"

# English version
english:
	@echo "📄 Compilando CV en inglés..."
	@mkdir -p build
	xelatex -output-directory=build -jobname=cv_english "\def\cvlang{english}\input{cv.tex}"
	xelatex -output-directory=build -jobname=cv_english "\def\cvlang{english}\input{cv.tex}"
	$(call protect_signature_pdf,build/cv_english.pdf)
	@cp build/cv_english.pdf ./cv_english.pdf
	@echo "✅ CV en inglés compilado: cv_english.pdf"

# Both versions
both: spanish english
	@echo "🎉 Ambas versiones compiladas exitosamente"

# Compile all letters in letters/ directory
letters: $(LETTER_PDFS)
	@if [ -n "$(LETTER_PDFS)" ]; then \
		echo "✅ Cartas compiladas exitosamente"; \
	else \
		echo "ℹ️  No hay cartas para compilar en letters/"; \
	fi

# Pattern rule to compile individual letters
letters/%.pdf: letters/%.tex
	@echo "📝 Compilando $*..."
	@mkdir -p build/letters
	@xelatex -output-directory=build/letters -jobname=$* $< > /dev/null 2>&1
	@xelatex -output-directory=build/letters -jobname=$* $< > /dev/null 2>&1
	@cp build/letters/$*.pdf $@

# Clean build files
clean:
	@echo "🧹 Limpiando archivos temporales..."
	@rm -rf build/
	@rm -f cv_spanish.pdf cv_english.pdf
	@echo "✅ Limpieza completada"

# Help
help:
	@echo "📋 CV Bilingüe - Comandos disponibles:"
	@echo "  make          - Compila ambas versiones del CV y todas las cartas (default)"
	@echo "  make spanish  - Compila CV en español"
	@echo "  make english  - Compila CV en inglés"
	@echo "  make both     - Compila ambas versiones del CV"
	@echo "  make letters  - Compila todas las cartas en letters/"
	@echo "  make clean    - Limpia archivos temporales"
	@echo "  make help     - Muestra esta ayuda"