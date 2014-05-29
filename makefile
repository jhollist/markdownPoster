all: posterExperiment.md posterExperiment.html posterExperiment.pdf 

posterExperiment.md: posterExperiment.Rmd
	Rscript -e "library(knitr); knit('posterExperiment.Rmd')"

posterExperiment.html: posterExperiment.md css/poster.css
	pandoc -s -c css/reset.css -c css/poster.css posterExperiment.md -o posterExperiment.html

posterExperiment.pdf: posterExperiment.html
	wkhtmltopdf --page-width 17in --page-height 11in -B 0.1in -T 0.1in -L 0.1in -R 0.1in posterExperiment.html posterExperiment.pdf
	