OPEN = xdg-open
PDF = pdflatex --shell-escape $@.tex; \
        makeindex $@.idx; \
        makeindex $@.idx; \
        pdflatex --shell-escape $@.tex; \
        $(OPEN) $@.pdf; 
LATEXRM = rm -f \
        main.aux main.ilg main.log main.idx main.ind main.out \
        main.py.err main.py.out \
        comment.cut comment.err comment.out \
        latex.py

main: pi_x.tex pi_x_100000.tex pi_x_20.tex pi_x_100.tex primes.tex
	$(PDF)

view:
	$(OPEN) main.pdf
v:
	$(OPEN) main.pdf

clean:
	$(LATEXRM)
c:
	$(LATEXRM)

pi_x_100000.tex: pi_x.py
	python pi_x.py 100000 > pi_x_100000.tex
pi_x_20.tex: pi_x.py
	python pi_x.py 20 0 > pi_x_20.tex
pi_x_100.tex: pi_x.py
	python pi_x.py 100 0 > pi_x_100.tex

primes.tex: primes.py
	python primes.py > primes.tex
