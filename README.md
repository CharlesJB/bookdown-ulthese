# Template pour thèse - Université Laval

## Description

Ce répertoire contient une adaptation en
[bookdown](https://cran.rstudio.com/web/packages/bookdown/index.html) du paquet
LaTeX [ulthese](https://www.ctan.org/pkg/ulthese?lang=en).

## Dépendances

* [`bookdown`](https://cran.rstudio.com/web/packages/bookdown/index.html)
* [`pandoc` >= 1.17.2](https://s3.amazonaws.com/rstudio-buildtools/pandoc-1.17.2.zip)

## Documentation

La documentation principale est disponible à cette page:
https://bookdown.org/yihui/bookdown/

### Quelques trucs utiles

#### Ajout d'une figure + caption

Pour écrire de longue captions, se référer à ce lien:
https://bookdown.org/yihui/bookdown/markdown-extensions-by-bookdown.html#text-references

```r

(ref:nom_figure_scap) Caption courte.
(ref:nom_figure_cap) Caption longue.

''````{r nom_figure, fig.align='center', fig.scap = (ref:nom_figure_scap), fig.cap = (ref:nom_figure_cap)}
knitr::include_graphics("ul_p.pdf")}
''```
```
