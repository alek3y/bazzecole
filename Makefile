SRCDIR := subjects
OUTDIR := build

COMPILER := asciidoctor-pdf
THEME := themes/custom.yml
FONTSDIR := fonts
OPTS := -a pdf-theme=$(THEME) -a pdf-fontsdir=$(FONTSDIR)

all:
	for path in $(SRCDIR)/*; do \
		subject=$$(basename $$path); \
		$(COMPILER) $(OPTS) "$$path"/*.adoc -D "$(OUTDIR)/$$subject"; \
	done

zip: all
	cd "$(OUTDIR)" && \
	for subject in *; do \
		if [[ -d "$$subject" ]]; then \
			cd "$$subject"; \
			zip "../$$subject.zip" *; \
			cd ..; \
		fi; \
	done

clean:
	rm -r "$(OUTDIR)"
