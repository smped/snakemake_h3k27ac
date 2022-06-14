library(tidyverse)
library(glue)

args <- commandArgs(TRUE)
source <- args[[1]]
threads <- args[[2]]
rmd <- args[[3]]

glue(
	"
	---
	title: '{{source}} H3K27ac: MACS2 Summary'
	date: \"`r format(Sys.Date(), '%d %B, %Y')`\"
	bibliography: references.bib
	link-citations: true
	---

	```{r set-knitr-opts, echo=FALSE, child = here::here('analysis/setup_chunk.Rmd')}
	```

	```{r set-vals}
	source <- \"{{source}}\"
	threads <- {{threads}}
	```

	",
	.open = "{{",
	.close = "}}"
) %>%
	write_lines(rmd)
