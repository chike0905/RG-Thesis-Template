LATEX = platex
BIBTEX = pbibtex
DVI2PS = dvips
DVIPDF = dvipdfmx
DVI_VIEW = xdvi
PS_VIEW = gv
PS2PDF = ps2pdf
NAME = thesis
TEXHTML = latex2html
CC = clang

all: dvi pdf

ps_view: ps
	$(PS_VIEW) $(NAME).ps

pdf: dvi
	$(LATEX) $(NAME).tex
	$(DVIPDF) $(NAME)

ps2pdf: ps
	$(PS2PDF) $(NAME).ps

ps: dvi
	$(DVI2PS) $(NAME).dvi

dvi_view: dvi
	$(DVI_VIEW) $(NAME).dvi &

dvi : $(NAME).tex
	$(LATEX) $(NAME).tex
	$(BIBTEX) $(NAME)
	$(LATEX) $(NAME).tex

clean:
	rm -f $(NAME).aux $(NAME).bbl $(NAME).blg $(NAME).dvi $(NAME).lof $(NAME).log $(NAME).lot $(NAME).out.ps $(NAME).pdf $(NAME).toc
