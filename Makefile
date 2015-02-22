compile: 
	$(RM) Pauls-Ding.pdf
	pdflatex Pauls-Ding.tex
	makeindex Pauls-Ding.tex
	pdflatex Pauls-Ding.tex
	@echo "compiling done."

soft-clean:
	@echo "soft cleanup..."
	$(RM) ./listing/*.aux
	$(RM) ./chapters/*.aux
	$(RM) *.aux
	# $(RM) Pauls-Ding.aux
	$(RM) Pauls-Ding.bbl
	$(RM) Pauls-Ding.blg
	$(RM) Pauls-Ding.ind
	$(RM) Pauls-Ding.ilg
	$(RM) Pauls-Ding.lof
	$(RM) Pauls-Ding.lot
	$(RM) Pauls-Ding.nlo
	$(RM) Pauls-Ding.out
	$(RM) Pauls-Ding.toc
	@echo "finished cleanup!"

clean:
	@echo "clean..."
	$(RM) ./chapters/*.aux
	$(RM) ./listing/*.aux
	$(RM) *.aux
	# $(RM) Pauls-Ding.aux
	$(RM) Pauls-Ding.bbl
	$(RM) Pauls-Ding.ind
	$(RM) Pauls-Ding.ilg
	$(RM) Pauls-Ding.blg
	$(RM) Pauls-Ding.lof
	$(RM) Pauls-Ding.lot
	$(RM) Pauls-Ding.nlo
	$(RM) Pauls-Ding.out
	$(RM) Pauls-Ding.toc
	$(RM) Pauls-Ding.log
	$(RM) Pauls-Ding.pdf
	@echo "finished cleanup!"

all: compile soft-clean
