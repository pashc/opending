compile: 
	$(RM) OpenDing.pdf
	pdflatex OpenDing.tex
	makeindex OpenDing.tex
	pdflatex OpenDing.tex
	@echo "compiling done."

soft-clean:
	@echo "soft cleanup..."
	$(RM) OpenDing.ilg
	$(RM) OpenDing.ind
	$(RM) OpenDing.log
	$(RM) OpenDing.toc
	$(RM) OpenDing.aux
	@echo "finished cleanup!"

clean:
	@echo "clean..."
	$(RM) OpenDing.ilg
	$(RM) OpenDing.ind
	$(RM) OpenDing.log
	$(RM) OpenDing.toc
	$(RM) OpenDing.aux
	$(RM) OpenDing.pdf
	@echo "finished cleanup!"

all: compile soft-clean
