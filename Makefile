compile: 
	$(RM) OpenDing.pdf
	pdflatex OpenDing.tex
	makeindex OpenDing.tex
	pdflatex OpenDing.tex
	@echo "compiling done."

soft-clean:
	@echo "soft cleanup..."
	$(RM) ./listing/*.aux
	$(RM) ./chapters/*.aux
	$(RM) *.aux
	# $(RM) OpenDing.aux
	$(RM) OpenDing.bbl
	$(RM) OpenDing.blg
	$(RM) OpenDing.ind
	$(RM) OpenDing.ilg
	$(RM) OpenDing.lof
	$(RM) OpenDing.lot
	$(RM) OpenDing.nlo
	$(RM) OpenDing.out
	$(RM) OpenDing.toc
	@echo "finished cleanup!"

clean:
	@echo "clean..."
	$(RM) ./chapters/*.aux
	$(RM) ./listing/*.aux
	$(RM) *.aux
	# $(RM) OpenDing.aux
	$(RM) OpenDing.bbl
	$(RM) OpenDing.ind
	$(RM) OpenDing.ilg
	$(RM) OpenDing.blg
	$(RM) OpenDing.lof
	$(RM) OpenDing.lot
	$(RM) OpenDing.nlo
	$(RM) OpenDing.out
	$(RM) OpenDing.toc
	$(RM) OpenDing.log
	$(RM) OpenDing.pdf
	@echo "finished cleanup!"

all: compile soft-clean
