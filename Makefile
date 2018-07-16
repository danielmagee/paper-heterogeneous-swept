include config.mk

# OTHER ARGS MAYBE?

.PHONY: clean count

PAPER=paper-heterogeneous-swept.pdf

all: $(PAPER)

%.pdf: %.tex
	$(CTEX) $(*F) && $(BTEX) $(*F) && $(CTEX) $(*F) && $(CTEX) $(*F)

clean:
	latexmk -CA && rm -f *.bbl *.fls && rm -f *.lo*

count: 
	pdftotext $(PAPER) - | wc