#markdownPoster

This is my first (admitedly hacky) attempt at creating a poster with R Markdown.  I wanted to do this, becuase I am not very good with LaTeX.

I accomplished it by wrapping sections of the R Markdown document in a <div></div> and then taking care of the styling and layout with CSS.  The general workflow is:

1. Author in R Markdwon
2. Convert to Markdown with [knitr](https://github.com/yihui/knitr)
3. Convert to html and include css with [pandoc](http://johnmacfarlane.net/pandoc/)
4. Convert html to pdf with [wkhtmltopdf](http://wkhtmltopdf.org/)

I used wkhtmltopdf and not pandoc to convert to pdf as I could not get the css styling to render in the pandoc output pdf.

The makefile implements this workflow.

