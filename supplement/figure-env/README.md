# A sample to demonstrate usage of figures inside of an article.


## Dependencies

```R
# install.packages("remotes")
remotes::install_github("Abhi-1U/rebib")
# install.packages("remotes")
remotes::install_github("Abhi-1U/texor")
```
Note : use pandoc version > 3 (if possible latest) for the best results. [Installing Pandoc](https://pandoc.org/installing.html)

```R
# To check the version of pandoc
rmarkdown::pandoc_version()
```

## conversion instructions.

```R
article_dir <- "path-to-this supplementary folder"
texor::latex_to_web(article_dir)
```

This will create HTML/Rmarkdown version of the file in web folder.

