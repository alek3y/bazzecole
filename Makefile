SRCDIR = subjects
DESTDIR = build

COMPILER = pandoc
HEADER = header.tex
FONTSDIR = fonts
OPTS = -f markdown-implicit_figures
OPTS += --pdf-engine=xelatex -B $(HEADER)
OPTS += -V "geometry:margin=2cm" -V "linestretch:1.2"
OPTS += -V "fontsize:11pt" -V "mainfont:notosans-regular"
OPTS += -V "mainfontoptions:Path=$(FONTSDIR)/, \
	BoldFont=notosans-bold, \
	ItalicFont=notosans-italic, \
	BoldItalicFont=notosans-bold_italic"

SRCS = $(wildcard $(SRCDIR)/*/*.md)
PDFS = $(patsubst $(SRCDIR)/%.md,$(DESTDIR)/%.pdf,$(SRCS))

ZIPS = $(patsubst %,%.zip,$(filter-out %.zip,$(wildcard $(DESTDIR)/*)))

all: $(PDFS)

$(PDFS): $(DESTDIR)/%.pdf: $(SRCDIR)/%.md
	mkdir -p $(shell dirname "$@")
	$(COMPILER) $(OPTS) "$<" -o "$@"

zip: $(ZIPS)

$(ZIPS): $(DESTDIR)/%.zip: $(DESTDIR)/%
	cd $(shell dirname "$<") && zip -r ../"$@" $(shell basename "$<")

clean:
	rm -r $(DESTDIR)
