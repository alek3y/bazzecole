COMPILER := asciidoctor-pdf
SUBJECTSDIR := subjects
EXPORTDIR := build

all:
	cd "$(SUBJECTSDIR)" && \
	for subject in *; do \
		$(COMPILER) "$$subject"/*.adoc -D "../$(EXPORTDIR)/$$subject"; \
	done

zip: all
	cd "$(EXPORTDIR)" && \
	for subject in *; do \
		if [[ -d "$$subject" ]]; then \
			cd "$$subject"; \
			zip "../$$subject.zip" *; \
			cd ..; \
		fi; \
	done

clean:
	rm -r "$(EXPORTDIR)"
