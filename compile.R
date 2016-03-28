#!/usr/bin/env Rscript
library(knitr)
knit('sm_thesis.Rnw', tangle=TRUE)
knit('sm_thesis.Rnw', tangle=FALSE)
for ( i in c(1,2,3)) {
    system('pdflatex sm_thesis')
    system('bibtex sm_thesis')
}
system('evince sm_thesis.pdf')
